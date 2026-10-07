package org.offdic

import android.view.ViewGroup
import androidx.test.core.app.ActivityScenario
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

/**
 * End-to-end check of the word page. It must render the entry instead of WebView's
 * "webpage not available" screen (`net::ERR_HTTP_RESPONSE_CODE_FAILURE`).
 */
@RunWith(AndroidJUnit4::class)
class ResultPageTest {
    private val entry = Entry(
        Word(33583, "a", Language.EN),
        listOf(Meaning("حرف اول الفبای انگلیسی", listOf("noun"), listOf("a book"), "", "A1", "", listOf("countable"))),
        listOf("مترادف و متضاد" to "an"),
        emptyList(),
        "<b>حرف تعریف</b>"
    )

    @Test fun wordPageRendersTheEntryInsteadOfAnErrorPage() {
        val latch = CountDownLatch(1)
        var state: ResultWebView.State? = null
        lateinit var web: ResultWebView
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            scenario.onActivity { activity ->
                web = ResultWebView(activity, { _, _ -> }, { settled ->
                    state = settled
                    if (settled != ResultWebView.State.LOADING) latch.countDown()
                })
                activity.addContentView(web, ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 600))
                web.show(entry, false, 1f)
            }
            assertTrue("صفحهٔ واژه در ۳۰ ثانیه بارگذاری نشد", latch.await(30, TimeUnit.SECONDS))
            assertEquals("WebView صفحهٔ خطا نشان داد", ResultWebView.State.RENDERED, state)
            scenario.onActivity {
                // WebView exposes the document title without JavaScript; an error page has none of it.
                web.title?.let { assertEquals("a", it) }
                assertTrue("محتوای صفحه خالی است", web.contentHeight > 0)
                web.release()
            }
        }
    }

    @Test fun inlinedStylesheetLeavesNoExternalReference() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        val css = ResultAssets.css(context)
        assertFalse(css.contains("https://appassets.androidplatform.net"))
        assertFalse(css.contains("http://"))
        assertTrue(css.contains("data:font/ttf;base64,"))
        assertTrue(css.contains("data:image/png;base64,"))
        val html = ResultHtml.render(entry, true, 1f, css)
        assertFalse(html.contains("appassets.androidplatform.net"))
        assertTrue(html.contains("data-theme='dark'"))
        assertTrue(html.length < ResultWebView.MAX_DOCUMENT)
        val reduced = ResultHtml.render(entry, false, 1f, ResultAssets.css(context, withFonts = false))
        assertTrue(reduced.length < html.length)
    }
}
