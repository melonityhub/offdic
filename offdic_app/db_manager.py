#!/usr/bin/env python3
"""
offdic - Database Manager & Utilities (separate from PyQt5 for testing)
"""

import os
import re
import sqlite3

# ============================================================================
# Constants & Mappings
# ============================================================================

PERSIAN_LETTERS_REGEX = re.compile(r'^[آبپتثجچحخدذرزژسشصضطظعغفقکكگلمنواأهئيی؟]+$')
PERSIAN_NUMBERS_REGEX = re.compile(r'^[۰۱۲۳۴۵۶۷۸۹]+$')

PE_CHAR_TO_NUMBER = {
    'ا': '10', 'آ': '10', 'ع': '10',
    'ب': '13', 'پ': '15', 'ت': '17', 'ط': '17',
    'ث': '19', 'س': '19', 'ص': '19',
    'ج': '20', 'چ': '23',
    'ح': '25', 'ه': '25', 'خ': '27',
    'د': '29',
    'ذ': '40', 'ز': '40', 'ض': '40', 'ظ': '40',
    'ر': '43', 'ژ': '45',
    'ش': '47',
    'غ': '49', 'ق': '49',
    'ف': '60',
    'ک': '63', 'گ': '65',
    'ل': '67',
    'م': '69',
    'ن': '80',
    'و': '83',
    'ی': '85', 'ئ': '85',
    '.': '87', '-': '87', '!': '87', '؟': '87', ',': '87',
    '(': '87', ')': '87',
    ' ': '89',
}

ENGLISH_POS = {
    1: 'noun', 2: 'plural', 3: 'noun phrase', 4: 'verb - use participle',
    5: 'verb - transitive', 6: 'verb - intransitive', 7: 'adjective',
    8: 'adverb', 9: 'conjunction', 10: 'preposition',
    11: 'interjection', 12: 'pronoun', 13: 'definite article',
    14: 'indefinite article', 15: 'nominative', 16: 'prefix',
    17: 'suffix', 18: 'idiom', 19: 'collocation', 20: 'phrasal verb',
    21: 'auxiliary verb', 22: 'determiner', 23: 'predeterminer',
    24: 'abbreviation', 25: 'slang', 26: 'idiomatic phrase',
    27: 'acronym', 28: 'symbol', 29: 'verb phrase', 30: 'phrase',
    31: 'singular', 32: 'exclamation', 33: 'contraction', 34: 'proverb',
}

PERSIAN_POS = {
    1: 'اسم', 2: 'صفت', 3: 'قید', 4: 'فعل لازم', 5: 'فعل متعدی',
    6: 'پسوند', 7: 'سازه‌ی پیوندی', 8: 'اسم خاص', 9: 'اسم مشتق',
    10: 'فعل مشتق', 11: 'نام آوا', 12: 'حرف اضافه', 13: 'پیشوند',
    14: 'اسم عام', 15: 'شبه‌جمله', 16: 'ضمیر', 17: 'فعل پیشوندی',
    18: 'فعل مرکب', 19: 'صفت مرکب اتباعی', 20: 'حرف ندا',
    21: 'اسم جمع', 22: 'حرف ربط', 23: 'صوت', 24: 'مخفف',
    25: 'سرواژه', 26: 'نماد', 27: 'جمله', 28: 'ضرب‌المثل',
    29: 'اصطلاح', 30: 'عبارت', 31: 'فعل کمکی',
}

ENGLISH_POS_FA = {
    1: 'اسم', 2: 'جمع', 3: 'عبارت اسمی', 4: 'صفت فعلی',
    5: 'فعل متعدی', 6: 'فعل لازم', 7: 'صفت', 8: 'قید',
    9: 'حرف ربط', 10: 'حرف اضافه', 11: 'صوت', 12: 'ضمیر',
    13: 'حرف معرفه، حرف تعریف', 14: 'حرف نکره', 15: 'نهاد',
    16: 'پیشوند', 17: 'پسوند', 18: 'اصطلاح', 19: 'هم‌نشین',
    20: 'فعل عبارتی', 21: 'فعل کمکی', 22: 'معرفه‌ی اسم',
    23: 'پیش‌معرفه', 24: 'مخفف', 25: 'عامیانه',
    26: 'عبارت اصطلاحی', 27: 'سرواژه', 28: 'نماد',
    29: 'عبارت فعلی', 30: 'عبارت', 31: 'اسم مفرد',
    32: 'حرف ندا', 33: 'شکل اختصار', 34: 'ضرب‌المثل',
}

CATEGORIES = {
    1: 'گیاه‌شناسی', 2: 'جانورشناسی', 3: 'شیمی', 4: 'پزشکی',
    5: 'زیست‌شناسی', 6: 'کالبدشناسی', 7: 'حقوق', 8: 'موسیقی',
    9: 'فیزیک', 10: 'نجوم', 11: 'ریاضی', 12: 'داروسازی',
    13: 'معماری', 14: 'مکانیک', 15: 'کامپیوتر', 16: 'برق',
    17: 'دستور زبان', 18: 'غذا و آشپزی', 19: 'حشره‌شناسی',
    20: 'زمین‌شناسی', 21: 'ورزش', 22: 'روان‌شناسی',
    23: 'روان‌پزشکی', 24: 'آب و هوا', 25: 'هتل', 26: 'سفر',
    27: 'زبان‌شناسی', 28: 'رنگ', 29: 'ادبی', 30: 'ناپسند',
    31: 'اقتصاد', 32: 'تکنولوژی', 33: 'پوشاک', 34: 'عامیانه',
    35: 'کودکانه', 36: 'قدیمی', 37: 'سینما و تئاتر', 38: 'کشور',
    39: 'جغرافیا', 40: 'مجازی', 41: 'هنر', 42: 'آرایش و پیرایش',
    43: 'تقویم', 44: 'سیاست', 45: 'میوه', 46: 'هندسه',
    47: 'دین', 48: 'کسب‌وکار', 49: 'نام تجاری', 50: 'آمیزواج',
    51: 'لاتین', 52: 'ادبیات', 53: 'هوش مصنوعی', 54: 'تاریخ',
    55: 'سلامت روان', 56: 'جامعه‌شناسی', 57: 'عنصر شیمیایی',
}

CEFR_LABELS = {
    'A1': 'A1 (مقدماتی)', 'A2': 'A2 (پایه)',
    'B1': 'B1 (متوسط)', 'B2': 'B2 (فراتر از متوسط)',
    'C1': 'C1 (پیشرفته)', 'C2': 'C2 (تسلط)',
}

FORMAL_INFORMAL = {0: 'غیررسمی', 1: 'رسمی'}
BRITISH_AMERICAN = {0: 'بریتانیایی', 1: 'آمریکایی'}
COUNTABLE_UNCOUNTABLE = {0: 'غقابل شمارش', 1: 'قابل شمارش'}

IRREGULAR_PAST_PARTICIPLES = {
    "rung", "let", "hidden", "stuck", "slept", "swept", "wound", "gotten",
    "bought", "won", "clung", "hit", "knelt", "grown", "run", "meant",
    "fallen", "been", "dug", "broken", "slain", "hung", "knit", "forgotten",
    "flown", "stunk", "cost", "shrunk", "forbidden", "fit", "told", "paid",
    "caught", "swum", "borne", "upset", "shut", "frozen", "taught", "shown",
    "had", "risen", "burst", "spread", "saw", "built", "brought", "sped",
    "done", "left", "struck", "spent", "drunk", "lost", "seen", "woven",
    "wept", "lain", "fled", "felt", "written", "known", "sought", "drawn",
    "worn", "lit", "blest", "sent", "thought", "quit", "sold", "hurt",
    "put", "found", "ridden", "understood", "given", "led", "made", "begun",
    "eaten", "crept", "wrung", "ground", "driven", "chosen", "sunk",
    "spit", "shot", "spoken", "lent", "read", "stolen", "torn", "blessed",
    "said", "bent", "bet", "shaven", "shorn", "sworn", "beaten", "met",
    "flung", "cut", "stung", "bitten", "come", "stood", "sprung", "kept",
    "split", "spun", "fought", "dealt", "blown", "fed", "become", "gone",
    "sung", "set", "burnt", "forgiven", "heard", "held", "laid", "sewn",
    "shaken", "thrown", "woken", "slid", "swung", "taken", "withdrawn",
    "forgone", "leapt", "leaped", "proven", "strewn", "undergone", "shone",
    "snuck", "spilt", "striven", "thriven", "dived", "bled", "awoken",
    "arisen",
}


# ============================================================================
# Utility Functions
# ============================================================================

def is_persian_char(c):
    s = c
    return bool(PERSIAN_LETTERS_REGEX.match(s)) or bool(PERSIAN_NUMBERS_REGEX.match(s))


def detect_language(text):
    if not text or not text.strip():
        return 'english'
    persian_count = 0
    other_count = 0
    for ch in text:
        if ch.isalpha() or ch.isdigit():
            if is_persian_char(ch):
                persian_count += 1
            else:
                other_count += 1
    if persian_count >= other_count:
        return 'persian'
    return 'english'


def pe_character_to_number(word):
    result = []
    for ch in word:
        if ch in PE_CHAR_TO_NUMBER:
            result.append(PE_CHAR_TO_NUMBER[ch])
        else:
            result.append(ch)
    return ''.join(result)


def get_pos_label(pos_id, lang='english'):
    if lang == 'english':
        return ENGLISH_POS_FA.get(pos_id, ENGLISH_POS.get(pos_id, ''))
    else:
        return PERSIAN_POS.get(pos_id, '')


def get_category_name(cat_id):
    return CATEGORIES.get(cat_id, '')


# ============================================================================
# Database Manager
# ============================================================================

class DatabaseManager:
    def __init__(self, db_path):
        self.db_path = db_path
        self.conn = None
        self._connect()

    def _connect(self):
        if os.path.exists(self.db_path):
            self.conn = sqlite3.connect(self.db_path, check_same_thread=False)
            self.conn.row_factory = sqlite3.Row
        else:
            print(f"Database not found at: {self.db_path}")

    def _execute(self, query, args=None):
        if self.conn is None:
            return None
        try:
            cursor = self.conn.cursor()
            if args:
                cursor.execute(query, args)
            else:
                cursor.execute(query)
            return cursor
        except Exception as e:
            print(f"DB Error: {e}")
            return None

    def search_words(self, word, limit=50):
        if not word or not word.strip():
            return []
        word = word.strip()
        lang = detect_language(word)
        results = []

        if lang == 'english':
            word_lower = word.lower().strip()
            query = """
                SELECT w.english_word AS word, w.english_word_id as word_id,
                       w.english_word_id_parent as word_id_parent
                FROM english_words w
                WHERE w.english_word GLOB ?
                ORDER BY w.english_word
                LIMIT ?
            """
            cursor = self._execute(query, (word_lower + '*', str(limit)))
            if cursor:
                for row in cursor.fetchall():
                    results.append({
                        'word': row['word'],
                        'word_id': row['word_id'],
                        'word_id_parent': row['word_id_parent'],
                        'lang': 'english'
                    })
        else:
            word_num = pe_character_to_number(word.strip())
            query = """
                SELECT w.persian_word AS word, w.persian_word_id as word_id,
                       w.persian_word_id_parent as word_id_parent
                FROM persian_words w
                WHERE w.word_in_number GLOB ?
                ORDER BY length(w.word_in_number)
                LIMIT ?
            """
            cursor = self._execute(query, (word_num + '*', str(limit)))
            if cursor:
                for row in cursor.fetchall():
                    results.append({
                        'word': row['word'],
                        'word_id': row['word_id'],
                        'word_id_parent': row['word_id_parent'],
                        'lang': 'persian'
                    })

        return results

    def get_word_detail_by_word(self, word):
        if not word or not word.strip():
            return None
        word = word.strip()
        lang = detect_language(word)

        if lang == 'english':
            return self._get_english_details_by_word(word.lower().strip())
        else:
            return self._get_persian_details_by_word(word.strip())

    def get_english_word_details(self, word_id):
        query = """
            SELECT w.english_word as word, w.english_word_id as word_id,
                   w.simple_past, w.past_participle, w.infinitive,
                   w.word_description_html,
                   d.english_detail_id,
                   COALESCE(d.persian_meaning, '') as pe_meaning,
                   d.countable_uncountable, d.formal_informal,
                   d.british_american, d.cefr,
                   w.third_person_singular, w.present_participle,
                   w.plural, w.comparative, w.superlative,
                   d.has_image, d.most_common
            FROM english_words w
            LEFT JOIN english_details d ON w.english_word_id = d.english_word_id
            WHERE w.english_word_id = ?
            ORDER BY d.position, d.english_detail_id
        """
        cursor = self._execute(query, (str(word_id),))
        if not cursor:
            return None
        return self._parse_english_results(cursor)

    def get_persian_word_details(self, word_id):
        query = """
            SELECT w.persian_word, w.persian_word_id,
                   w.word_description_html,
                   d.english_meaning,
                   COALESCE(d.persian_phonetic, '') as persian_phonetic,
                   COALESCE(d.persian_meaning, '') as persian_meaning,
                   d.persian_detail_id, d.has_image
            FROM persian_words w
            LEFT JOIN persian_details d ON w.persian_word_id = d.persian_word_id
            WHERE w.persian_word_id = ?
            ORDER BY d.position, d.persian_detail_id
        """
        cursor = self._execute(query, (str(word_id),))
        if not cursor:
            return None
        return self._parse_persian_results(cursor)

    def _get_english_details_by_word(self, word):
        query = """
            SELECT w.english_word as word, w.english_word_id as word_id,
                   w.simple_past, w.past_participle, w.infinitive,
                   w.word_description_html,
                   d.english_detail_id,
                   COALESCE(d.persian_meaning, '') as pe_meaning,
                   d.countable_uncountable, d.formal_informal,
                   d.british_american, d.cefr,
                   w.third_person_singular, w.present_participle,
                   w.plural, w.comparative, w.superlative,
                   d.has_image, d.most_common
            FROM english_words w
            LEFT JOIN english_details d ON w.english_word_id = d.english_word_id
            WHERE w.english_word = ?
            ORDER BY d.position, d.english_detail_id
        """
        cursor = self._execute(query, (word,))
        if not cursor:
            return None
        result = self._parse_english_results(cursor)
        if result:
            result['lang'] = 'english'
        return result

    def _get_persian_details_by_word(self, word):
        query = """
            SELECT w.persian_word, w.persian_word_id,
                   w.word_description_html,
                   d.english_meaning,
                   COALESCE(d.persian_phonetic, '') as persian_phonetic,
                   COALESCE(d.persian_meaning, '') as persian_meaning,
                   d.persian_detail_id, d.has_image
            FROM persian_words w
            LEFT JOIN persian_details d ON w.persian_word_id = d.persian_word_id
            WHERE w.persian_word = ?
            ORDER BY d.position, d.persian_detail_id
        """
        cursor = self._execute(query, (word,))
        if not cursor:
            return None
        result = self._parse_persian_results(cursor)
        if result:
            result['lang'] = 'persian'
        return result

    def _parse_english_results(self, cursor):
        meanings = []
        word_info = None
        for row in cursor.fetchall():
            if word_info is None:
                word_info = {
                    'word': row['word'],
                    'word_id': row['word_id'],
                    'simple_past': self._get_word_by_id('english', row['simple_past']),
                    'past_participle': self._get_word_by_id('english', row['past_participle']),
                    'infinitive': self._get_word_by_id('english', row['infinitive']),
                    'third_person_singular': self._get_word_by_id('english', row['third_person_singular']),
                    'present_participle': self._get_word_by_id('english', row['present_participle']),
                    'plural': self._get_word_by_id('english', row['plural']),
                    'comparative': self._get_word_by_id('english', row['comparative']),
                    'superlative': self._get_word_by_id('english', row['superlative']),
                    'word_description_html': row['word_description_html'],
                }
            meanings.append({
                'detail_id': row['english_detail_id'],
                'persian_meaning': row['pe_meaning'],
                'countable_uncountable': row['countable_uncountable'],
                'formal_informal': row['formal_informal'],
                'british_american': row['british_american'],
                'cefr': row['cefr'],
                'has_image': row['has_image'],
                'most_common': row['most_common'],
            })
        if word_info:
            word_info['meanings'] = meanings
            word_info['pos'] = self._get_pos('english', word_info['word_id'])
            word_info['sentences'] = self._get_english_sentences(word_info['word_id'])
            word_info['synonyms_antonyms'] = self._get_english_synonyms_antonyms(word_info['word_id'])
            word_info['idioms'] = self._get_english_idioms(word_info['word_id'])
            word_info['categories'] = self._get_english_categories(word_info['word_id'])
            word_info['audios'] = self._get_audios(word_info['word_id'])
            word_info['word_family'] = self._get_word_family(word_info['word'])
        return word_info

    def _parse_persian_results(self, cursor):
        details = []
        word_info = None
        for row in cursor.fetchall():
            if word_info is None:
                word_info = {
                    'word': row['persian_word'],
                    'word_id': row['persian_word_id'],
                    'word_description_html': row['word_description_html'],
                }
            details.append({
                'detail_id': row['persian_detail_id'],
                'english_meaning': row['english_meaning'],
                'persian_phonetic': row['persian_phonetic'],
                'persian_meaning': row['persian_meaning'],
                'has_image': row['has_image'],
            })
        if word_info:
            word_info['details'] = details
            word_info['pos'] = self._get_pos('persian', word_info['word_id'])
            word_info['sentences'] = self._get_persian_sentences(word_info['word_id'])
            word_info['synonyms_antonyms'] = self._get_persian_synonyms_antonyms(word_info['word_id'])
            word_info['categories'] = self._get_persian_categories(word_info['word_id'])
        return word_info

    def _get_word_by_id(self, lang, word_id):
        if word_id is None:
            return None
        if lang == 'english':
            cursor = self._execute(
                "SELECT english_word FROM english_words WHERE english_word_id = ?",
                (str(word_id),)
            )
        else:
            cursor = self._execute(
                "SELECT persian_word FROM persian_words WHERE persian_word_id = ?",
                (str(word_id),)
            )
        if cursor:
            row = cursor.fetchone()
            if row:
                return row[0]
        return None

    def _get_pos(self, lang, word_id):
        if lang == 'english':
            query = """
                SELECT DISTINCT p.pos, p.english_detail_id, d.position
                FROM english_pos p
                JOIN english_details d ON p.english_detail_id = d.english_detail_id
                WHERE d.english_word_id = ?
                ORDER BY d.position, p.pos
            """
        else:
            query = """
                SELECT DISTINCT p.pos, p.persian_detail_id as detail_id, d.position
                FROM persian_pos p
                JOIN persian_details d ON p.persian_detail_id = d.persian_detail_id
                WHERE d.persian_word_id = ?
                ORDER BY d.position, p.pos
            """
        cursor = self._execute(query, (str(word_id),))
        if not cursor:
            return []
        return [{'pos_id': row[0], 'pos_label': get_pos_label(row[0], lang), 'detail_id': row[1]} for row in cursor.fetchall()]

    def _get_english_sentences(self, word_id):
        query = """
            SELECT s.english_sentence, s.persian_sentence
            FROM english_sentences s
            JOIN english_details d ON s.english_detail_id = d.english_detail_id
            WHERE d.english_word_id = ?
            ORDER BY s.position, s.english_sentence_id
            LIMIT 20
        """
        cursor = self._execute(query, (str(word_id),))
        if not cursor:
            return []
        return [{'english': row['english_sentence'], 'persian': row['persian_sentence']} for row in cursor.fetchall()]

    def _get_persian_sentences(self, word_id):
        query = """
            SELECT s.persian_sentence, s.english_sentence
            FROM persian_sentences s
            JOIN persian_details d ON s.persian_detail_id = d.persian_detail_id
            WHERE d.persian_word_id = ?
            ORDER BY s.position, s.persian_sentence_id
            LIMIT 20
        """
        cursor = self._execute(query, (str(word_id),))
        if not cursor:
            return []
        return [{'persian': row['persian_sentence'], 'english': row['english_sentence']} for row in cursor.fetchall()]

    def _get_english_synonyms_antonyms(self, word_id):
        query = """
            SELECT sa.definitions, sa.synonyms, sa.antonyms, sa.pos, sa.position
            FROM english_synonyms_antonyms sa
            WHERE sa.english_word_id = ?
            ORDER BY sa.position, sa.english_synonyms_antonyms_id
            LIMIT 20
        """
        cursor = self._execute(query, (str(word_id),))
        if not cursor:
            return []
        return [{'definitions': row['definitions'], 'synonyms': row['synonyms'],
                 'antonyms': row['antonyms'], 'pos': row['pos']} for row in cursor.fetchall()]

    def _get_persian_synonyms_antonyms(self, word_id):
        query = """
            SELECT sa.synonym_antonym, sa.position
            FROM persian_synonyms_antonyms sa
            WHERE sa.persian_word_id = ?
            ORDER BY sa.position
            LIMIT 20
        """
        cursor = self._execute(query, (str(word_id),))
        if not cursor:
            return []
        return [{'synonym_antonym': row['synonym_antonym']} for row in cursor.fetchall()]

    def _get_english_idioms(self, word_id):
        query = """
            SELECT w.english_word as word, d.persian_meaning,
                   i.english_idiom_id, p.pos
            FROM english_idioms i
            LEFT JOIN english_details d ON i.english_idiom_word_id = d.english_word_id
            LEFT JOIN english_words w ON i.english_idiom_word_id = w.english_word_id
            LEFT JOIN english_pos p ON p.english_detail_id = d.english_detail_id
            WHERE i.english_word_id = ? AND p.pos = 18
            GROUP BY p.pos, w.english_word, d.english_detail_id, d.persian_meaning,
                     i.english_idiom_id, i.english_idiom_word_id, p.english_pos_id
            ORDER BY i.position, i.english_idiom_id
            LIMIT 20
        """
        cursor = self._execute(query, (str(word_id),))
        if not cursor:
            return []
        return [{'word': row['word'], 'persian_meaning': row['persian_meaning'],
                 'idiom_id': row['english_idiom_id']} for row in cursor.fetchall()]

    def _get_english_categories(self, word_id):
        query = """
            SELECT c.category
            FROM english_categories c
            JOIN english_details d ON c.english_detail_id = d.english_detail_id
            WHERE d.english_word_id = ?
            GROUP BY c.category
        """
        cursor = self._execute(query, (str(word_id),))
        if not cursor:
            return []
        return [get_category_name(row['category']) for row in cursor.fetchall() if get_category_name(row['category'])]

    def _get_persian_categories(self, word_id):
        query = """
            SELECT c.category
            FROM persian_categories c
            JOIN persian_details d ON c.persian_detail_id = d.persian_detail_id
            WHERE d.persian_word_id = ?
            GROUP BY c.category
        """
        cursor = self._execute(query, (str(word_id),))
        if not cursor:
            return []
        return [get_category_name(row['category']) for row in cursor.fetchall() if get_category_name(row['category'])]

    def _get_audios(self, word_id):
        result = {'american': [], 'british': []}
        cursor = self._execute(
            "SELECT filename, phonetic FROM english_american_audios WHERE english_word_id = ?",
            (str(word_id),)
        )
        if cursor:
            for row in cursor.fetchall():
                result['american'].append({'filename': row['filename'], 'phonetic': row['phonetic']})
        cursor = self._execute(
            "SELECT filename, phonetic FROM english_british_audios WHERE english_word_id = ?",
            (str(word_id),)
        )
        if cursor:
            for row in cursor.fetchall():
                result['british'].append({'filename': row['filename'], 'phonetic': row['phonetic']})
        return result if result['american'] or result['british'] else None

    def _get_word_family(self, word):
        if not word:
            return None
        query = """
            SELECT wfw.word, wfw.pos
            FROM english_word_families_words wfw
            JOIN english_word_families wf ON wfw.english_word_family_id = wf.english_word_family_id
            WHERE wf.english_word_family_id IN (
                SELECT english_word_family_id FROM english_word_families_words
                WHERE LOWER(word) = LOWER(?)
            )
            ORDER BY wfw.pos, wfw.word
        """
        cursor = self._execute(query, (word,))
        if not cursor:
            return None
        families = [{'word': row['word'], 'pos': ENGLISH_POS.get(row['pos'], ''),
                     'pos_fa': ENGLISH_POS_FA.get(row['pos'], '')} for row in cursor.fetchall()]
        return families if families else None

    def close(self):
        if self.conn:
            self.conn.close()
