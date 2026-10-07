package org.offdic

import android.app.Activity
import android.app.AlertDialog
import android.content.ActivityNotFoundException
import android.content.ClipData
import android.content.ClipboardManager
import android.content.Intent
import android.graphics.Color
import android.net.Uri
import android.os.Bundle
import android.provider.MediaStore
import android.text.InputFilter
import android.view.Gravity
import android.widget.*
import androidx.core.content.FileProvider
import com.google.android.gms.tasks.Tasks
import com.google.mlkit.common.model.DownloadConditions
import com.google.mlkit.nl.translate.TranslateLanguage
import com.google.mlkit.nl.translate.Translation
import com.google.mlkit.nl.translate.TranslatorOptions
import com.google.mlkit.vision.common.InputImage
import com.google.mlkit.vision.text.TextRecognition
import com.google.mlkit.vision.text.latin.TextRecognizerOptions
import java.io.File
import java.util.concurrent.Executors
import java.util.concurrent.Future
import java.util.concurrent.TimeUnit

class LanguageToolsActivity : Activity() {
    private val executor = Executors.newSingleThreadExecutor()
    private var job: Future<*>? = null
    private var generation = 0
    private var ai: AiClient? = null
    private lateinit var input: EditText
    private lateinit var output: TextView
    private lateinit var status: TextView
    private lateinit var action: Button
    private lateinit var preview: OcrPreview
    private lateinit var direction: Switch
    private lateinit var wifi: CheckBox
    private var mode = "translate"
    private var cameraUri: Uri? = null
    private var busy = false
    private var dark = false
    private val textColor get() = if (dark) Color.WHITE else getColor(R.color.fdBlack)

    override fun onCreate(state: Bundle?) {
        super.onCreate(state)
        mode = state?.getString("mode") ?: intent.getStringExtra("mode") ?: "translate"
        dark = getSharedPreferences("MainActivity", 0).getBoolean("dark", false)
        cameraUri = state?.getString("camera")?.let(Uri::parse)
        val root = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL; setBackgroundColor(if (dark) 0xff151516.toInt() else Color.WHITE) }
        root.setOnApplyWindowInsetsListener { v, insets ->
            v.setPadding(insets.systemWindowInsetLeft, insets.systemWindowInsetTop, insets.systemWindowInsetRight, insets.systemWindowInsetBottom); insets
        }
        root.addView(Button(this).apply {
            text = "‹  " + if (mode == "ai") "هوش مصنوعی" else "ترجمهٔ متن و دوربین"
            setTextColor(Color.WHITE); setBackgroundColor(getColor(R.color.fdPrimary)); setOnClickListener { finish() }
        })
        val content = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL; setPadding(dp(16), dp(12), dp(16), dp(16)) }
        root.addView(ScrollView(this).apply { addView(content) }, LinearLayout.LayoutParams(-1, 0, 1f))
        fun text(value: String) = TextView(this).apply { text = value; setTextColor(textColor); textSize = 15f; setPadding(0, dp(8), 0, dp(8)) }
        if (mode == "ai") {
            content.addView(text("متن فقط پس از تأیید به سرویس HTTPS تنظیم‌شده ارسال می‌شود. این برنامه مدل AI داخلی یا حساب سرویس اصلی ندارد."))
            content.addView(Button(this).apply { this.text = "تنظیمات AI / API"; setOnClickListener { configureAi() } })
        } else {
            content.addView(text("ترجمهٔ انگلیسی ↔ فارسی روی دستگاه انجام می‌شود. در اولین استفاده مدل‌ها دانلود می‌شوند. OCR این نسخه متن لاتین/انگلیسی را می‌خواند، نه خط فارسی."))
            val row = LinearLayout(this)
            row.addView(Button(this).apply { this.text = "دوربین"; setOnClickListener { camera() } }, LinearLayout.LayoutParams(0, -2, 1f))
            row.addView(Button(this).apply { this.text = "انتخاب تصویر"; setOnClickListener { pickImage() } }, LinearLayout.LayoutParams(0, -2, 1f))
            content.addView(row)
        }
        preview = OcrPreview(this) { block -> input.setText(block); status.text = "بلوک متن انتخاب شد؛ اکنون ترجمه را بزنید" }.apply { visibility = android.view.View.GONE }
        content.addView(preview, LinearLayout.LayoutParams(-1, dp(240)))
        input = EditText(this).apply {
            hint = if (mode == "ai") "پرسش یا متن شما" else "متن برای ترجمه؛ نتیجهٔ OCR اینجا قابل ویرایش است"
            setTextColor(textColor); setHintTextColor(Color.GRAY); minLines = 4; gravity = Gravity.TOP
            filters = arrayOf(InputFilter.LengthFilter(6000))
            setText(state?.getString("input") ?: intent.getStringExtra("text").orEmpty())
        }
        content.addView(input)
        direction = Switch(this).apply { text = "ترجمه از فارسی به انگلیسی (خاموش: انگلیسی به فارسی)"; setTextColor(textColor); isChecked = state?.getBoolean("direction") ?: false }
        wifi = CheckBox(this).apply { text = "دانلود مدل فقط با Wi-Fi"; setTextColor(textColor); isChecked = state?.getBoolean("wifi") ?: true }
        if (mode != "ai") { content.addView(direction); content.addView(wifi) }
        action = Button(this).apply { text = if (mode == "ai") "ارسال به AI" else "ترجمه"; setOnClickListener { if (mode == "ai") askAi() else translate() } }
        content.addView(action)
        content.addView(Button(this).apply { text = "لغو عملیات"; setOnClickListener { cancel(); status.text = "لغو شد؛ متن شما حفظ شده است" } })
        status = text(if (state?.getBoolean("busy") == true) "عملیات قبلی متوقف شد؛ برای تلاش دوباره دکمه را بزنید." else "آماده")
        content.addView(status)
        output = text(state?.getString("output").orEmpty()).apply { textSize = 18f; setTextIsSelectable(true) }
        content.addView(output)
        content.addView(Button(this).apply {
            text = "کپی نتیجه"; setOnClickListener {
                (getSystemService(CLIPBOARD_SERVICE) as ClipboardManager).setPrimaryClip(ClipData.newPlainText("Offdic", output.text))
            }
        })
        content.addView(Button(this).apply {
            text = "جستجوی متن در فرهنگ"; setOnClickListener {
                startActivity(Intent(this@LanguageToolsActivity, MainActivity::class.java).putExtra(Intent.EXTRA_TEXT, input.text.toString()))
            }
        })
        setContentView(root); root.requestApplyInsets()
    }

    private fun configureAi() {
        startActivity(Intent(this, AiSettingsActivity::class.java))
    }

    private fun askAi() {
        val config = AiSettings.load(this)
        val endpoint = config.endpoint
        if (endpoint.isBlank()) { configureAi(); return }
        val prompt = input.text.toString().trim()
        if (prompt.isEmpty()) { input.error = "متن وارد کنید"; return }
        val host = runCatching { AiClient.validateEndpoint(endpoint).host }.getOrElse { status.text = it.localizedMessage; return }
        AlertDialog.Builder(this).setTitle("ارسال متن به $host؟")
            .setMessage("متن ورودی به این سرویس ارسال خواهد شد. هزینه و سیاست حریم خصوصی سرویس مستقل از برنامه است.")
            .setNegativeButton("لغو", null).setPositiveButton("ارسال") { _, _ ->
                cancel()
                val client = AiClient().also { ai = it }
                launch("در انتظار پاسخ AI…", { client.ask(config, prompt, AiCredentials(applicationContext).load()) }) { output.text = it }
            }.show()
    }

    private fun translate() {
        val sourceText = input.text.toString().trim()
        if (sourceText.isEmpty()) { input.error = "متن وارد کنید"; return }
        val source = TranslateLanguage.fromLanguageTag(if (direction.isChecked) "fa" else "en")
        val target = TranslateLanguage.fromLanguageTag(if (direction.isChecked) "en" else "fa")
        if (source == null || target == null) { status.text = "این نسخهٔ موتور ترجمه از زبان انتخاب‌شده پشتیبانی نمی‌کند"; return }
        val onlyWifi = wifi.isChecked
        cancel()
        launch("آماده‌سازی/دانلود مدل و ترجمه…", {
            val translator = Translation.getClient(TranslatorOptions.Builder().setSourceLanguage(source).setTargetLanguage(target).build())
            try {
                val conditions = DownloadConditions.Builder().apply { if (onlyWifi) requireWifi() }.build()
                Tasks.await(translator.downloadModelIfNeeded(conditions), 180, TimeUnit.SECONDS)
                Tasks.await(translator.translate(sourceText), 60, TimeUnit.SECONDS)
            } finally { translator.close() }
        }) { output.text = it }
    }

    private fun camera() {
        cancel()
        var capture: File? = null
        try {
            val directory = File(cacheDir, "camera").apply { check(isDirectory || mkdirs()) { "فضای دوربین قابل ایجاد نیست" } }
            directory.listFiles()?.filter { System.currentTimeMillis() - it.lastModified() > 86400000 }?.forEach { it.delete() }
            val file = File.createTempFile("capture-", ".jpg", directory).also { capture = it }
            val uri = FileProvider.getUriForFile(this, "$packageName.files", file).also { cameraUri = it }
            startActivityForResult(Intent(MediaStore.ACTION_IMAGE_CAPTURE).apply {
                putExtra(MediaStore.EXTRA_OUTPUT, uri)
                clipData = ClipData.newRawUri("capture", uri)
                addFlags(Intent.FLAG_GRANT_WRITE_URI_PERMISSION or Intent.FLAG_GRANT_READ_URI_PERMISSION)
            }, CAMERA)
        } catch (error: Exception) {
            capture?.delete(); cameraUri = null
            status.text = when (error) {
                is ActivityNotFoundException -> "برنامهٔ دوربین در دسترس نیست"
                is SecurityException -> "دسترسی به دوربین توسط دستگاه محدود شده است"
                else -> "آماده‌سازی دوربین ممکن نشد؛ فضای ذخیره‌سازی را بررسی کنید"
            }
        }
    }
    private fun pickImage() {
        try { startActivityForResult(Intent(Intent.ACTION_OPEN_DOCUMENT).apply { type = "image/*"; addCategory(Intent.CATEGORY_OPENABLE) }, IMAGE) }
        catch (_: ActivityNotFoundException) { status.text = "انتخاب‌گر فایل در دسترس نیست" }
        catch (_: SecurityException) { status.text = "انتخاب تصویر توسط دستگاه محدود شده است" }
    }
    @Deprecated("Platform result callback")
    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode != CAMERA && requestCode != IMAGE) return
        val uri = if (requestCode == CAMERA) cameraUri else data?.data
        if (resultCode != RESULT_OK || uri == null) {
            if (requestCode == CAMERA) { cameraUri?.let { runCatching { contentResolver.delete(it, null, null) } }; cameraUri = null }
            return
        }
        cancel()
        launch("استخراج متن انگلیسی از تصویر…", {
            try {
                val bitmap = OcrImage.decode(applicationContext, uri)
                val recognizer = TextRecognition.getClient(TextRecognizerOptions.DEFAULT_OPTIONS)
                try { bitmap to Tasks.await(recognizer.process(InputImage.fromBitmap(bitmap, 0)), 60, TimeUnit.SECONDS) }
                finally { recognizer.close() }
            } finally {
                if (requestCode == CAMERA) runCatching { contentResolver.delete(uri, null, null) }
            }
        }) { (bitmap, result) ->
            preview.show(bitmap, result)
            val text = result.text
            if (text.isBlank()) status.text = "متن لاتین پیدا نشد؛ وضوح و نور تصویر را بررسی کنید. خط فارسی پشتیبانی نمی‌شود."
            else {
                input.setText(text); direction.isChecked = false
                if (text.length > 6000) status.text = "متن بیش از ۶۰۰۰ نویسه است؛ بخش نخست وارد شد. برای بخش دیگر روی کادر متن بزنید."
            }
        }
        cameraUri = null
    }
    private fun cancel() {
        generation++; job?.cancel(true); job = null; ai?.cancel(); ai = null
        busy = false
        if (::action.isInitialized) action.isEnabled = true
    }
    private fun <T> launch(message: String, task: () -> T, success: (T) -> Unit) {
        val token = ++generation
        busy = true; action.isEnabled = false; status.text = message
        job = executor.submit {
            val result = runCatching(task)
            runOnUiThread {
                if (isDestroyed || isFinishing || generation != token) return@runOnUiThread
                busy = false; action.isEnabled = true; status.text = "انجام شد"
                result.fold(success) { status.text = "عملیات ناموفق؛ اتصال، فضای ذخیره و تنظیمات را بررسی کنید.\n${it.cause?.localizedMessage ?: it.localizedMessage ?: "خطای نامشخص"}" }
            }
        }
    }
    override fun onSaveInstanceState(outState: Bundle) {
        outState.putString("mode", mode); outState.putString("input", input.text.toString()); outState.putString("output", output.text.toString())
        outState.putBoolean("direction", direction.isChecked); outState.putBoolean("wifi", wifi.isChecked); outState.putBoolean("busy", busy)
        outState.putString("camera", cameraUri?.toString()); super.onSaveInstanceState(outState)
    }
    override fun onDestroy() { cancel(); executor.shutdownNow(); super.onDestroy() }
    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()
    companion object { private const val CAMERA = 40; private const val IMAGE = 41 }
}
