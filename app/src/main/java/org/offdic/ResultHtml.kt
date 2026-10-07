package org.offdic

import android.text.Html
import android.text.TextUtils

/** Original result CSS with escaped data; no JavaScript, raw DB HTML or remote content. */
object ResultHtml {
    fun escape(text: String): String = TextUtils.htmlEncode(text).replace("\n", "<br>")
    private fun description(text: String) = escape(Html.fromHtml(text, Html.FROM_HTML_MODE_COMPACT).toString())
    fun render(entry: Entry, dark: Boolean, scale: Float): String = buildString {
        append("<!doctype html><html class='no-js' data-theme='${if (dark) "dark" else "light"}'><head><meta name='viewport' content='width=device-width,initial-scale=1'>")
        append("<meta http-equiv='Content-Security-Policy' content=\"default-src 'none'; style-src https://appassets.androidplatform.net 'unsafe-inline'; font-src https://appassets.androidplatform.net; img-src https://appassets.androidplatform.net data:;\">")
        append("<link rel='stylesheet' href='https://appassets.androidplatform.net/assets/css/style-results.css'>")
        append("<style>html{font-size:${62.5f * scale.coerceIn(0.8f, 1.6f)}%}.results{opacity:1}.fd-container--contents{margin-bottom:24px}.results__container{padding:12px}.group-section{padding:12px 0;border-bottom:1px solid #a6b1b9}p{overflow-wrap:anywhere}.pos{color:#728597;font-size:1.4rem}a{display:inline-block;padding:8px}</style></head><body>")
        append("<main class='site is-showing-result'><div class='results visible'><div class='results__wrapper'><div class='results__container'>")
        append("<header class='results__header'><h1 class='${if (entry.word.language == Language.EN) "english" else "persian"}'>${escape(entry.word.text)}</h1></header>")
        if (entry.html.isNotBlank()) append("<p class='results__extra--description'>${description(entry.html)}</p>")
        for ((index, meaning) in entry.meanings.withIndex()) {
            append("<section class='group-section'><div class='pos'>${index + 1}. ${escape((meaning.pos + meaning.labels + meaning.cefr).filter { it.isNotBlank() }.joinToString(" · "))}</div>")
            append("<p class='${if (entry.word.language == Language.EN) "persian" else "english"}'>${escape(meaning.text)}</p>")
            if (meaning.phonetic.isNotBlank()) append("<p class='english'>${escape(meaning.phonetic)}</p>")
            if (meaning.html.isNotBlank()) append("<p>${description(meaning.html)}</p>")
            for (sentence in meaning.sentences) append("<p dir='auto'>${escape(sentence)}</p>")
            append("</section>")
        }
        for ((title, value) in entry.sections) append("<section class='group-section'><h3 class='persian'>${escape(title)}</h3><p dir='auto'>${escape(value)}</p></section>")
        if (entry.idioms.isNotEmpty()) append("<h3 class='persian'>اصطلاح‌ها</h3>")
        for (word in entry.idioms) append("<a href='offdic://word/${word.language.name}/${word.id}'>${escape(word.text)}</a><br>")
        if (entry.meanings.isEmpty()) append("<p class='persian'>معنای این واژه در دیتابیس فعلی موجود نیست.</p>")
        append("</div></div></div></main></body></html>")
    }
}
