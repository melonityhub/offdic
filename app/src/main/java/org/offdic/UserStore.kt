package org.offdic

import android.content.Context
import android.content.SharedPreferences
import org.json.JSONArray
import org.json.JSONObject

/**
 * Local favourites and search history. Both lists are plain JSON in app-private
 * SharedPreferences: there is no account, no cloud sync and no third-party SDK, so a favourite
 * simply survives process death and app restart. History is capped and de-duplicated with the
 * most recent visit first; clearing history never touches favourites.
 */
class UserStore(context: Context) : AutoCloseable {
    private val prefs: SharedPreferences =
        context.getSharedPreferences("user_store", Context.MODE_PRIVATE)

    /** Record a visit, moving the word to the front of the history and dropping older copies. */
    fun visit(word: Word) {
        val history = loadHistory().toMutableList()
        history.removeAll { it.sameAs(word) }
        history.add(0, word)
        saveHistory(history.take(HISTORY_LIMIT))
    }

    fun favorite(word: Word): Boolean = loadFavorites().any { it.sameAs(word) }

    /** Toggle favourite state and return the new state (true = now a favourite). */
    fun toggle(word: Word): Boolean {
        val favorites = loadFavorites().toMutableList()
        val existing = favorites.firstOrNull { it.sameAs(word) }
        return if (existing != null) {
            favorites.remove(existing)
            saveFavorites(favorites)
            false
        } else {
            favorites.add(0, word)
            saveFavorites(favorites)
            true
        }
    }

    /** @param favorites true for the favourites list, false for the history list. */
    fun list(favorites: Boolean): List<Word> = if (favorites) loadFavorites() else loadHistory()

    fun clearHistory() {
        prefs.edit().remove(KEY_HISTORY).apply()
    }

    override fun close() {
        // Preferences live in the process; nothing to release.
    }

    private fun loadFavorites(): List<Word> = decode(prefs.getString(KEY_FAVORITES, null))
    private fun loadHistory(): List<Word> = decode(prefs.getString(KEY_HISTORY, null))
    private fun saveFavorites(list: List<Word>) {
        prefs.edit().putString(KEY_FAVORITES, encode(list)).apply()
    }

    private fun saveHistory(list: List<Word>) {
        prefs.edit().putString(KEY_HISTORY, encode(list)).apply()
    }

    private fun encode(list: List<Word>): String {
        val array = JSONArray()
        for (word in list) {
            array.put(
                JSONObject()
                    .put("id", word.id)
                    .put("lang", word.language.name)
                    .put("text", word.text)
            )
        }
        return array.toString()
    }

    private fun decode(raw: String?): List<Word> {
        if (raw.isNullOrBlank()) return emptyList()
        return runCatching {
            val array = JSONArray(raw)
            (0 until array.length()).map { index ->
                val item = array.getJSONObject(index)
                Word(
                    item.getLong("id"),
                    item.getString("text"),
                    Language.valueOf(item.getString("lang"))
                )
            }
        }.getOrDefault(emptyList())
    }

    private fun Word.sameAs(other: Word) = id == other.id && language == other.language

    companion object {
        private const val KEY_FAVORITES = "favorites"
        private const val KEY_HISTORY = "history"
        private const val HISTORY_LIMIT = 500
    }
}
