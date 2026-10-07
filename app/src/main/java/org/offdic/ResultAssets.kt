package org.offdic

import android.content.Context
import android.util.Base64
import java.util.concurrent.ConcurrentHashMap

/**
 * Original result stylesheet with every referenced asset inlined as a `data:` URI.
 *
 * The previous build linked the stylesheet and the fonts over
 * `https://appassets.androidplatform.net/`, which forced the WebView client to answer
 * `shouldInterceptRequest` for the whole document. Any request the asset loader did not
 * recognise was answered with a fabricated HTTP 403 response; WebView refused that
 * synthetic response for the `data:` document navigation and replaced the word page with
 * its own error screen ("webpage not available", `net::ERR_HTTP_RESPONSE_CODE_FAILURE`).
 *
 * Inlining removes every external reference, so the page renders with a `null` base URL and
 * needs no request interception at all. The result is cached per process because the CSS is
 * ~110 KB and the base64 assets add ~430 KB.
 */
object ResultAssets {
    private const val HOST = "https://appassets.androidplatform.net/assets/"
    private val reference = Regex("""https://appassets\.androidplatform\.net/assets/[^)"'\s]+""")
    private val cache = ConcurrentHashMap<String, String>()

    /** @param withFonts set to false for the reduced page used when the data URL gets large. */
    fun css(context: Context, withFonts: Boolean = true): String = cache.getOrPut(if (withFonts) "css" else "css-lite") {
        val raw = context.assets.open("css/style-results.css").use { it.readBytes().toString(Charsets.UTF_8) }
        reference.replace(raw) { match ->
            val path = match.value.removePrefix(HOST)
            // A missing asset must degrade that single declaration, never the whole page.
            if (!withFonts && path.endsWith(".ttf", ignoreCase = true)) "" else inline(context, path)
        }
    }

    private fun inline(context: Context, path: String): String = runCatching {
        val bytes = context.assets.open(path).use { it.readBytes() }
        "data:${mime(path)};base64," + Base64.encodeToString(bytes, Base64.NO_WRAP)
    }.getOrElse { "" }

    private fun mime(path: String): String = when {
        path.endsWith(".ttf", ignoreCase = true) -> "font/ttf"
        path.endsWith(".png", ignoreCase = true) -> "image/png"
        path.endsWith(".svg", ignoreCase = true) -> "image/svg+xml"
        path.endsWith(".css", ignoreCase = true) -> "text/css"
        else -> "application/octet-stream"
    }
}
