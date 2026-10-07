package org.offdic

import android.app.Activity
import android.app.AlertDialog
import android.content.ActivityNotFoundException
import android.content.ClipData
import android.content.ClipboardManager
import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.speech.RecognizerIntent
import android.speech.tts.TextToSpeech
import android.text.Editable
import android.text.TextWatcher
import android.view.Gravity
import android.view.View
import android.view.inputmethod.InputMethodManager
import android.widget.*
import java.util.Locale
import java.util.concurrent.Executors

/** Native Kotlin first-stage port. No original SDK, billing, advertising or remote backend. */
class MainActivity : Activity() {
    private val io = Executors.newSingleThreadExecutor()
    private val handler = Handler(Looper.getMainLooper())
    private lateinit var dictionary: Dictionary
    private lateinit var users: UserStore
    private lateinit var root: LinearLayout
    private lateinit var body: LinearLayout
    private lateinit var heading: TextView
    private var searchInput: EditText? = null
    private var generation = 0
    private var query = ""
    private var ready = false
    private var tts: TextToSpeech? = null
    private var ttsReady = false
    private var screen = "search"
    private var selected: Word? = null
    private var resultWeb: ResultWebView? = null
    private val tabs = mutableMapOf<String, TextView>()
    private var dark = false
    private var scale = 1f
    private var debounce: Runnable? = null
    private val pageTextColor get() = if (dark) Color.WHITE else Color.rgb(5, 19, 30)
    private val pageBackgroundColor get() = if (dark) Color.rgb(21, 21, 22) else Color.WHITE
    private val primary get() = getColor(R.color.fdPrimary)

    override fun onCreate(state: Bundle?) {
        super.onCreate(state)
        val preferences = getPreferences(0)
        dark = preferences.getBoolean("dark", false)
        scale = preferences.getFloat("scale", 1f)
        query = state?.getString("query") ?: (intent.getCharSequenceExtra(Intent.EXTRA_PROCESS_TEXT)?.toString()
            ?: intent.getStringExtra(Intent.EXTRA_TEXT)).orEmpty().take(500)
        dictionary = Dictionary(applicationContext)
        users = UserStore(applicationContext)
        createShell()
        body.addView(label("در حال آماده‌سازی دیتابیس…"))
        tts = TextToSpeech(this) { status -> ttsReady = status == TextToSpeech.SUCCESS }
        val restoreScreen = state?.getString("screen")
        val restoreId = state?.getLong("wordId", -1) ?: -1
        val restoreLanguage = state?.getString("language")
        work({ dictionary.open() }, null) {
            ready = true
            when {
                restoreId >= 0 && restoreLanguage != null -> work({ dictionary.word(restoreId, Language.valueOf(restoreLanguage)) }) { word -> if (word == null) searchPage() else openWord(word) }
                restoreScreen == "favorites" -> savedPage(true)
                restoreScreen == "history" -> savedPage(false)
                restoreScreen == "more" -> morePage()
                restoreScreen == "profile" -> profilePage()
                else -> searchPage()
            }
        }
    }

    private fun createShell() {
        root = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL; setBackgroundColor(pageBackgroundColor) }
        // Respect status/navigation bars, including Android 15's enforced edge-to-edge mode.
        root.setOnApplyWindowInsetsListener { v, insets ->
            v.setPadding(insets.systemWindowInsetLeft, insets.systemWindowInsetTop, insets.systemWindowInsetRight, insets.systemWindowInsetBottom)
            insets
        }
        heading = label("Offdic", 20f).apply {
            setBackgroundColor(primary); setTextColor(Color.WHITE); gravity = Gravity.CENTER
            typeface = resources.getFont(R.font.iransansxbold)
        }
        root.addView(heading, LinearLayout.LayoutParams(-1, dp(56)))
        body = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL }
        root.addView(body, LinearLayout.LayoutParams(-1, 0, 1f))
        val navigation = LinearLayout(this).apply { layoutDirection = View.LAYOUT_DIRECTION_LTR }
        tabs.clear()
        val destinations = listOf(
            Triple("search", "جستجو", R.drawable.selector_icon_search),
            Triple("ai", "هوش مصنوعی", R.drawable.selector_icon_ai),
            Triple("favorites", "علاقه‌ها", R.drawable.selector_icon_favorites),
            Triple("profile", "پروفایل", R.drawable.selector_icon_profile),
            Triple("more", "بیشتر", R.drawable.selector_icon_more)
        )
        destinations.forEach { (key, title, icon) ->
            val tab = TextView(this).apply {
                text = title; textSize = 11f; gravity = Gravity.CENTER; setTextColor(primary)
                val drawable = getDrawable(icon)!!.mutate().apply { setBounds(0, 0, dp(24), dp(24)); setTint(primary) }
                setCompoundDrawables(null, drawable, null, null); compoundDrawablePadding = dp(3)
                setPadding(0, dp(6), 0, dp(4)); contentDescription = title
                isFocusable = true; isClickable = true
                setOnClickListener {
                    when (key) {
                        "search" -> searchPage()
                        "ai" -> tools("ai")
                        "favorites" -> savedPage(true)
                        "profile" -> profilePage()
                        else -> morePage()
                    }
                }
            }
            tabs[key] = tab
            navigation.addView(tab, LinearLayout.LayoutParams(0, dp(60), 1f))
        }
        root.addView(navigation)
        setContentView(root)
        root.requestApplyInsets()
    }

    private fun reset(title: String, page: String) {
        generation++
        debounce?.let { handler.removeCallbacks(it) }; debounce = null
        screen = page; selected = null; searchInput = null
        heading.text = title
        resultWeb?.let { web -> (web.parent as? android.view.ViewGroup)?.removeView(web); web.release() }; resultWeb = null
        body.removeAllViews()
        val active = when(page) { "detail" -> "search"; "history" -> "favorites"; "categories", "category" -> "more"; else -> page }
        tabs.forEach { (key, tab) ->
            tab.isSelected = key == active
            tab.setTextColor(if (key == active) pageTextColor else primary)
            tab.compoundDrawables[1]?.apply {
                state = if (key == active) intArrayOf(android.R.attr.state_checked) else intArrayOf()
                setTint(if (key == active) pageTextColor else primary)
            }
        }
    }

    private fun searchPage() {
        reset("Offdic", "search")
        val search = EditText(this).apply {
            hint = "واژه را وارد کنید / Search"
            setSingleLine(true); setTextColor(pageTextColor); setHintTextColor(if (dark) Color.LTGRAY else Color.GRAY)
            textSize = 17f * scale
            setPadding(dp(16), dp(10), dp(16), dp(10))
            setText(query)
            contentDescription = "جستجوی فارسی و انگلیسی"
        }
        searchInput = search
        body.addView(search, LinearLayout.LayoutParams(-1, dp(60)))
        val actions = LinearLayout(this)
        actions.addView(button("ورودی صوتی") { voice() }, LinearLayout.LayoutParams(0, -2, 1f))
        actions.addView(button("دوربین / ترجمه") { tools("translate") }, LinearLayout.LayoutParams(0, -2, 1f))
        actions.addView(button("پاک کردن") { search.setText("") }, LinearLayout.LayoutParams(0, -2, 1f))
        body.addView(actions)
        if (!ready) { body.addView(label("دیتابیس آماده نیست. از «بیشتر» فایل SQLite را وارد کنید.")); return }
        if (dictionary.isSample) body.addView(label("نسخهٔ نمونه — واژه‌ها و روابط کامل نیستند", 12f))
        val results = scrollBody()
        fun load() {
            val current = query
            val token = ++generation
            results.removeAllViews()
            if (current.isBlank()) {
                results.addView(label("جستجوی آفلاین فارسی ↔ انگلیسی", 18f))
                work({ dictionary.dailyWord() }, token) { entry ->
                    if (entry != null) {
                        val card = LinearLayout(this).apply {
                            orientation = LinearLayout.VERTICAL; setBackgroundColor(getColor(R.color.fdBlack80))
                            setPadding(dp(8), dp(8), dp(8), dp(16)); isClickable = true; isFocusable = true
                            contentDescription = "واژهٔ روز: ${entry.word.text}"; setOnClickListener { openWord(entry.word) }
                        }
                        card.addView(label("واژهٔ روز · ${java.time.LocalDate.now()}", 14f).apply { setTextColor(Color.WHITE); setBackgroundColor(getColor(R.color.fdBlack)) })
                        card.addView(label(entry.word.text, 26f).apply { setTextColor(Color.WHITE) })
                        card.addView(label(entry.meanings.firstOrNull()?.text.orEmpty(), 17f).apply { setTextColor(Color.WHITE) })
                        results.addView(card)
                        results.addView(label("انتخاب روزانهٔ محلی؛ مستقل از آرشیو سرور اصلی", 12f))
                    }
                }
                return
            }
            work({ dictionary.search(current, Language.of(current)) }, token) { words ->
                renderPage(results, words, 0) { offset, callback ->
                    work({ dictionary.search(current, Language.of(current), offset) }, token, callback)
                }
            }
        }
        search.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) = Unit
            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
                query = s.toString().take(500)
                generation++ // Suppress any in-flight result immediately, not after the debounce.
                debounce?.let { handler.removeCallbacks(it) }
                debounce = Runnable { load() }.also { handler.postDelayed(it, 200) }
            }
            override fun afterTextChanged(s: Editable?) = Unit
        })
        load()
    }

    private fun renderPage(target: LinearLayout, words: List<Word>, offset: Int, fetch: (Int, (List<Word>) -> Unit) -> Unit) {
        if (words.isEmpty() && offset == 0) target.addView(label("نتیجه‌ای پیدا نشد؛ دیتابیس نمونه همهٔ واژه‌ها را ندارد."))
        words.forEach { word -> target.addView(wordRow(word) { openWord(word) }) }
        if (words.size == 60) {
            val more = button("بیشتر…") { }
            more.setOnClickListener {
                more.isEnabled = false
                fetch(offset + words.size) { next -> target.removeView(more); renderPage(target, next, offset + words.size, fetch) }
            }
            target.addView(more)
        }
    }

    private fun openWord(word: Word) {
        if (!ready) return
        (getSystemService(INPUT_METHOD_SERVICE) as InputMethodManager).hideSoftInputFromWindow(root.windowToken, 0)
        reset(word.text, "detail"); selected = word
        body.addView(label("در حال بارگذاری…"))
        work({ val entry = dictionary.detail(word); users.visit(word); entry to users.favorite(word) }) { (entry, favorite) ->
            body.removeAllViews()
            val actions = LinearLayout(this)
            val star = button(if (favorite) "★" else "☆") {}
            star.contentDescription = "افزودن یا حذف علاقه‌مندی"
            star.setOnClickListener { work({ users.toggle(word) }) { star.text = if (it) "★" else "☆" } }
            actions.addView(star, LinearLayout.LayoutParams(0, -2, 1f))
            actions.addView(button("کپی") {
                (getSystemService(CLIPBOARD_SERVICE) as ClipboardManager).setPrimaryClip(ClipData.newPlainText(word.text, shareText(entry)))
                toast("کپی شد")
            }, LinearLayout.LayoutParams(0, -2, 1f))
            actions.addView(button("اشتراک‌گذاری") {
                startActivity(Intent.createChooser(Intent(Intent.ACTION_SEND).apply { type = "text/plain"; putExtra(Intent.EXTRA_TEXT, shareText(entry)) }, "اشتراک‌گذاری واژه"))
            }, LinearLayout.LayoutParams(0, -2, 1f))
            body.addView(actions)
            if (word.language == Language.EN) {
                val audio = LinearLayout(this)
                audio.addView(button("تلفظ US") { speak(word.text, Locale.US) }, LinearLayout.LayoutParams(0, -2, 1f))
                audio.addView(button("تلفظ UK") { speak(word.text, Locale.UK) }, LinearLayout.LayoutParams(0, -2, 1f))
                body.addView(audio)
            }
            val holder = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL }
            body.addView(holder, LinearLayout.LayoutParams(-1, 0, 1f))
            resultWeb = ResultWebView(
                this,
                onWord = { id, language -> work({ dictionary.word(id, language) }) { related -> if (related != null) openWord(related) } },
                onState = { state -> if (state == ResultWebView.State.FAILED && screen == "detail" && selected == word) nativeEntry(holder, entry) }
            ).also { web ->
                holder.addView(web, LinearLayout.LayoutParams(-1, -1))
                web.show(entry, dark, scale)
            }
        }
    }

    private fun savedPage(favorites: Boolean) {
        reset(if (favorites) "علاقه‌مندی‌ها" else "تاریخچه", if (favorites) "favorites" else "history")
        if (!ready) return
        if (favorites) body.addView(button("تاریخچه") { savedPage(false) })
        if (!favorites) body.addView(button("پاک کردن تاریخچه") {
            AlertDialog.Builder(this).setMessage("تاریخچه پاک شود؟ علاقه‌مندی‌ها حفظ می‌شوند.")
                .setNegativeButton("لغو", null).setPositiveButton("پاک کردن") { _, _ -> work({ users.clearHistory() }) { savedPage(false) } }.show()
        })
        val list = scrollBody()
        work({ val words = users.list(favorites); words to dictionary.previews(words) }) { (words, previews) ->
            if (words.isEmpty()) list.addView(label("هنوز واژه‌ای ذخیره نشده است."))
            words.forEach { word -> list.addView(wordRow(word, previews[word].orEmpty()) {
                work({ dictionary.word(word.id, word.language) }) { found ->
                    if (found == null || found.text != word.text) toast("این واژه در دیتابیس فعلی موجود نیست") else openWord(found)
                }
            }) }
        }
    }

    private fun categoriesPage() {
        reset("دسته‌بندی‌ها", "categories")
        if (!ready) return
        val list = scrollBody()
        work({ dictionary.categories() }) { categories ->
            categories.forEach { category -> list.addView(button("${category.persian} · ${category.english}") {
                AlertDialog.Builder(this).setItems(arrayOf("انگلیسی", "فارسی")) { _, which -> categoryPage(category, if (which == 0) Language.EN else Language.FA) }.show()
            }) }
        }
    }

    private fun categoryPage(category: Category, language: Language) {
        reset(category.persian, "category")
        val list = scrollBody()
        val token = generation
        work({ dictionary.categoryWords(category.id, language, 0) }, token) { words ->
            renderPage(list, words, 0) { offset, callback -> work({ dictionary.categoryWords(category.id, language, offset) }, token, callback) }
        }
    }

    private fun morePage() {
        reset("بیشتر", "more")
        val list = scrollBody()
        list.addView(button("ترجمهٔ متن / دوربین / OCR") { tools("translate") })
        list.addView(button("تنظیمات AI / API") { startActivity(Intent(this, AiSettingsActivity::class.java)) })
        list.addView(button("هوش مصنوعی") { tools("ai") })
        list.addView(button("راهنمای ویجت") { AlertDialog.Builder(this).setMessage("در صفحهٔ اصلی گوشی نگه دارید، Widgets را باز کنید و Offdic را اضافه کنید. واژهٔ روز از دیتابیس محلی انتخاب می‌شود.").setPositiveButton("باشه", null).show() })
        list.addView(button("دسته‌بندی واژه‌ها") { categoriesPage() })
        list.addView(button("وارد کردن دیتابیس کامل SQLite") {
            try { startActivityForResult(Intent(Intent.ACTION_OPEN_DOCUMENT).apply { type = "*/*"; addCategory(Intent.CATEGORY_OPENABLE) }, IMPORT) }
            catch (_: ActivityNotFoundException) { toast("انتخاب‌گر فایل روی دستگاه موجود نیست") }
        })
        list.addView(Switch(this).apply {
            text = "حالت تاریک"; setTextColor(pageTextColor); isChecked = dark
            setOnCheckedChangeListener { _, checked -> dark = checked; getPreferences(0).edit().putBoolean("dark", dark).apply(); createShell(); morePage() }
        })
        list.addView(button("اندازهٔ نوشته") {
            AlertDialog.Builder(this).setItems(arrayOf("معمولی", "بزرگ", "خیلی بزرگ")) { _, which ->
                scale = listOf(1f, 1.2f, 1.4f)[which]; getPreferences(0).edit().putFloat("scale", scale).apply(); morePage()
            }.show()
        })
        list.addView(label("دیتابیس: " + if (ready && dictionary.isSample) "نمونه" else if (ready) "واردشده / کامل" else "آماده نیست"))
        list.addView(label("نسخهٔ کاتلین بدون تبلیغ و پرداخت. OCR لاتین و ترجمهٔ دستگاهی اضافه شده‌اند؛ AI به gateway تنظیم‌شده نیاز دارد. واژهٔ روز و ویجت محلی‌اند. تلفظ از موتور دستگاه است. حساب ابری و همگام‌سازی به سرور اصلی متصل نیستند.", 15f))
        list.addView(label("راهنمای دیتابیس: فایل رمزگشایی‌شدهٔ fastdic_plain.sqlite را انتخاب کنید. فایل SQLCipher بدون کلید قابل استفاده نیست. وارد کردن دیتابیس علاقه‌مندی‌ها را پاک نمی‌کند.", 15f))
    }

    private fun tools(mode: String) {
        startActivity(Intent(this, LanguageToolsActivity::class.java).putExtra("mode", mode).putExtra("text", query))
    }

    private fun profilePage() {
        reset("پروفایل محلی", "profile")
        val list = scrollBody()
        val prefs = getSharedPreferences("profile", 0)
        val name = EditText(this).apply { hint = "نام نمایشی"; setTextColor(pageTextColor); setText(prefs.getString("name", "")); filters = arrayOf(android.text.InputFilter.LengthFilter(80)) }
        list.addView(name)
        list.addView(button("ذخیره روی این دستگاه") { prefs.edit().putString("name", name.text.toString().trim()).apply(); toast("ذخیره شد") })
        list.addView(label("پروفایل محلی است؛ حساب یا همگام‌سازی با سرور اپ اصلی ایجاد نمی‌کند. تمام امکانات محلی بدون ورود و اشتراک در دسترس‌اند."))
        list.addView(button("علاقه‌مندی‌ها") { savedPage(true) })
        list.addView(button("تاریخچه") { savedPage(false) })
    }

    private fun voice() {
        try { startActivityForResult(Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH).apply {
            putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
            putExtra(RecognizerIntent.EXTRA_LANGUAGE, if (Language.of(query) == Language.FA) "fa-IR" else "en-US")
        }, VOICE) } catch (_: ActivityNotFoundException) { toast("سرویس تشخیص گفتار روی دستگاه موجود نیست") }
    }

    @Deprecated("Platform activity result callback")
    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (resultCode != RESULT_OK) return
        if (requestCode == VOICE) {
            query = data?.getStringArrayListExtra(RecognizerIntent.EXTRA_RESULTS)?.firstOrNull().orEmpty().take(500)
            searchPage()
        }
        if (requestCode == IMPORT) {
            val uri = data?.data ?: return
            reset("دیتابیس", "import")
            body.addView(label("در حال کپی و بررسی دیتابیس؛ لطفاً منتظر بمانید…"))
            // Import must update readiness even if the user navigates away while it runs.
            work({ contentResolver.openInputStream(uri)?.use { dictionary.install(it) } ?: error("فایل خوانده نشد") }, null) {
                ready = true; DailyWordWidget.refresh(applicationContext); toast("دیتابیس وارد شد"); searchPage()
            }
        }
    }

    private fun speak(text: String, locale: Locale) {
        if (!ttsReady) { toast("موتور تلفظ آماده نیست"); return }
        val result = tts?.setLanguage(locale) ?: TextToSpeech.LANG_NOT_SUPPORTED
        if (result < 0) { toast("صدای این زبان روی دستگاه نصب نیست"); return }
        tts?.speak(text, TextToSpeech.QUEUE_FLUSH, null, "word")
    }
    private fun shareText(entry: Entry) = entry.word.text + "\n" + entry.meanings.joinToString("\n") { it.text }
    private fun scrollBody(): LinearLayout {
        val column = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL; setPadding(dp(12), dp(8), dp(12), dp(8)) }
        val scroll = ScrollView(this).apply { isFillViewport = true; addView(column) }
        body.addView(scroll, LinearLayout.LayoutParams(-1, 0, 1f))
        return column
    }
    private fun label(value: String, size: Float = 16f) = TextView(this).apply {
        text = value; textSize = size * scale; setTextColor(pageTextColor)
        setPadding(dp(12), dp(10), dp(12), dp(10)); textDirection = View.TEXT_DIRECTION_FIRST_STRONG
        setTextIsSelectable(true)
    }

    /**
     * One suggestion row: the word plus its translation preview, the same information the
     * original search list shows. Without the preview the list only echoed the query.
     */
    private fun wordRow(word: Word, preview: String = word.preview, click: () -> Unit): LinearLayout {
        val persian = word.language == Language.FA
        val row = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            // Same shape as the original word_suggestion_item_layout: word over preview, one line each.
            setPadding(dp(16), dp(8), dp(16), dp(8))
            minimumHeight = dp(64)
            isClickable = true; isFocusable = true
            background = themeBackground()
        }
        row.addView(TextView(this).apply {
            text = word.text; textSize = 20f * scale; setTextColor(pageTextColor)
            typeface = resources.getFont(if (persian) R.font.iransansxbold else R.font.helveticaneueregular)
            textDirection = View.TEXT_DIRECTION_FIRST_STRONG
            gravity = if (persian) Gravity.END else Gravity.START
            maxLines = 1
            ellipsize = android.text.TextUtils.TruncateAt.END
        })
        if (preview.isNotBlank()) row.addView(TextView(this).apply {
            text = preview; textSize = 14f * scale
            setTextColor(if (dark) Color.rgb(163, 163, 163) else getColor(R.color.fdGrey))
            typeface = resources.getFont(R.font.iransansxregular)
            maxLines = 1
            ellipsize = android.text.TextUtils.TruncateAt.END
            textDirection = View.TEXT_DIRECTION_FIRST_STRONG
            gravity = if (Language.of(preview) == Language.FA) Gravity.END else Gravity.START
            setPadding(0, dp(4), 0, 0)
        })
        row.contentDescription = if (preview.isBlank()) word.text else word.text + "، " + preview
        row.setOnClickListener { click() }
        return row
    }

    /** Database descriptions are HTML fragments; the native fallback shows their text only. */
    private fun plain(value: String) = runCatching { android.text.Html.fromHtml(value, android.text.Html.FROM_HTML_MODE_COMPACT).toString() }.getOrDefault(value)

    private fun themeBackground(): android.graphics.drawable.Drawable? {
        val value = android.util.TypedValue()
        return if (theme.resolveAttribute(android.R.attr.selectableItemBackground, value, true)) androidx.core.content.ContextCompat.getDrawable(this, value.resourceId) else null
    }

    /** Guaranteed fallback: a WebView failure must never hide the translation. */
    private fun nativeEntry(holder: LinearLayout, entry: Entry) {
        holder.removeAllViews()
        resultWeb?.let { web -> (web.parent as? android.view.ViewGroup)?.removeView(web); web.release() }
        resultWeb = null
        val column = LinearLayout(this).apply { orientation = LinearLayout.VERTICAL }
        holder.addView(ScrollView(this).apply { isFillViewport = true; addView(column) }, LinearLayout.LayoutParams(-1, -1))
        column.addView(label("نمایش متن واژه به‌صورت ساده؛ موتور WebView پاسخ نداد.", 12f))
        column.addView(label(entry.word.text, 24f))
        if (entry.html.isNotBlank()) column.addView(label(plain(entry.html), 14f))
        for ((index, meaning) in entry.meanings.withIndex()) {
            val head = (meaning.pos + meaning.labels + listOf(meaning.cefr)).filter { it.isNotBlank() }.joinToString(" · ")
            if (head.isNotBlank()) column.addView(label("${index + 1}. $head", 13f))
            column.addView(label(meaning.text, 18f))
            if (meaning.phonetic.isNotBlank()) column.addView(label(meaning.phonetic, 14f))
            meaning.sentences.filter { it.isNotBlank() }.forEach { column.addView(label(it, 15f)) }
        }
        for ((title, value) in entry.sections) { column.addView(label(title, 14f)); column.addView(label(value, 15f)) }
        if (entry.meanings.isEmpty()) column.addView(label("معنای این واژه در دیتابیس فعلی موجود نیست."))
        column.addView(button("تلاش دوباره برای نمایش گرافیکی") { openWord(entry.word) })
    }
    private fun button(value: String, click: () -> Unit) = Button(this).apply {
        text = value; textSize = 14f * scale; isAllCaps = false; setTextColor(pageTextColor)
        setOnClickListener { click() }; minHeight = dp(48)
    }
    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()
    private fun toast(value: String) = Toast.makeText(this, value, Toast.LENGTH_LONG).show()
    private fun <T> work(task: () -> T, token: Int? = generation, success: (T) -> Unit) {
        io.execute {
            val result = runCatching(task)
            handler.post {
                if (isDestroyed || isFinishing || (token != null && token != generation)) return@post
                result.fold(success) { error ->
                    AlertDialog.Builder(this).setTitle("عملیات انجام نشد")
                        .setMessage("دیتابیس SQLite و فضای خالی را بررسی کنید.\n${error.localizedMessage.orEmpty().take(300)}")
                        .setPositiveButton("باشه", null).show()
                }
            }
        }
    }
    override fun onSaveInstanceState(outState: Bundle) {
        outState.putString("query", query); outState.putString("screen", screen)
        selected?.let { outState.putLong("wordId", it.id); outState.putString("language", it.language.name) }
        super.onSaveInstanceState(outState)
    }
    @Deprecated("Platform back callback")
    override fun onBackPressed() { if (screen != "search") searchPage() else super.onBackPressed() }
    override fun onDestroy() {
        generation++; handler.removeCallbacksAndMessages(null)
        resultWeb?.let { web -> (web.parent as? android.view.ViewGroup)?.removeView(web); web.release() }; resultWeb = null
        tts?.stop(); tts?.shutdown()
        io.execute { dictionary.close(); users.close() }; io.shutdown()
        super.onDestroy()
    }
    companion object { private const val IMPORT = 1; private const val VOICE = 2 }
}
