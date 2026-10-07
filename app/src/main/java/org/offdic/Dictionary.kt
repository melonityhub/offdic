package org.offdic

import android.content.Context
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import java.io.File
import java.io.InputStream

/** All callers run on the activity's serial IO executor, never on the UI thread. */
class Dictionary(private val context: Context) : AutoCloseable {
    private val file = context.getDatabasePath("dictionary.sqlite")
    private var connection: SQLiteDatabase? = null
    private val db: SQLiteDatabase get() = connection ?: error("Database is not open")
    var isSample = false
        private set

    fun open(): Unit = synchronized(installLock) {
        if (!file.exists()) {
            val assets = context.assets.list("databases").orEmpty()
            val name = if ("fastdic_plain.sqlite" in assets) "fastdic_plain.sqlite" else "sample.sqlite"
            context.assets.open("databases/$name").use { install(it, name == "sample.sqlite") }
        } else {
            connection = SQLiteDatabase.openDatabase(file.path, null, SQLiteDatabase.OPEN_READONLY)
            isSample = context.getSharedPreferences("database", 0).getBoolean("sample", true)
        }
    }

    fun install(input: InputStream, sample: Boolean = false): Unit = synchronized(installLock) {
        file.parentFile!!.mkdirs()
        val staging = File(file.parentFile, "dictionary.import")
        try {
            staging.outputStream().use { output -> input.copyTo(output); output.fd.sync() }
            validate(staging)
            // POSIX rename within one directory is atomic. Existing readers are closed first.
            connection?.close(); connection = null
            if (!staging.renameTo(file)) {
                connection = if (file.exists()) SQLiteDatabase.openDatabase(file.path, null, SQLiteDatabase.OPEN_READONLY) else null
                error("جایگزینی دیتابیس انجام نشد؛ دیتابیس قبلی حفظ شده است")
            }
            connection = SQLiteDatabase.openDatabase(file.path, null, SQLiteDatabase.OPEN_READONLY)
            isSample = sample
            context.getSharedPreferences("database", 0).edit().putBoolean("sample", sample).commit()
            Unit
        } finally { staging.delete() }
    }

    private fun validate(candidate: File) {
        SQLiteDatabase.openDatabase(candidate.path, null, SQLiteDatabase.OPEN_READONLY).use { check ->
            check.rawQuery("PRAGMA quick_check", null).use { require(it.moveToFirst() && it.getString(0) == "ok") { "دیتابیس سالم نیست" } }
            for (language in Language.entries) {
                val p = language.prefix
                val required = mapOf(
                    "${p}_words" to listOf("${p}_word_id", "${p}_word", "word_description_html"),
                    "${p}_details" to listOf("${p}_detail_id", "${p}_word_id", "persian_meaning", "position") +
                        if (language == Language.EN) listOf("cefr", "description_html", "most_common", "countable_uncountable", "formal_informal", "british_american") else listOf("english_meaning", "persian_phonetic"),
                    "${p}_pos" to listOf("${p}_pos_id", "${p}_detail_id", "pos"),
                    "${p}_sentences" to listOf("${p}_sentence_id", "${p}_detail_id", "english_sentence", "persian_sentence", "position"),
                    "${p}_categories" to listOf("${p}_detail_id", "category"),
                    "${p}_synonyms_antonyms" to listOf("${p}_word_id", "position") +
                        if (language == Language.EN) listOf("definitions", "synonyms", "antonyms", "pos") else listOf("synonym_antonym")
                )
                for ((table, columns) in required) check.rawQuery("SELECT ${columns.joinToString()} FROM $table LIMIT 0", null).close()
            }
            check.rawQuery("SELECT id, english_category_name, persian_category_name, is_hidden FROM category_names LIMIT 0", null).close()
            check.rawQuery("SELECT english_word_id, english_idiom_word_id, position FROM english_idioms LIMIT 0", null).close()
            for (accent in listOf("american", "british")) check.rawQuery("SELECT english_word_id, phonetic, filename FROM english_${accent}_audios LIMIT 0", null).close()
            check.rawQuery("SELECT simple_past, past_participle, infinitive, plural, present_participle, third_person_singular, comparative, superlative FROM english_words LIMIT 0", null).close()
        }
    }

    /** Local deterministic daily selection; not the original server's editorial feed. */
    fun dailyWord(day: Long = java.time.LocalDate.now().toEpochDay()): Entry? {
        val count = db.rawQuery("SELECT COUNT(*) FROM english_words w WHERE EXISTS (SELECT 1 FROM english_details d WHERE d.english_word_id=w.english_word_id)", null).use { it.moveToFirst(); it.getLong(0) }
        if (count == 0L) return null
        val offset = Math.floorMod(day, count)
        val selected = words("SELECT w.english_word_id, w.english_word FROM english_words w WHERE EXISTS (SELECT 1 FROM english_details d WHERE d.english_word_id=w.english_word_id) ORDER BY w.english_word_id LIMIT 1 OFFSET ?", arrayOf(offset.toString()), Language.EN).firstOrNull()
        return selected?.let { detail(it) }
    }

    /**
     * Prefix search with the same translation preview the original suggestion list shows:
     * `persian_meaning` for English words, `english_meaning` for Persian words.
     */
    fun search(query: String, language: Language, offset: Int = 0): List<Word> {
        val p = language.prefix
        val meaning = previewColumn(language)
        val q = query.trim().replace('ي', 'ی').replace('ك', 'ک')
        val escaped = q.replace("\\", "\\\\").replace("%", "\\%").replace("_", "\\_")
        return words("SELECT w.${p}_word_id, w.${p}_word, COALESCE((SELECT d.$meaning FROM ${p}_details d WHERE d.${p}_word_id = w.${p}_word_id ORDER BY d.position, d.${p}_detail_id LIMIT 1), '') FROM ${p}_words w WHERE w.${p}_word LIKE ? ESCAPE '\\' ORDER BY CASE WHEN w.${p}_word = ? COLLATE NOCASE THEN 0 ELSE 1 END, w.${p}_word COLLATE NOCASE, w.${p}_word_id LIMIT 60 OFFSET ?", arrayOf("$escaped%", q, offset.toString()), language)
    }

    /** Translation previews for words that come from the user store instead of a search. */
    fun previews(words: List<Word>): Map<Word, String> {
        val previews = HashMap<Word, String>(words.size)
        for ((language, group) in words.groupBy { it.language }) {
            val p = language.prefix
            val meaning = previewColumn(language)
            val found = HashMap<Long, String>()
            // Stay below SQLite's bound-parameter limit; the UI caps lists at 1000 rows.
            for (chunk in group.distinctBy { it.id }.chunked(400)) {
                val args = chunk.map { it.id.toString() }.toTypedArray()
                val marks = args.joinToString(separator = ",") { "?" }
                db.rawQuery("SELECT w.${p}_word_id, COALESCE((SELECT d.$meaning FROM ${p}_details d WHERE d.${p}_word_id = w.${p}_word_id ORDER BY d.position, d.${p}_detail_id LIMIT 1), '') FROM ${p}_words w WHERE w.${p}_word_id IN ($marks)", args).use { c ->
                    while (c.moveToNext()) found[c.getLong(0)] = c.getString(1).orEmpty()
                }
            }
            group.forEach { previews[it] = found[it.id].orEmpty() }
        }
        return previews
    }

    fun word(id: Long, language: Language): Word? {
        val p = language.prefix
        val meaning = previewColumn(language)
        return words("SELECT w.${p}_word_id, w.${p}_word, COALESCE((SELECT d.$meaning FROM ${p}_details d WHERE d.${p}_word_id = w.${p}_word_id ORDER BY d.position, d.${p}_detail_id LIMIT 1), '') FROM ${p}_words w WHERE w.${p}_word_id=?", arrayOf(id.toString()), language).firstOrNull()
    }

    private fun previewColumn(language: Language) = if (language == Language.EN) "persian_meaning" else "english_meaning"

    fun categories(): List<Category> = db.rawQuery("SELECT id, persian_category_name, english_category_name FROM category_names WHERE is_hidden=0 ORDER BY id", null).use { c ->
        buildList { while (c.moveToNext()) add(Category(c.getLong(0), c.getString(1), c.getString(2))) }
    }

    fun categoryWords(id: Long, language: Language, offset: Int): List<Word> {
        val p = language.prefix
        val meaning = previewColumn(language)
        return words("SELECT DISTINCT w.${p}_word_id, w.${p}_word, COALESCE((SELECT d.$meaning FROM ${p}_details d WHERE d.${p}_word_id = w.${p}_word_id ORDER BY d.position, d.${p}_detail_id LIMIT 1), '') FROM ${p}_words w JOIN ${p}_details d ON d.${p}_word_id=w.${p}_word_id JOIN ${p}_categories c ON c.${p}_detail_id=d.${p}_detail_id WHERE c.category=? ORDER BY w.${p}_word COLLATE NOCASE LIMIT 60 OFFSET ?", arrayOf(id.toString(), offset.toString()), language)
    }

    private fun words(sql: String, args: Array<String>, language: Language) = db.rawQuery(sql, args).use { c ->
        buildList {
            val hasPreview = c.columnCount > 2
            while (c.moveToNext()) add(Word(c.getLong(0), c.getString(1), language, if (hasPreview) c.getString(2).orEmpty() else ""))
        }
    }

    fun detail(word: Word): Entry {
        val p = word.language.prefix
        val meanings = db.rawQuery("SELECT * FROM ${p}_details WHERE ${p}_word_id=? ORDER BY position, ${p}_detail_id", arrayOf(word.id.toString())).use { c ->
            buildList {
                while (c.moveToNext()) {
                    val id = c.getLong(c.getColumnIndexOrThrow("${p}_detail_id"))
                    val pos = db.rawQuery("SELECT pos FROM ${p}_pos WHERE ${p}_detail_id=? ORDER BY ${p}_pos_id", arrayOf(id.toString())).use { pc ->
                        buildList { while (pc.moveToNext()) add(if (word.language == Language.EN) PartOfSpeech.getEnglish(pc.getInt(0)) + " · " + PartOfSpeech.findEnglishEquivalentInPersian(pc.getInt(0)) else PartOfSpeech.getPersian(pc.getInt(0))) }
                    }
                    val sentences = db.rawQuery("SELECT english_sentence, persian_sentence FROM ${p}_sentences WHERE ${p}_detail_id=? ORDER BY position, ${p}_sentence_id", arrayOf(id.toString())).use { sc ->
                        buildList { while (sc.moveToNext()) add(listOfNotNull(sc.getString(0), sc.getString(1)).joinToString("\n")) }
                    }
                    add(Meaning(if (word.language == Language.EN) c.text("persian_meaning") else c.text("english_meaning") + "\n" + c.text("persian_meaning"), pos.filter { it.isNotBlank() }, sentences,
                        c.text("description_html"), c.text("cefr"), c.text("persian_phonetic"),
                        buildList {
                            when (c.text("countable_uncountable")) { "0" -> add("uncountable"); "1" -> add("countable"); "2" -> { add("countable"); add("uncountable") } }
                            when (c.text("formal_informal")) { "0" -> add("informal"); "1" -> add("formal") }
                            when (c.text("british_american")) { "0" -> add("British"); "1" -> add("American") }
                            if (c.text("most_common") == "1") add("رایج")
                        }))
                }
            }
        }
        val sections = mutableListOf<Pair<String, String>>()
        if (word.language == Language.EN) {
            for ((accent, label) in listOf("american" to "آمریکایی", "british" to "بریتانیایی")) {
                db.rawQuery("SELECT phonetic FROM english_${accent}_audios WHERE english_word_id=?", arrayOf(word.id.toString())).use { c ->
                    val lines = buildList { while (c.moveToNext()) c.getString(0)?.let { add(it) } }
                    if (lines.isNotEmpty()) sections.add("آوانگاری $label" to lines.joinToString("\n"))
                }
            }
            db.rawQuery("SELECT definitions, synonyms, antonyms, pos FROM english_synonyms_antonyms WHERE english_word_id=? ORDER BY position", arrayOf(word.id.toString())).use { c ->
                while (c.moveToNext()) sections.add("مترادف و متضاد" to listOf(c.text("pos"), c.text("definitions"), "Synonyms: " + c.text("synonyms"), "Antonyms: " + c.text("antonyms")).filter { it.isNotBlank() }.joinToString("\n"))
            }
            val idioms = words("SELECT w.english_word_id, w.english_word FROM english_idioms i JOIN english_words w ON w.english_word_id=i.english_idiom_word_id WHERE i.english_word_id=? ORDER BY i.position", arrayOf(word.id.toString()), Language.EN)
            db.rawQuery("SELECT * FROM english_words WHERE english_word_id=?", arrayOf(word.id.toString())).use { c ->
                if (c.moveToFirst()) for ((column, label) in listOf("simple_past" to "گذشته", "past_participle" to "قسمت سوم", "infinitive" to "مصدر", "plural" to "جمع", "present_participle" to "وجه وصفی حال", "third_person_singular" to "سوم‌شخص", "comparative" to "تفضیلی", "superlative" to "عالی")) {
                    val id = c.text(column).toLongOrNull() ?: continue
                    this.word(id, Language.EN)?.let { sections.add(label to it.text) }
                }
            }
            return Entry(word, meanings, sections, idioms, description(word))
        }
        db.rawQuery("SELECT synonym_antonym FROM persian_synonyms_antonyms WHERE persian_word_id=? ORDER BY position", arrayOf(word.id.toString())).use { c -> while (c.moveToNext()) c.getString(0)?.let { sections.add("مترادف و متضاد" to it) } }
        return Entry(word, meanings, sections, emptyList(), description(word))
    }

    private fun description(word: Word): String = db.rawQuery("SELECT word_description_html FROM ${word.language.prefix}_words WHERE ${word.language.prefix}_word_id=?", arrayOf(word.id.toString())).use { if (it.moveToFirst()) it.getString(0).orEmpty() else "" }
    companion object { private val installLock = Any() }
    override fun close() { connection?.close(); connection = null }
}

private fun Cursor.text(column: String): String = getColumnIndex(column).let { if (it < 0 || isNull(it)) "" else getString(it) }
enum class Language(val prefix: String) { EN("english"), FA("persian"); companion object { fun of(text: String) = if (text.any { it in '\u0600'..'\u06ff' }) FA else EN } }
data class Word(val id: Long, val text: String, val language: Language, val preview: String = "")
data class Meaning(val text: String, val pos: List<String>, val sentences: List<String>, val html: String, val cefr: String, val phonetic: String, val labels: List<String>)
data class Entry(val word: Word, val meanings: List<Meaning>, val sections: List<Pair<String, String>>, val idioms: List<Word>, val html: String)
data class Category(val id: Long, val persian: String, val english: String)
