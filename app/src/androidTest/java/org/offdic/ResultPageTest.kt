package org.offdic

import android.view.ViewGroup
import androidx.test.core.app.ActivityScenario
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import java.util.Collections

/**
 * End-to-end check of the word page. It must render the entry instead of WebView's
 * "webpage not available" screen (`net::ERR_HTTP_RESPONSE_CODE_FAILURE`).
 */
@RunWith(AndroidJUnit4::class)
class ResultPageTest {
    private val word = "a"
    private val meaning = "حرف اول الفبای انگلیسی"
    private val entry = Entry(
        Word(33583, word, Language.EN),
        listOf(Meaning(meaning, listOf("noun"), listOf("a book"), "", "A1", "", listOf("countable"))),
        listOf("مترادف و متضاد" to "an"),
        emptyList(),
        "<b>حرف تعریف</b>"
    )

    @Test fun wordPageRendersTheEntryInsteadOfAnErrorPage() {
        val states = Collections.synchronizedList(mutableListOf<ResultWebView.State>())
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            lateinit var web: ResultWebView
            scenario.onActivity { activity ->
                web = ResultWebView(activity, { _, _ -> }) { settled -> states.add(settled) }
                activity.addContentView(web, ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 600))
                web.show(entry, false, 1f)
            }
            // The document is a data URL, so it can finish loading before the freshly added view has
            // been laid out. Poll instead of sampling once: the title comes from the parsed entry
            // document (WebView's error page has none) and the height proves the page was really drawn.
            var title: String? = null
            var height = 0
            var url: String? = null
            val deadline = System.currentTimeMillis() + 20_000
            while (System.currentTimeMillis() < deadline) {
                scenario.onActivity {
                    title = web.title
                    height = web.contentHeight
                    url = web.url
                }
                if (title == word && height > 0) break
                Thread.sleep(250)
            }
            assertFalse("WebView صفحهٔ خطا نشان داد (وضعیت‌ها: $states)", states.contains(ResultWebView.State.FAILED))
            assertEquals("سند نتیجه بارگذاری نشد (نشانی: $url، وضعیت‌ها: $states)", word, title)
            assertTrue("محتوای صفحه خالی است (نشانی: $url، عنوان: $title)", height > 0)
            scenario.onActivity { web.release() }
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
