package org.offdic

import android.text.Html
import android.text.TextUtils

/**
 * Result page for one word. Same contract as the original `WordResultFragment`: escaped
 * database text, original CSS, no JavaScript, no remote content, loaded through
 * `loadDataWithBaseURL(null, …)`.
 *
 * @param css stylesheet produced by [ResultAssets]; it already contains the app fonts and
 * icons as `data:` URIs, so the document is self-contained.
 */
object ResultHtml {
    fun escape(text: String): String = TextUtils.htmlEncode(text).replace("\n", "<br>")
    private fun description(text: String) = escape(Html.fromHtml(text, Html.FROM_HTML_MODE_COMPACT).toString())
    private val labelNames = mapOf(
        "countable" to "شمارش‌پذیر", "uncountable" to "غیرشمارش‌پذیر",
        "formal" to "رسمی", "informal" to "غیررسمی",
        "British" to "بریتانیایی", "American" to "آمریکایی"
    )

    private fun meta(meaning: Meaning) = buildList {
        addAll(meaning.pos.filter { it.isNotBlank() })
        if (meaning.cefr.isNotBlank()) add(meaning.cefr)
        addAll(meaning.labels.filter { it.isNotBlank() }.map { labelNames[it] ?: it })
    }.joinToString(" · ")

    fun render(entry: Entry, dark: Boolean, scale: Float, css: String = ""): String = buildString {
        val persianWord = entry.word.language == Language.FA
        val wordClass = if (persianWord) "persian" else "english"
        val meaningClass = if (persianWord) "english" else "persian"
        append("<!doctype html><html lang='${if (persianWord) "fa" else "en"}' dir='${if (persianWord) "rtl" else "ltr"}' class='no-js${if (dark) " is-darkmode" else ""}' data-theme='${if (dark) "dark" else "light"}'>")
        append("<head><meta charset='utf-8'><meta name='viewport' content='width=device-width,initial-scale=1'>")
        append("<title>${escape(entry.word.text)}</title>")
        append("<meta http-equiv='Content-Security-Policy' content=\"default-src 'none'; style-src 'unsafe-inline' https://appassets.androidplatform.net; font-src data: https://appassets.androidplatform.net; img-src data: https://appassets.androidplatform.net;\">")
        append("<style>").append(css).append("</style>")
        append("<style>")
        append("html{font-size:${62.5f * scale.coerceIn(0.8f, 1.6f)}%}")
        append("body{background:${if (dark) "#151516" else "#ffffff"};color:${if (dark) "#f9f9f9" else "#05131e"}}")
        append(".results{opacity:1}.results__container{padding:12px}.fd-container--contents{margin-bottom:24px}")
        append(".group-section{padding:12px 0;border-bottom:1px solid ${if (dark) "#44484a" else "#a6b1b9"}}")
        append(".group-section:last-child{border-bottom:none}.pos{color:${if (dark) "#a3a3a3" else "#728597"};font-size:1.4rem;line-height:2.4rem}")
        append("h1{overflow-wrap:anywhere}p{overflow-wrap:anywhere;line-height:2.8rem;margin:0 0 4px}")
        append(".results__extra--description{color:${if (dark) "#a3a3a3" else "#616669"}}.results__meaning{font-size:1.7rem}")
        append("a{padding:6px 0}")
        append("</style></head><body>")
        append("<main class='site is-showing-result'><div class='results visible'><div class='results__wrapper'><div class='results__container'>")
        append("<header class='results__header'><h1 class='$wordClass'>${escape(entry.word.text)}</h1></header>")
        if (entry.html.isNotBlank()) append("<p class='results__extra--description'>${description(entry.html)}</p>")
        for ((index, meaning) in entry.meanings.withIndex()) {
            append("<section class='group-section'>")
            val heading = meta(meaning)
            if (heading.isNotBlank()) append("<div class='pos'>${index + 1}. ${escape(heading)}</div>")
            append("<p class='results__meaning $meaningClass'>${escape(meaning.text)}</p>")
            if (meaning.phonetic.isNotBlank()) append("<p class='english'>${escape(meaning.phonetic)}</p>")
            if (meaning.html.isNotBlank()) append("<p>${description(meaning.html)}</p>")
            for (sentence in meaning.sentences.filter { it.isNotBlank() }) append("<p class='$meaningClass' dir='auto'>${escape(sentence)}</p>")
            append("</section>")
        }
        for ((title, value) in entry.sections) append("<section class='group-section'><h3 class='persian'>${escape(title)}</h3><p dir='auto'>${escape(value)}</p></section>")
        if (entry.idioms.isNotEmpty()) {
            append("<section class='group-section'><h3 class='persian'>اصطلاح‌ها</h3>")
            for (word in entry.idioms) append("<a class='english' href='offdic://word/${word.language.name}/${word.id}'>${escape(word.text)}</a><br>")
            append("</section>")
        }
        if (entry.meanings.isEmpty()) append("<p class='persian'>معنای این واژه در دیتابیس فعلی موجود نیست.</p>")
        append("</div></div></div></main></body></html>")
    }
}
