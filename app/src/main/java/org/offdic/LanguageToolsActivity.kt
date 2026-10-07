package org.offdic

import android.app.Activity
import android.content.ActivityNotFoundException
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.provider.MediaStore
import android.widget.Button
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import android.widget.Toast
import androidx.core.content.FileProvider
import com.google.mlkit.nl.translate.TranslateLanguage
import com.google.mlkit.nl.translate.Translation
import com.google.mlkit.nl.translate.Translator
import com.google.mlkit.nl.translate.TranslatorOptions
import com.google.mlkit.vision.common.InputImage
import com.google.mlkit.vision.text.TextRecognition
import com.google.mlkit.vision.text.TextRecognizer
import com.google.mlkit.vision.text.TextRecognizerOptions
import java.io.File
import java.io.BufferedReader
import java.io.InputStreamReader
import java.net.HttpURLConnection
import java.net.URL
import java.util.concurrent.Executors
import org.json.JSONArray
import org.json.JSONObject

/**
 * Offline-first language tools in one screen:
 *  - OCR of Latin text from a fresh photo or a picked image (bundled ML Kit text recognition);
 *  - device translation English ⇄ Persian (bundled ML Kit translate; the model downloads once);
 *  - an optional round-trip to the user's own OpenAI-compatible endpoint (mode "ai").
 *
 * The mode and any pre-filled text arrive as intent extras from [MainActivity].
 */
class LanguageToolsActivity : Activity() {
    private val io = Executors.newSingleThreadExecutor()
    private lateinit var input: EditText
    private lateinit var output: TextView
    private var mode = "translate"
    private var recognizer: TextRecognizer? = null
    private var translator: Translator? = null
    private var cameraTarget: Uri? = null

    override fun onCreate(state: Bundle?) {
        super.onCreate(state)
        mode = intent.getStringExtra(EXTRA_MODE) ?: "translate"
        val column = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(16), dp(16), dp(16), dp(16))
        }
        input = EditText(this).apply {
            hint = "متن انگلیسی یا فارسی"
            setText(intent.getStringExtra(EXTRA_TEXT).orEmpty())
            minLines = 3
        }
        column.addView(input)

        val capture = LinearLayout(this)
        capture.addView(button("دوربین / OCR") { launchCamera() }, LinearLayout.LayoutParams(0, -2, 1f))
        capture.addView(button("انتخاب تصویر") { launchGallery() }, LinearLayout.LayoutParams(0, -2, 1f))
        column.addView(capture)

        val actionLabel = if (mode == "ai") "ارسال به AI" else "ترجمه"
        column.addView(button(actionLabel) { run() })

        output = TextView(this).apply { setPadding(dp(8), dp(16), dp(8), dp(8)) }
        column.addView(output)
        setContentView(ScrollView(this).apply { addView(column) })
    }

    private fun run() {
        val text = input.text.toString().trim()
        if (text.isEmpty()) { toast("متنی وارد نشده است"); return }
        if (mode == "ai") runAi(text) else runTranslate(text)
    }

    // ---- Camera / gallery → OCR -------------------------------------------------------------

    private fun launchCamera() {
        val directory = File(cacheDir, "camera").apply { mkdirs() }
        val file = File(directory, "ocr_${System.currentTimeMillis()}.jpg")
        val uri = FileProvider.getUriForFile(this, "$packageName.fileprovider", file)
        cameraTarget = uri
        val intent = Intent(MediaStore.ACTION_IMAGE_CAPTURE)
            .putExtra(MediaStore.EXTRA_OUTPUT, uri)
            .addFlags(Intent.FLAG_GRANT_WRITE_URI_PERMISSION)
        try {
            startActivityForResult(intent, REQUEST_CAMERA)
        } catch (_: ActivityNotFoundException) {
            toast("برنامهٔ دوربین روی دستگاه موجود نیست")
        }
    }

    private fun launchGallery() {
        val intent = Intent(Intent.ACTION_OPEN_DOCUMENT).apply {
            addCategory(Intent.CATEGORY_OPENABLE)
            type = "image/*"
        }
        try {
            startActivityForResult(intent, REQUEST_GALLERY)
        } catch (_: ActivityNotFoundException) {
            toast("انتخاب‌گر تصویر روی دستگاه موجود نیست")
        }
    }

    @Deprecated("Platform activity result callback")
    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (resultCode != RESULT_OK) return
        when (requestCode) {
            REQUEST_CAMERA -> cameraTarget?.let { recognize(it) }
            REQUEST_GALLERY -> data?.data?.let { recognize(it) }
        }
    }

    private fun recognize(uri: Uri) {
        output.text = "در حال شناسایی متن…"
        val client = recognizer ?: TextRecognition.getClient(TextRecognizerOptions.DEFAULT_OPTIONS)
            .also { recognizer = it }
        io.execute {
            val image = runCatching { InputImage.fromFilePath(this, uri) }.getOrNull()
            if (image == null) {
                runOnUiThread { output.text = "تصویر خوانده نشد" }
                return@execute
            }
            client.process(image)
                .addOnSuccessListener { text -> input.setText(text.text); output.text = "" }
                .addOnFailureListener { runOnUiThread { output.text = "متن شناسایی نشد" } }
        }
    }

    // ---- Device translation -----------------------------------------------------------------

    private fun runTranslate(text: String) {
        val persianSource = Language.of(text) == Language.FA
        val options = TranslatorOptions.Builder()
            .setSourceLanguage(if (persianSource) TranslateLanguage.PERSIAN else TranslateLanguage.ENGLISH)
            .setTargetLanguage(if (persianSource) TranslateLanguage.ENGLISH else TranslateLanguage.PERSIAN)
            .build()
        translator?.close()
        val client = Translation.getClient(options).also { translator = it }
        output.text = "در حال آماده‌سازی مدل ترجمه…"
        client.downloadModelIfNeeded()
            .addOnSuccessListener {
                client.translate(text)
                    .addOnSuccessListener { translated -> output.text = translated.orEmpty() }
                    .addOnFailureListener { output.text = "ترجمه انجام نشد" }
            }
            .addOnFailureListener { output.text = "مدل ترجمه دانلود نشد؛ به اینترنت نیاز است" }
    }

    // ---- Optional AI round-trip -------------------------------------------------------------

    private fun runAi(text: String) {
        val prefs = getSharedPreferences("ai_settings", 0)
        val url = prefs.getString("endpoint", "").orEmpty().trim()
        if (url.isEmpty()) {
            output.text = "در «بیشتر ← تنظیمات AI / API» یک endpoint تنظیم کنید."
            return
        }
        val key = prefs.getString("apiKey", "").orEmpty().trim()
        val model = prefs.getString("model", "").orEmpty().trim().ifEmpty { "gpt-4o-mini" }
        val system = prefs.getString("system", "").orEmpty().trim()
        val seconds = (prefs.getString("timeout", "20")?.toIntOrNull() ?: 20).coerceIn(3, 120)
        output.text = "در حال ارسال…"
        io.execute {
            val result = runCatching { chat(url, key, model, system, text, seconds) }
            runOnUiThread {
                result.fold(
                    { output.text = it },
                    { output.text = "خطا: ${it.localizedMessage.orEmpty().take(300)}" }
                )
            }
        }
    }

    private fun chat(url: String, key: String, model: String, system: String, content: String, seconds: Int): String {
        val messages = JSONArray()
        if (system.isNotEmpty()) messages.put(JSONObject().put("role", "system").put("content", system))
        messages.put(JSONObject().put("role", "user").put("content", content))
        val body = JSONObject().put("model", model).put("messages", messages)
        val connection = (URL(url).openConnection() as HttpURLConnection).apply {
            requestMethod = "POST"
            connectTimeout = seconds * 1000
            readTimeout = seconds * 1000
            doOutput = true
            setRequestProperty("Content-Type", "application/json")
            if (key.isNotEmpty()) setRequestProperty("Authorization", "Bearer $key")
        }
        try {
            connection.outputStream.use { it.write(body.toString().toByteArray(Charsets.UTF_8)) }
            val stream = if (connection.responseCode in 200..299) connection.inputStream else connection.errorStream
            val raw = stream?.use { BufferedReader(InputStreamReader(it, Charsets.UTF_8)).readText() }.orEmpty()
            return parseCompletion(raw) ?: "پاسخ نامعتبر (HTTP ${connection.responseCode})"
        } finally {
            connection.disconnect()
        }
    }

    private fun parseCompletion(raw: String): String? = runCatching {
        val json = JSONObject(raw)
        json.getJSONArray("choices")
            .getJSONObject(0)
            .getJSONObject("message")
            .getString("content")
    }.getOrNull()

    // ---- Helpers ----------------------------------------------------------------------------

    private fun button(label: String, click: () -> Unit) = Button(this).apply {
        text = label
        isAllCaps = false
        setOnClickListener { click() }
    }

    private fun toast(value: String) = Toast.makeText(this, value, Toast.LENGTH_LONG).show()
    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()

    override fun onDestroy() {
        translator?.close()
        recognizer?.close()
        io.shutdown()
        super.onDestroy()
    }

    companion object {
        const val EXTRA_MODE = "mode"
        const val EXTRA_TEXT = "text"
        private const val REQUEST_CAMERA = 10
        private const val REQUEST_GALLERY = 11
    }
}
