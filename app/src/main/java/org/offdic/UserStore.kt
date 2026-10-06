package org.offdic

import android.content.ContentValues
import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper

/** Separate from the replaceable dictionary: imports never delete user data. */
class UserStore(context: Context) : SQLiteOpenHelper(context, "user.sqlite", null, 1) {
    override fun onCreate(db: SQLiteDatabase) {
        db.execSQL("CREATE TABLE words (id INTEGER NOT NULL, language TEXT NOT NULL, word TEXT NOT NULL, favorite INTEGER NOT NULL DEFAULT 0, visited INTEGER NOT NULL, PRIMARY KEY(id,language))")
    }
    override fun onUpgrade(db: SQLiteDatabase, oldVersion: Int, newVersion: Int) = Unit
    fun visit(word: Word) {
        writableDatabase.execSQL("INSERT OR IGNORE INTO words(id,language,word,visited) VALUES(?,?,?,?)", arrayOf(word.id, word.language.name, word.text, System.currentTimeMillis()))
        writableDatabase.update("words", ContentValues().apply { put("visited", System.currentTimeMillis()); put("word", word.text) }, "id=? AND language=?", arrayOf(word.id.toString(), word.language.name))
    }
    fun favorite(word: Word): Boolean = readableDatabase.rawQuery("SELECT favorite FROM words WHERE id=? AND language=?", arrayOf(word.id.toString(), word.language.name)).use { it.moveToFirst() && it.getInt(0) == 1 }
    fun toggle(word: Word): Boolean {
        visit(word)
        val next = !favorite(word)
        writableDatabase.update("words", ContentValues().apply { put("favorite", if (next) 1 else 0) }, "id=? AND language=?", arrayOf(word.id.toString(), word.language.name))
        return next
    }
    fun list(favorites: Boolean): List<Word> = readableDatabase.rawQuery("SELECT id,word,language FROM words WHERE ${if (favorites) "favorite=1" else "visited>0"} ORDER BY visited DESC LIMIT 1000", null).use { c ->
        buildList { while (c.moveToNext()) add(Word(c.getLong(0), c.getString(1), Language.valueOf(c.getString(2)))) }
    }
    fun clearHistory() {
        writableDatabase.execSQL("DELETE FROM words WHERE favorite=0")
        writableDatabase.execSQL("UPDATE words SET visited=0")
    }
}
