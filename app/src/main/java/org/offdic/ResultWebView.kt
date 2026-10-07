package org.offdic

import android.content.Context
import android.view.ViewGroup
import android.webkit.*
import androidx.webkit.WebViewAssetLoader

/**
 * Read-only WebView for one word result.
 *
 * The document is self-contained (CSS, fonts and icons are inlined data URIs) and is loaded
 * with a `null` base URL, exactly like the original `WordResultFragment`. `shouldInterceptRequest`
 * therefore never has to synthesise a response for the document navigation: returning a fake
 * HTTP status for a non-HTTP request is what produced "webpage not available" with
 * `net::ERR_HTTP_RESPONSE_CODE_FAILURE`. The asset loader is only a compatibility path and
 * anything it does not recognise is passed back to WebView as `null` (= handle it normally),
 * never as a fabricated error response.
 */
class ResultWebView(
    context: Context,
    private val onWord: (Long, Language) -> Unit,
    private val onState: (State) -> Unit = {}
) : WebView(context) {
    enum class State { LOADING, RENDERED, FAILED }

    private val assets = WebViewAssetLoader.Builder()
        .addPathHandler("/assets/", WebViewAssetLoader.AssetsPathHandler(context.applicationContext))
        .build()
    private var released = false
    private var failed = false

    init {
        settings.apply {
            javaScriptEnabled = false; allowFileAccess = false; allowContentAccess = false
            blockNetworkLoads = true; domStorageEnabled = false
            defaultTextEncodingName = "utf-8"
            mixedContentMode = WebSettings.MIXED_CONTENT_NEVER_ALLOW
            setSupportZoom(true); builtInZoomControls = true; displayZoomControls = false
        }
        webViewClient = object : WebViewClient() {
            override fun onPageStarted(view: WebView, url: String?, favicon: android.graphics.Bitmap?) {
                // The initial empty document is about:blank; only the entry document is a data URL.
                if (url?.startsWith("about:") == true) return
                failed = false
                onState(State.LOADING)
            }

            override fun onPageFinished(view: WebView, url: String?) {
                if (url?.startsWith("about:") == true) return
                if (!failed) onState(State.RENDERED)
            }

            override fun onReceivedError(view: WebView, request: WebResourceRequest, error: WebResourceError) {
                if (!request.isForMainFrame || request.url.scheme == "about") return
                failed = true
                onState(State.FAILED)
            }

            override fun onReceivedHttpError(view: WebView, request: WebResourceRequest, response: WebResourceResponse) {
                if (!request.isForMainFrame) return
                failed = true
                onState(State.FAILED)
            }

            override fun onRenderProcessGone(view: WebView, detail: RenderProcessGoneDetail): Boolean {
                failed = true
                onState(State.FAILED)
                (parent as? ViewGroup)?.removeView(this@ResultWebView)
                release()
                return true
            }

            override fun shouldInterceptRequest(view: WebView?, request: WebResourceRequest): WebResourceResponse? =
                assets.shouldInterceptRequest(request.url)

            override fun shouldOverrideUrlLoading(view: WebView?, request: WebResourceRequest): Boolean {
                val uri = request.url
                if (uri.scheme == "offdic") {
                    if (uri.host == "word" && uri.pathSegments.size == 2) {
                        val language = runCatching { Language.valueOf(uri.pathSegments[0]) }.getOrNull()
                        val id = uri.pathSegments[1].toLongOrNull()
                        if (id != null && language != null) onWord(id, language)
                    }
                    return true
                }
                // Never navigate away from the offline result; data/about documents stay in place.
                if (uri.scheme == "data" || uri.scheme == "about" || uri.scheme == "blob") return false
                return true
            }
        }
    }

    fun show(entry: Entry, dark: Boolean, scale: Float) {
        var html = ResultHtml.render(entry, dark, scale, ResultAssets.css(context))
        if (html.length > MAX_DOCUMENT) {
            // The reduced stylesheet drops the embedded fonts to stay below WebView's data URL limit.
            html = ResultHtml.render(entry, dark, scale, ResultAssets.css(context, withFonts = false))
        }
        if (html.length > MAX_DOCUMENT) { onState(State.FAILED); return }
        failed = false
        loadDataWithBaseURL(null, html, "text/html", "UTF-8", null)
    }

    fun release() {
        if (released) return
        released = true
        stopLoading(); removeAllViews(); destroy()
    }

    companion object {
        /**
         * Chromium refuses data URLs longer than 2 MB (`GURL::kMaxURLChars`) and WebView base64
         * encodes this document (+33 % plus UTF-8 growth), so the guard is set well below the raw
         * limit. The self-contained page measures ~0.66 MB, so it only triggers for unusually
         * large database rows.
         */
        const val MAX_DOCUMENT = 1_400_000
    }
}
