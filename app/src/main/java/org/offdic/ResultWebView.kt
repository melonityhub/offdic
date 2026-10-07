package org.offdic

import android.content.Context
import android.webkit.*
import androidx.webkit.WebViewAssetLoader
import java.io.ByteArrayInputStream

class ResultWebView(context: Context, private val onWord: (Long, Language) -> Unit) : WebView(context) {
    private var released = false
    init {
        val assets = WebViewAssetLoader.Builder().addPathHandler("/assets/", WebViewAssetLoader.AssetsPathHandler(context.applicationContext)).build()
        settings.apply {
            javaScriptEnabled = false; allowFileAccess = false; allowContentAccess = false
            blockNetworkLoads = true; domStorageEnabled = false
            mixedContentMode = WebSettings.MIXED_CONTENT_NEVER_ALLOW
            builtInZoomControls = true; displayZoomControls = false
        }
        webViewClient = object : WebViewClient() {
            override fun onRenderProcessGone(view: WebView, detail: RenderProcessGoneDetail): Boolean {
                (parent as? android.view.ViewGroup)?.removeView(this@ResultWebView)
                release()
                android.widget.Toast.makeText(context, "نمایش نتیجه متوقف شد؛ دوباره واژه را باز کنید", android.widget.Toast.LENGTH_LONG).show()
                return true
            }
            override fun shouldInterceptRequest(view: WebView?, request: WebResourceRequest): WebResourceResponse =
                assets.shouldInterceptRequest(request.url) ?: WebResourceResponse("text/plain", "UTF-8", 403, "Blocked", emptyMap(), ByteArrayInputStream(ByteArray(0)))
            override fun shouldOverrideUrlLoading(view: WebView?, request: WebResourceRequest): Boolean {
                val uri = request.url
                if (uri.scheme == "offdic" && uri.host == "word" && uri.pathSegments.size == 2) {
                    val language = runCatching { Language.valueOf(uri.pathSegments[0]) }.getOrNull()
                    val id = uri.pathSegments[1].toLongOrNull()
                    if (id != null && language != null) onWord(id, language)
                }
                return true
            }
        }
    }
    fun show(entry: Entry, dark: Boolean, scale: Float) {
        loadDataWithBaseURL("https://appassets.androidplatform.net/", ResultHtml.render(entry, dark, scale), "text/html", "UTF-8", null)
    }
    fun release() {
        if (released) return
        released = true
        stopLoading(); removeAllViews(); destroy()
    }
}
