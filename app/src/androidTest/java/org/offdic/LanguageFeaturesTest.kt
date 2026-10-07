package org.offdic

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.google.android.gms.tasks.Tasks
import com.google.mlkit.nl.translate.TranslateLanguage
import com.google.mlkit.vision.common.InputImage
import com.google.mlkit.vision.text.TextRecognition
import com.google.mlkit.vision.text.latin.TextRecognizerOptions
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import java.util.concurrent.TimeUnit

@RunWith(AndroidJUnit4::class)
class LanguageFeaturesTest {
    @Test fun endpointRejectsInsecureOrCredentialBearingUrls() {
        for (endpoint in listOf("http://example.com/ai", "file:///secret", "https://user:pass@example.com/ai", "https://example.com/ai?key=secret", "https://example.com/ai#fragment")) {
            assertTrue(endpoint, runCatching { AiClient.validateEndpoint(endpoint) }.isFailure)
        }
        assertEquals("example.com", AiClient.validateEndpoint("https://example.com/ai").host)
    }
    @Test fun escapedResultCannotInjectHtmlOrScript() {
        val attack = "<script>alert('x')</script>"
        val entry = Entry(Word(1, attack, Language.EN), emptyList(), listOf("x" to "<img src=https://evil.example>"), emptyList(), attack)
        val html = ResultHtml.render(entry, true, 1f)
        assertFalse(html.contains("<script>"))
        assertFalse(html.contains("<img src="))
        assertTrue(html.contains("&lt;script&gt;"))
        assertTrue(html.contains("Content-Security-Policy"))
        assertTrue(html.contains("data-theme='dark'"))
    }
    @Test fun translationLanguagesAreSupported() {
        assertNotNull(TranslateLanguage.fromLanguageTag("fa"))
        assertNotNull(TranslateLanguage.fromLanguageTag("en"))
    }
    @Test fun bundledOcrRecognizesLatinText() {
        val bitmap = Bitmap.createBitmap(1000, 240, Bitmap.Config.ARGB_8888)
        Canvas(bitmap).apply {
            drawColor(Color.WHITE)
            drawText("Hello dictionary", 30f, 140f, Paint(Paint.ANTI_ALIAS_FLAG).apply { color = Color.BLACK; textSize = 90f })
        }
        val recognizer = TextRecognition.getClient(TextRecognizerOptions.DEFAULT_OPTIONS)
        try {
            val result = Tasks.await(recognizer.process(InputImage.fromBitmap(bitmap, 0)), 60, TimeUnit.SECONDS)
            assertTrue(result.text, result.text.contains("Hello", ignoreCase = true))
        } finally { recognizer.close(); bitmap.recycle() }
    }
}
