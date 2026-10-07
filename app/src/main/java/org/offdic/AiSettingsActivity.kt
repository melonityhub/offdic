package org.offdic

import android.app.Activity
import android.app.AlertDialog
import android.graphics.Color
import android.os.Bundle
import android.text.InputFilter
import android.text.InputType
import android.view.View
import android.view.WindowManager
import android.widget.*
import java.util.concurrent.Executors
import java.util.concurrent.Future

/** One settings screen shared by More/Settings and the AI tab. Never logs or saves plaintext keys. */
class AiSettingsActivity : Activity() {
    private lateinit var protocol: Spinner
    private lateinit var endpoint: EditText
    private lateinit var model: EditText
    private lateinit var systemPrompt: EditText
    private lateinit var timeout: EditText
    private lateinit var key: EditText
    private lateinit var clearKey: CheckBox
    private lateinit var status: TextView
    private lateinit var test: Button
    private val io = Executors.newSingleThreadExecutor()
    private var future: Future<*>? = null
    private var client: AiClient? = null
    private var generation = 0
    private var persisted = AiSettings()
    private var credentialPresent = false
    private var credentialUnreadable = false

    override fun onCreate(state: Bundle?) {
        super.onCreate(state)
        window.addFlags(WindowManager.LayoutParams.FLAG_SECURE)
        persisted = AiSettings.load(this)
        val dark = getSharedPreferences("MainActivity", 0).getBoolean("dark", false)
        val color = if (dark) Color.WHITE else getColor(R.color.fdBlack)
        val root = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL; setPadding(24, 16, 24, 24); setBackgroundColor(if (dark) 0xff151516.toInt() else Color.WHITE) }
        val scroll = ScrollView(this).apply { addView(root) }
        scroll.setOnApplyWindowInsetsListener { v, insets ->
            v.setPadding(insets.systemWindowInsetLeft, insets.systemWindowInsetTop, insets.systemWindowInsetRight, insets.systemWindowInsetBottom); insets
        }
        fun label(value: String) { root.addView(TextView(this).apply { text = value; setTextColor(color); setPadding(0, 16, 0, 4) }) }
        fun field(id: Int, value: String, input: Int, limit: Int): EditText = EditText(this).apply {
            this.id = id; setTextColor(color); setHintTextColor(Color.GRAY)
            inputType = input; filters = arrayOf(InputFilter.LengthFilter(limit)); setText(value); root.addView(this)
        }
        root.addView(Button(this).apply { text = "‹  تنظیمات AI / API"; setOnClickListener { finish() } })
        label("نوع اتصال")
        protocol = Spinner(this).apply {
            id = R.id.ai_protocol
            adapter = ArrayAdapter(this@AiSettingsActivity, android.R.layout.simple_spinner_dropdown_item, listOf("Gateway اختصاصی (prompt → answer)", "API سازگار با OpenAI Chat Completions"))
            setSelection(persisted.protocol.ordinal)
        }
        root.addView(protocol)
        label("آدرس کامل HTTPS؛ مانند https://api.openai.com/v1/chat/completions یا https://your-domain/ai")
        endpoint = field(R.id.ai_endpoint, persisted.endpoint, InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_VARIATION_URI, 2048)
        label("نام مدل (برای Chat Completions الزامی)")
        model = field(R.id.ai_model, persisted.model, InputType.TYPE_CLASS_TEXT, 200)
        label("دستور سیستم (فقط برای Chat Completions)")
        systemPrompt = field(R.id.ai_system, persisted.systemPrompt, InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_FLAG_MULTI_LINE, 4000)
        label("مهلت پاسخ بر حسب ثانیه: ۱۵ تا ۱۲۰")
        timeout = field(R.id.ai_timeout, persisted.timeoutSeconds.toString(), InputType.TYPE_CLASS_NUMBER, 3)
        runCatching { AiCredentials(this).load() }.fold({ credentialPresent = it.isNotEmpty() }, { credentialUnreadable = true })
        label(if (credentialUnreadable) "کلید قبلی قابل رمزگشایی نیست؛ کلید جدید وارد کنید یا حذف را انتخاب کنید."
            else if (credentialPresent) "کلید ذخیره شده است. خالی گذاشتن این قسمت کلید قبلی را نگه می‌دارد."
            else "API key یا توکن gateway (اختیاری برای سرویس‌های بدون احراز هویت)")
        key = field(R.id.ai_key, "", InputType.TYPE_CLASS_TEXT or InputType.TYPE_TEXT_VARIATION_PASSWORD, 4096).apply {
            isSaveEnabled = false // Never put API keys in instance state, screenshots, or autofill.
            importantForAutofill = View.IMPORTANT_FOR_AUTOFILL_NO
        }
        clearKey = CheckBox(this).apply { id = R.id.ai_clear_key; text = "کلید ذخیره‌شده حذف شود"; setTextColor(color) }
        root.addView(clearKey)
        status = TextView(this).apply { setTextColor(color); isSaveEnabled = false }
        root.addView(status)
        root.addView(Button(this).apply { text = "ذخیره تنظیمات"; setOnClickListener { save() } })
        test = Button(this).apply { text = "آزمایش اتصال با همین مقادیر"; setOnClickListener { confirmTest() } }
        root.addView(test)
        root.addView(Button(this).apply { text = "لغو آزمایش"; setOnClickListener { cancel(); status.text = "آزمایش لغو شد" } })
        label("کلید فقط روی این دستگاه با Android Keystore رمز می‌شود. آن را در URL یا مخزن قرار ندهید. اتصال مستقیم، کلید را به دامنهٔ واردشده می‌فرستد؛ فقط سرویس مورد اعتماد خودتان را انتخاب کنید. تست اتصال ممکن است هزینه داشته باشد. ذخیرهٔ تنظیمات درخواست شبکه ارسال نمی‌کند.")
        setContentView(scroll); scroll.requestApplyInsets()
    }

    private fun values(): AiSettings = AiSettings(
        endpoint.text.toString().trim(), AiSettings.Protocol.entries[protocol.selectedItemPosition], model.text.toString().trim(),
        systemPrompt.text.toString(), timeout.text.toString().toIntOrNull() ?: 0
    ).validated()

    private fun token(config: AiSettings): String {
        val entered = key.text.toString().trim()
        require(!(entered.isNotEmpty() && clearKey.isChecked)) { "هم‌زمان کلید جدید و حذف کلید را انتخاب نکنید" }
        require(entered.none { it == '\r' || it == '\n' }) { "کلید نباید شامل خط جدید باشد" }
        if (clearKey.isChecked) return ""
        if (entered.isNotEmpty()) return entered
        require(!credentialUnreadable) { "کلید ذخیره‌شده قابل خواندن نیست؛ آن را جایگزین یا حذف کنید" }
        require(!credentialPresent || persisted.sameCredentialScope(config)) { "دامنه، پورت یا نوع API تغییر کرده؛ برای جلوگیری از ارسال کلید قبلی به سرویس دیگر، کلید را دوباره وارد یا حذف کنید" }
        return AiCredentials(this).load()
    }

    private fun save() {
        cancel()
        runCatching {
            val config = values()
            val secret = token(config)
            AiCredentials(this).save(secret)
            config.save(this)
            persisted = config; credentialPresent = secret.isNotEmpty(); credentialUnreadable = false
            key.setText(""); clearKey.isChecked = false
        }.fold({ status.text = "تنظیمات ذخیره شد؛ کلید به‌صورت رمز‌شده نگهداری می‌شود" }, { status.text = it.localizedMessage })
    }

    private fun confirmTest() {
        runCatching { val config = values(); config to token(config) }.fold({ (config, secret) ->
            AlertDialog.Builder(this).setTitle("آزمایش اتصال به ${AiClient.validateEndpoint(config.endpoint).host}؟")
                .setMessage("فقط پیام کوتاه Reply only OK ارسال می‌شود. هزینهٔ احتمالی با ارائه‌دهنده است. تنظیمات تا زدن ذخیره ثبت نمی‌شوند.")
                .setNegativeButton("لغو", null).setPositiveButton("آزمایش") { _, _ ->
                    cancel()
                    val token = ++generation
                    val api = AiClient().also { client = it }
                    test.isEnabled = false; status.text = "در حال آزمایش…"
                    future = io.submit {
                        val result = runCatching { api.ask(config, "Reply only OK.", secret) }
                        runOnUiThread {
                            if (isDestroyed || isFinishing || token != generation) return@runOnUiThread
                            test.isEnabled = true
                            // Do not echo a malicious provider response that could contain submitted credentials.
                            status.text = result.fold({ "اتصال و دریافت پاسخ متنی موفق بود" }, { "آزمایش ناموفق: ${it.localizedMessage}" })
                        }
                    }
                }.show()
        }, { status.text = it.localizedMessage })
    }
    private fun cancel() { generation++; client?.cancel(); client = null; future?.cancel(true); future = null; if (::test.isInitialized) test.isEnabled = true }
    override fun onStop() { cancel(); super.onStop() }
    override fun onDestroy() { cancel(); io.shutdownNow(); super.onDestroy() }
}
