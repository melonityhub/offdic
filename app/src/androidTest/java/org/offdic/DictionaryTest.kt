package org.offdic

import android.content.Context
import android.content.ContextWrapper
import androidx.test.platform.app.InstrumentationRegistry
import androidx.test.ext.junit.runners.AndroidJUnit4
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import java.io.ByteArrayInputStream
import java.io.File

@RunWith(AndroidJUnit4::class)
class DictionaryTest {
    private lateinit var folder: File
    private lateinit var dictionary: Dictionary
    private lateinit var users: UserStore
    @Before fun setUp() {
        val target = InstrumentationRegistry.getInstrumentation().targetContext
        folder = File(target.cacheDir, "test-${System.nanoTime()}").apply { mkdirs() }
        val isolated = object : ContextWrapper(target) {
            override fun getDatabasePath(name: String) = File(folder, name)
            override fun getSharedPreferences(name: String, mode: Int) = super.getSharedPreferences("test-$name", mode)
            override fun openOrCreateDatabase(name: String, mode: Int, factory: android.database.sqlite.SQLiteDatabase.CursorFactory?) = android.database.sqlite.SQLiteDatabase.openOrCreateDatabase(getDatabasePath(name), factory)
            override fun openOrCreateDatabase(name: String, mode: Int, factory: android.database.sqlite.SQLiteDatabase.CursorFactory?, errorHandler: android.database.DatabaseErrorHandler?) = android.database.sqlite.SQLiteDatabase.openOrCreateDatabase(getDatabasePath(name).path, factory, errorHandler)
        }
        dictionary = Dictionary(isolated)
        users = UserStore(isolated)
        dictionary.open()
    }
    @After fun tearDown() { dictionary.close(); users.close(); folder.deleteRecursively() }
    @Test fun bothLanguagesAndEveryDetailQuery() {
        for (language in Language.entries) {
            val words = dictionary.search("", language)
            assertTrue(words.isNotEmpty())
            words.forEach { word ->
                assertEquals(word, dictionary.word(word.id, language))
                assertEquals(word, dictionary.detail(word).word)
            }
        }
        dictionary.categories().forEach { dictionary.categoryWords(it.id, Language.EN, 0) }
    }
    @Test fun suggestionRowsCarryTheTranslationPreview() {
        for (language in Language.entries) {
            val words = dictionary.search("", language)
            assertTrue(language.name, words.any { it.preview.isNotBlank() })
            // The same preview must come back for words read from the user store (favorites, history).
            val batch = dictionary.previews(words + dictionary.search("", language, 60))
            words.forEach { assertEquals(it.toString(), it.preview, batch[it].orEmpty()) }
            // Stored words that no longer exist in the dictionary must not break the list.
            val missing = Word(999_999_999L, "واژهٔ حذف‌شده", Language.EN)
            assertEquals("", dictionary.previews(listOf(missing))[missing].orEmpty())
        }
    }

    @Test fun invalidImportPreservesExistingDatabase() {
        val before = dictionary.search("", Language.EN)
        assertTrue(runCatching { dictionary.install(ByteArrayInputStream("not sqlite".toByteArray())) }.isFailure)
        assertEquals(before, dictionary.search("", Language.EN))
    }
    @Test fun favoriteSurvivesHistoryClearAndReopen() {
        val word = dictionary.search("", Language.EN).first()
        users.visit(word)
        assertTrue(users.toggle(word))
        users.clearHistory()
        assertTrue(users.list(false).isEmpty())
        assertEquals(listOf(word), users.list(true))
        assertTrue(users.favorite(word))
        dictionary.close(); dictionary.open()
        assertTrue(users.favorite(word))
        assertFalse(users.toggle(word))
    }
    @Test fun escapedSearchAndPagination() {
        assertTrue(dictionary.search("' OR 1=1 --", Language.EN).isEmpty())
        assertTrue(dictionary.search("%", Language.EN).all { it.text.startsWith("%") })
        assertTrue(dictionary.search("_", Language.EN).all { it.text.startsWith("_") })
        val first = dictionary.search("", Language.EN)
        val second = dictionary.search("", Language.EN, 60)
        assertTrue(first.map { it.id }.intersect(second.map { it.id }.toSet()).isEmpty())
    }
    @Test fun posCodesAreLanguageSpecific() {
        assertEquals("plural", PartOfSpeech.getEnglish(2))
        assertEquals("صفت", PartOfSpeech.getPersian(2))
        assertEquals("", PartOfSpeech.getEnglish(0))
        assertEquals("", PartOfSpeech.getEnglish(100))
    }
}
