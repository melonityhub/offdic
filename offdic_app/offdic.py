#!/usr/bin/env python3
"""
offdic - Offline English-Persian Dictionary
A Python desktop application (Windows-compatible) that replicates the fastdic Android dictionary.
All features are free - no login, no ads, no premium.
Uses the fastdic_plain.sqlite database for offline translation.
"""

import sys
import os

# Import from local module
from db_manager import (
    DatabaseManager, detect_language, pe_character_to_number,
    ENGLISH_POS, PERSIAN_POS, ENGLISH_POS_FA, CATEGORIES, CEFR_LABELS,
    FORMAL_INFORMAL, BRITISH_AMERICAN, COUNTABLE_UNCOUNTABLE,
    IRREGULAR_PAST_PARTICIPLES,
    get_pos_label, get_category_name
)

from PyQt5.QtWidgets import (
    QApplication, QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QLabel, QLineEdit, QTextBrowser, QListWidget, QListWidgetItem,
    QSplitter, QFrame, QSizePolicy, QStackedWidget, QProgressBar,
    QScrollArea, QPushButton, QGridLayout, QSpacerItem
)
from PyQt5.QtCore import (
    Qt, QTimer, QSize, pyqtSignal, QThread, QRunnable, QThreadPool, QObject
)
from PyQt5.QtGui import (
    QFont, QFontDatabase, QColor, QPalette, QIcon, QTextCursor,
    QKeyEvent, QKeySequence
)
from PyQt5.QtWebEngineWidgets import QWebEngineView

# levenshtein_distance used by fuzzy matching
def _levenshtein(s, t):
    if len(s) == 0: return len(t)
    if len(t) == 0: return len(s)
    if len(s) > len(t): s, t = t, s
    v0 = list(range(len(s) + 1))
    v1 = [0] * (len(s) + 1)
    for i in range(1, len(t) + 1):
        v1[0] = i
        for j in range(1, len(s) + 1):
            cost = 0 if t[i-1] == s[j-1] else 1
            v1[j] = min(v1[j-1]+1, v0[j]+1, v0[j-1]+cost)
        v0, v1 = v1, v0
    return v0[len(s)]


# ============================================================================
# HTML Result Generator
# ============================================================================

class ResultHTMLGenerator:
    """Generates HTML for displaying word results."""

    @staticmethod
    def generate_english_html(data, is_dark=False):
        """Generate HTML for English word result."""
        if not data:
            return ""

        bg_color = '#1a1a2e' if is_dark else '#ffffff'
        text_color = '#f0f0f0' if is_dark else '#333333'
        meaning_bg = '#16213e' if is_dark else '#f8f9fa'
        border_color = '#2a2a4a' if is_dark else '#e0e0e0'
        pos_color = '#64b5f6' if is_dark else '#1565c0'
        sentence_bg = '#0f3460' if is_dark else '#f0f4f8'
        link_color = '#90caf9' if is_dark else '#1565c0'
        section_title_color = '#ce93d8' if is_dark else '#6a1b9a'
        synonym_color = '#81c784' if is_dark else '#2e7d32'
        antonym_color = '#ef9a9a' if is_dark else '#c62828'
        category_bg = '#3e2723' if is_dark else '#fff3e0'
        category_color = '#ffcc80' if is_dark else '#e65100'
        cefr_bg_map = {
            'A1': '#2e7d32', 'A2': '#558b2f',
            'B1': '#f9a825', 'B2': '#ef6c00',
            'C1': '#c62828', 'C2': '#6a1b9a',
        }

        html = f"""
        <html>
        <head>
        <style>
            * {{ margin: 0; padding: 0; box-sizing: border-box; }}
            body {{
                font-family: 'Segoe UI', Tahoma, 'IRANSansX', sans-serif;
                background: {bg_color};
                color: {text_color};
                padding: 20px;
                direction: rtl;
                font-size: 14px;
                line-height: 1.8;
            }}
            .word-header {{
                margin-bottom: 20px;
                padding-bottom: 15px;
                border-bottom: 2px solid {border_color};
            }}
            .word-title {{
                font-size: 28px;
                font-weight: bold;
                color: {link_color};
                direction: ltr;
                text-align: right;
                margin-bottom: 8px;
            }}
            .word-forms {{
                display: flex;
                flex-wrap: wrap;
                gap: 10px;
                margin-top: 10px;
                direction: ltr;
            }}
            .word-form-item {{
                background: {meaning_bg};
                padding: 6px 12px;
                border-radius: 6px;
                border: 1px solid {border_color};
                font-size: 12px;
            }}
            .word-form-label {{
                color: #888;
                font-size: 11px;
                display: block;
            }}
            .word-form-value {{
                color: {link_color};
                font-weight: 500;
            }}
            .meaning-section {{
                margin-bottom: 20px;
            }}
            .meaning-group {{
                background: {meaning_bg};
                border-radius: 10px;
                padding: 15px;
                margin-bottom: 12px;
                border: 1px solid {border_color};
            }}
            .pos-label {{
                display: inline-block;
                background: {pos_color};
                color: white;
                padding: 3px 10px;
                border-radius: 12px;
                font-size: 12px;
                font-weight: 500;
                margin-bottom: 8px;
            }}
            .persian-meaning {{
                font-size: 16px;
                font-weight: 500;
                color: {text_color};
                margin: 5px 0;
                direction: rtl;
            }}
            .cefr-badge {{
                display: inline-block;
                padding: 2px 8px;
                border-radius: 4px;
                color: white;
                font-size: 11px;
                font-weight: bold;
                margin-right: 5px;
            }}
            .formal-badge {{
                display: inline-block;
                padding: 2px 8px;
                border-radius: 4px;
                font-size: 11px;
                background: {border_color};
                color: {text_color};
                margin-right: 5px;
            }}
            .ba-badge {{
                display: inline-block;
                padding: 2px 8px;
                border-radius: 4px;
                font-size: 11px;
                background: {border_color};
                color: {text_color};
                margin-right: 5px;
            }}
            .section-title {{
                font-size: 15px;
                font-weight: bold;
                color: {section_title_color};
                margin: 15px 0 10px 0;
                padding-bottom: 5px;
                border-bottom: 1px solid {border_color};
            }}
            .sentence-item {{
                background: {sentence_bg};
                padding: 10px 15px;
                border-radius: 8px;
                margin-bottom: 8px;
                border-right: 3px solid {pos_color};
            }}
            .sentence-en {{
                direction: ltr;
                text-align: left;
                font-size: 13px;
                margin-bottom: 5px;
                color: {link_color};
            }}
            .sentence-fa {{
                direction: rtl;
                text-align: right;
                font-size: 13px;
                color: {text_color};
            }}
            .synonym-antonym {{
                background: {meaning_bg};
                padding: 10px 15px;
                border-radius: 8px;
                margin-bottom: 8px;
            }}
            .synonym-words {{
                color: {synonym_color};
                margin: 3px 0;
            }}
            .antonym-words {{
                color: {antonym_color};
                margin: 3px 0;
            }}
            .syn-ant-label {{
                font-weight: bold;
                font-size: 12px;
                margin-left: 5px;
            }}
            .idiom-item {{
                background: {meaning_bg};
                padding: 10px 15px;
                border-radius: 8px;
                margin-bottom: 8px;
                border-right: 3px solid {section_title_color};
            }}
            .idiom-word {{
                font-weight: bold;
                color: {link_color};
                direction: ltr;
                display: inline;
            }}
            .idiom-meaning {{
                color: {text_color};
                margin-top: 3px;
            }}
            .category-tags {{
                display: flex;
                flex-wrap: wrap;
                gap: 6px;
                margin-top: 8px;
            }}
            .category-tag {{
                background: {category_bg};
                color: {category_color};
                padding: 3px 10px;
                border-radius: 12px;
                font-size: 11px;
            }}
            .word-family {{
                background: {meaning_bg};
                padding: 12px;
                border-radius: 8px;
                margin-top: 10px;
            }}
            .word-family-item {{
                display: inline-block;
                margin: 3px 5px;
                padding: 3px 8px;
                background: {sentence_bg};
                border-radius: 4px;
                font-size: 12px;
            }}
            .wf-pos {{
                color: #888;
                font-size: 10px;
            }}
            .word-description {{
                margin-top: 10px;
                padding: 10px;
                background: {sentence_bg};
                border-radius: 8px;
                font-size: 13px;
                direction: rtl;
            }}
            .badges {{
                display: flex;
                flex-wrap: wrap;
                gap: 5px;
                margin: 8px 0;
            }}
        </style>
        </head>
        <body>
        """

        # Word header
        html += f'<div class="word-header">'
        html += f'<div class="word-title">{data["word"]}</div>'

        # Word forms
        forms = []
        if data.get('infinitive'):
            forms.append(('infinitive', data['infinitive']))
        if data.get('simple_past'):
            forms.append(('past simple', data['simple_past']))
        if data.get('past_participle'):
            pp = data['past_participle']
            if pp in IRREGULAR_PAST_PARTICIPLES:
                forms.append(('past participle', pp))
            else:
                forms.append(('past participle', pp))
        if data.get('third_person_singular'):
            forms.append(('3rd person', data['third_person_singular']))
        if data.get('present_participle'):
            forms.append(('present participle', data['present_participle']))
        if data.get('plural'):
            forms.append(('plural', data['plural']))
        if data.get('comparative'):
            forms.append(('comparative', data['comparative']))
        if data.get('superlative'):
            forms.append(('superlative', data['superlative']))

        if forms:
            html += '<div class="word-forms">'
            for label, value in forms:
                html += f'<div class="word-form-item">'
                html += f'<span class="word-form-label">{label}</span>'
                html += f'<span class="word-form-value">{value}</span>'
                html += '</div>'
            html += '</div>'

        html += '</div>'  # word-header

        # POS tags
        if data.get('pos'):
            unique_pos = []
            seen = set()
            for p in data['pos']:
                if p['pos_label'] not in seen:
                    seen.add(p['pos_label'])
                    unique_pos.append(p['pos_label'])
            if unique_pos:
                html += '<div style="margin-bottom:15px;">'
                for pos_label in unique_pos:
                    html += f'<span class="pos-label">{pos_label}</span> '
                html += '</div>'

        # Meanings
        if data.get('meanings'):
            html += '<div class="section-title">معانی</div>'
            # Group meanings by detail_id to avoid duplicates
            seen_meanings = set()
            for i, meaning in enumerate(data['meanings'], 1):
                pm = meaning['persian_meaning']
                if pm and pm not in seen_meanings:
                    seen_meanings.add(pm)
                    html += '<div class="meaning-group">'

                    # Badges
                    badges = []
                    if meaning.get('cefr'):
                        cefr = meaning['cefr']
                        cefr_bg = cefr_bg_map.get(cefr, '#666')
                        cefr_text = CEFR_LABELS.get(cefr, cefr)
                        badges.append(f'<span class="cefr-badge" style="background:{cefr_bg}">{cefr_text}</span>')
                    if meaning.get('formal_informal') is not None:
                        fi = FORMAL_INFORMAL.get(meaning['formal_informal'], '')
                        if fi:
                            badges.append(f'<span class="formal-badge">{fi}</span>')
                    if meaning.get('british_american') is not None:
                        ba = BRITISH_AMERICAN.get(meaning['british_american'], '')
                        if ba:
                            badges.append(f'<span class="ba-badge">{ba}</span>')
                    if meaning.get('countable_uncountable') is not None:
                        cu = COUNTABLE_UNCOUNTABLE.get(meaning['countable_uncountable'], '')
                        if cu:
                            badges.append(f'<span class="formal-badge">{cu}</span>')

                    if badges:
                        html += '<div class="badges">' + ''.join(badges) + '</div>'

                    html += f'<div class="persian-meaning">{i}. {pm}</div>'
                    html += '</div>'

        # Word description
        if data.get('word_description_html'):
            html += f'<div class="word-description">{data["word_description_html"]}</div>'

        # Categories
        if data.get('categories'):
            html += '<div class="section-title">دسته‌بندی‌ها</div>'
            html += '<div class="category-tags">'
            for cat in data['categories']:
                html += f'<span class="category-tag">{cat}</span>'
            html += '</div>'

        # Sentences
        if data.get('sentences'):
            html += '<div class="section-title">جملات نمونه</div>'
            for sent in data['sentences'][:10]:
                html += '<div class="sentence-item">'
                if sent.get('english'):
                    html += f'<div class="sentence-en">{sent["english"]}</div>'
                if sent.get('persian'):
                    html += f'<div class="sentence-fa">{sent["persian"]}</div>'
                html += '</div>'

        # Synonyms & Antonyms
        if data.get('synonyms_antonyms'):
            html += '<div class="section-title">مترادف و متضاد</div>'
            for sa in data['synonyms_antonyms'][:10]:
                html += '<div class="synonym-antonym">'
                if sa.get('definitions'):
                    html += f'<div style="font-size:12px;color:#888;margin-bottom:5px;">{sa["definitions"]}</div>'
                if sa.get('synonyms'):
                    html += f'<div class="synonym-words"><span class="syn-ant-label">مترادف:</span> {sa["synonyms"]}</div>'
                if sa.get('antonyms'):
                    html += f'<div class="antonym-words"><span class="syn-ant-label">متضاد:</span> {sa["antonyms"]}</div>'
                html += '</div>'

        # Idioms
        if data.get('idioms'):
            html += '<div class="section-title">اصطلاحات</div>'
            seen_idioms = set()
            for idiom in data['idioms']:
                if idiom['word'] not in seen_idioms:
                    seen_idioms.add(idiom['word'])
                    html += '<div class="idiom-item">'
                    html += f'<div class="idiom-word">{idiom["word"]}</div>'
                    if idiom.get('persian_meaning'):
                        html += f'<div class="idiom-meaning">{idiom["persian_meaning"]}</div>'
                    html += '</div>'

        # Word Family
        if data.get('word_family'):
            html += '<div class="section-title">خانواده کلمه</div>'
            html += '<div class="word-family">'
            for wf in data['word_family']:
                html += f'<span class="word-family-item">{wf["word"]} <span class="wf-pos">({wf["pos_fa"]})</span></span>'
            html += '</div>'

        html += '</body></html>'
        return html

    @staticmethod
    def generate_persian_html(data, is_dark=False):
        """Generate HTML for Persian word result."""
        if not data:
            return ""

        bg_color = '#1a1a2e' if is_dark else '#ffffff'
        text_color = '#f0f0f0' if is_dark else '#333333'
        meaning_bg = '#16213e' if is_dark else '#f8f9fa'
        border_color = '#2a2a4a' if is_dark else '#e0e0e0'
        pos_color = '#ce93d8' if is_dark else '#6a1b9a'
        sentence_bg = '#0f3460' if is_dark else '#f0f4f8'
        link_color = '#90caf9' if is_dark else '#1565c0'
        section_title_color = '#ce93d8' if is_dark else '#6a1b9a'
        synonym_color = '#81c784' if is_dark else '#2e7d32'
        category_bg = '#3e2723' if is_dark else '#fff3e0'
        category_color = '#ffcc80' if is_dark else '#e65100'

        html = f"""
        <html>
        <head>
        <style>
            * {{ margin: 0; padding: 0; box-sizing: border-box; }}
            body {{
                font-family: 'Segoe UI', Tahoma, 'IRANSansX', sans-serif;
                background: {bg_color};
                color: {text_color};
                padding: 20px;
                direction: rtl;
                font-size: 14px;
                line-height: 1.8;
            }}
            .word-header {{
                margin-bottom: 20px;
                padding-bottom: 15px;
                border-bottom: 2px solid {border_color};
            }}
            .word-title {{
                font-size: 28px;
                font-weight: bold;
                color: {link_color};
                margin-bottom: 8px;
            }}
            .phonetic {{
                font-size: 14px;
                color: #888;
                direction: ltr;
                text-align: right;
            }}
            .section-title {{
                font-size: 15px;
                font-weight: bold;
                color: {section_title_color};
                margin: 15px 0 10px 0;
                padding-bottom: 5px;
                border-bottom: 1px solid {border_color};
            }}
            .pos-label {{
                display: inline-block;
                background: {pos_color};
                color: white;
                padding: 3px 10px;
                border-radius: 12px;
                font-size: 12px;
                font-weight: 500;
                margin-bottom: 8px;
            }}
            .detail-group {{
                background: {meaning_bg};
                border-radius: 10px;
                padding: 15px;
                margin-bottom: 12px;
                border: 1px solid {border_color};
            }}
            .persian-meaning {{
                font-size: 15px;
                font-weight: 500;
                color: {text_color};
                margin: 5px 0;
            }}
            .english-meaning {{
                font-size: 13px;
                color: #888;
                direction: ltr;
                text-align: right;
                margin: 3px 0;
            }}
            .sentence-item {{
                background: {sentence_bg};
                padding: 10px 15px;
                border-radius: 8px;
                margin-bottom: 8px;
                border-right: 3px solid {pos_color};
            }}
            .sentence-fa {{
                font-size: 13px;
                margin-bottom: 5px;
            }}
            .sentence-en {{
                font-size: 13px;
                color: {link_color};
                direction: ltr;
                text-align: left;
            }}
            .synonym-item {{
                background: {meaning_bg};
                padding: 10px 15px;
                border-radius: 8px;
                margin-bottom: 8px;
                color: {synonym_color};
            }}
            .category-tags {{
                display: flex;
                flex-wrap: wrap;
                gap: 6px;
                margin-top: 8px;
            }}
            .category-tag {{
                background: {category_bg};
                color: {category_color};
                padding: 3px 10px;
                border-radius: 12px;
                font-size: 11px;
            }}
            .word-description {{
                margin-top: 10px;
                padding: 10px;
                background: {sentence_bg};
                border-radius: 8px;
                font-size: 13px;
                direction: rtl;
            }}
        </style>
        </head>
        <body>
        """

        # Word header
        html += f'<div class="word-header">'
        html += f'<div class="word-title">{data["word"]}</div>'
        html += '</div>'

        # POS tags
        if data.get('pos'):
            unique_pos = []
            seen = set()
            for p in data['pos']:
                if p['pos_label'] not in seen:
                    seen.add(p['pos_label'])
                    unique_pos.append(p['pos_label'])
            if unique_pos:
                html += '<div style="margin-bottom:15px;">'
                for pos_label in unique_pos:
                    html += f'<span class="pos-label">{pos_label}</span> '
                html += '</div>'

        # Details (meanings)
        if data.get('details'):
            html += '<div class="section-title">معانی</div>'
            seen_meanings = set()
            for i, detail in enumerate(data['details'], 1):
                pm = detail.get('persian_meaning', '')
                em = detail.get('english_meaning', '')
                phonetic = detail.get('persian_phonetic', '')

                if pm and pm not in seen_meanings:
                    seen_meanings.add(pm)
                    html += '<div class="detail-group">'

                    if phonetic:
                        html += f'<div class="phonetic">/{phonetic}/</div>'

                    if pm:
                        html += f'<div class="persian-meaning">{pm}</div>'
                    if em:
                        html += f'<div class="english-meaning">{em}</div>'

                    html += '</div>'

        # Word description
        if data.get('word_description_html'):
            html += f'<div class="word-description">{data["word_description_html"]}</div>'

        # Categories
        if data.get('categories'):
            html += '<div class="section-title">دسته‌بندی‌ها</div>'
            html += '<div class="category-tags">'
            for cat in data['categories']:
                html += f'<span class="category-tag">{cat}</span>'
            html += '</div>'

        # Sentences
        if data.get('sentences'):
            html += '<div class="section-title">جملات نمونه</div>'
            for sent in data['sentences'][:10]:
                html += '<div class="sentence-item">'
                if sent.get('persian'):
                    html += f'<div class="sentence-fa">{sent["persian"]}</div>'
                if sent.get('english'):
                    html += f'<div class="sentence-en">{sent["english"]}</div>'
                html += '</div>'

        # Synonyms
        if data.get('synonyms_antonyms'):
            html += '<div class="section-title">مترادف و متضاد</div>'
            for sa in data['synonyms_antonyms'][:10]:
                html += f'<div class="synonym-item">{sa["synonym_antonym"]}</div>'

        html += '</body></html>'
        return html


# ============================================================================
# Worker for background search
# ============================================================================

class SearchWorkerSignals(QObject):
    finished = pyqtSignal(list)
    error = pyqtSignal(str)


class SearchWorker(QRunnable):
    def __init__(self, db_manager, word):
        super().__init__()
        self.db_manager = db_manager
        self.word = word
        self.signals = SearchWorkerSignals()

    def run(self):
        try:
            results = self.db_manager.search_words(self.word)
            self.signals.finished.emit(results)
        except Exception as e:
            self.signals.error.emit(str(e))


class DetailWorkerSignals(QObject):
    finished = pyqtSignal(object)
    error = pyqtSignal(str)


class DetailWorker(QRunnable):
    def __init__(self, db_manager, word_id, lang):
        super().__init__()
        self.db_manager = db_manager
        self.word_id = word_id
        self.lang = lang
        self.signals = DetailWorkerSignals()

    def run(self):
        try:
            if self.lang == 'english':
                result = self.db_manager.get_english_word_details(self.word_id)
            else:
                result = self.db_manager.get_persian_word_details(self.word_id)
            self.signals.finished.emit(result)
        except Exception as e:
            self.signals.error.emit(str(e))


class DirectSearchWorkerSignals(QObject):
    finished = pyqtSignal(object)
    error = pyqtSignal(str)


class DirectSearchWorker(QRunnable):
    def __init__(self, db_manager, word):
        super().__init__()
        self.db_manager = db_manager
        self.word = word
        self.signals = DirectSearchWorkerSignals()

    def run(self):
        try:
            result = self.db_manager.get_word_detail_by_word(self.word)
            self.signals.finished.emit(result)
        except Exception as e:
            self.signals.error.emit(str(e))


# ============================================================================
# Main Window
# ============================================================================

class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("offdic - دیکشنری آفلاین انگلیسی-فارسی")
        self.setMinimumSize(1000, 700)
        self.resize(1100, 800)

        # Database
        db_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'fastdic_plain.sqlite')
        self.db = DatabaseManager(db_path)

        # Thread pool
        self.thread_pool = QThreadPool()
        self.thread_pool.setMaxThreadCount(4)

        # HTML Generator
        self.html_gen = ResultHTMLGenerator()

        # Dark mode
        self.is_dark = True

        # Current search word
        self.current_word = ""

        # Setup UI
        self._setup_ui()
        self._apply_theme()

        # Show welcome
        self._show_welcome()

    def _setup_ui(self):
        """Setup the main UI."""
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        main_layout = QVBoxLayout(central_widget)
        main_layout.setContentsMargins(0, 0, 0, 0)
        main_layout.setSpacing(0)

        # Top bar
        top_bar = QWidget()
        top_bar.setFixedHeight(60)
        top_bar.setObjectName("topBar")
        top_layout = QHBoxLayout(top_bar)
        top_layout.setContentsMargins(15, 10, 15, 10)

        # App title
        title_label = QLabel("offdic")
        title_label.setObjectName("appTitle")
        title_label.setFont(QFont("Segoe UI", 18, QFont.Bold))
        top_layout.addWidget(title_label)

        # Subtitle
        subtitle = QLabel("دیکشنری آفلاین")
        subtitle.setObjectName("subtitle")
        subtitle.setFont(QFont("Segoe UI", 11))
        top_layout.addWidget(subtitle)

        top_layout.addStretch()

        # Dark mode toggle
        self.theme_btn = QPushButton("🌙")
        self.theme_btn.setObjectName("themeBtn")
        self.theme_btn.setFixedSize(40, 40)
        self.theme_btn.setToolTip("تغییر تم")
        self.theme_btn.clicked.connect(self._toggle_theme)
        top_layout.addWidget(self.theme_btn)

        main_layout.addWidget(top_bar)

        # Search area
        search_area = QWidget()
        search_area.setObjectName("searchArea")
        search_area.setFixedHeight(70)
        search_layout = QHBoxLayout(search_area)
        search_layout.setContentsMargins(20, 10, 20, 15)

        self.search_input = QLineEdit()
        self.search_input.setObjectName("searchInput")
        self.search_input.setPlaceholderText("کلمه‌ای را جستجو کنید... | Search for a word...")
        self.search_input.setFont(QFont("Segoe UI", 14))
        self.search_input.setFixedHeight(45)
        self.search_input.textChanged.connect(self._on_search_text_changed)
        self.search_input.returnPressed.connect(self._on_search_enter)

        # Clear button inside search
        self.clear_btn = QPushButton("✕")
        self.clear_btn.setObjectName("clearBtn")
        self.clear_btn.setFixedSize(30, 30)
        self.clear_btn.setVisible(False)
        self.clear_btn.clicked.connect(self._clear_search)

        # Search icon
        search_icon = QLabel("🔍")
        search_icon.setFixedWidth(30)
        search_icon.setAlignment(Qt.AlignCenter)

        search_layout.addWidget(search_icon)
        search_layout.addWidget(self.search_input, 1)
        search_layout.addWidget(self.clear_btn)

        main_layout.addWidget(search_area)

        # Content area with splitter
        self.splitter = QSplitter(Qt.Horizontal)
        self.splitter.setHandleWidth(1)

        # Left panel - suggestions
        self.suggestions_list = QListWidget()
        self.suggestions_list.setObjectName("suggestionsList")
        self.suggestions_list.setFont(QFont("Segoe UI", 12))
        self.suggestions_list.setMaximumWidth(300)
        self.suggestions_list.setMinimumWidth(200)
        self.suggestions_list.itemClicked.connect(self._on_suggestion_clicked)
        self.suggestions_list.itemDoubleClicked.connect(self._on_suggestion_double_clicked)
        self.suggestions_list.setVisible(False)

        # Right panel - result display
        self.result_view = QWebEngineView()
        self.result_view.setObjectName("resultView")
        self.result_view.setUrl("about:blank")

        self.splitter.addWidget(self.suggestions_list)
        self.splitter.addWidget(self.result_view)
        self.splitter.setStretchFactor(0, 0)
        self.splitter.setStretchFactor(1, 1)

        main_layout.addWidget(self.splitter, 1)

        # Status bar
        self.statusBar().showMessage("آماده | Ready")
        self.statusBar().setFont(QFont("Segoe UI", 9))

    def _apply_theme(self):
        """Apply the current theme (dark/light)."""
        if self.is_dark:
            self.setStyleSheet("""
                QMainWindow { background: #0d1117; }
                #topBar { background: #161b22; border-bottom: 1px solid #30363d; }
                #appTitle { color: #58a6ff; }
                #subtitle { color: #8b949e; }
                #themeBtn {
                    background: #21262d; color: #c9d1d9; border: 1px solid #30363d;
                    border-radius: 20px; font-size: 18px;
                }
                #themeBtn:hover { background: #30363d; }
                #searchArea { background: #0d1117; }
                #searchInput {
                    background: #161b22; color: #c9d1d9; border: 2px solid #30363d;
                    border-radius: 10px; padding: 8px 15px;
                    selection-background-color: #1f6feb;
                }
                #searchInput:focus { border-color: #58a6ff; }
                #searchInput::placeholder { color: #484f58; }
                #clearBtn {
                    background: #21262d; color: #8b949e; border: none;
                    border-radius: 15px; font-size: 14px;
                }
                #clearBtn:hover { background: #30363d; color: #c9d1d9; }
                #suggestionsList {
                    background: #161b22; color: #c9d1d9; border: none;
                    border-right: 1px solid #30363d;
                    outline: none;
                }
                #suggestionsList::item {
                    padding: 10px 15px; border-bottom: 1px solid #21262d;
                }
                #suggestionsList::item:selected {
                    background: #1f6feb; color: white;
                }
                #suggestionsList::item:hover {
                    background: #21262d;
                }
                #resultView { background: #1a1a2e; }
                QSplitter::handle { background: #30363d; }
                QStatusBar { background: #161b22; color: #8b949e; border-top: 1px solid #30363d; }
            """)
            self.theme_btn.setText("☀️")
        else:
            self.setStyleSheet("""
                QMainWindow { background: #ffffff; }
                #topBar { background: #f6f8fa; border-bottom: 1px solid #d0d7de; }
                #appTitle { color: #1565c0; }
                #subtitle { color: #57606a; }
                #themeBtn {
                    background: #f0f0f0; color: #333; border: 1px solid #d0d7de;
                    border-radius: 20px; font-size: 18px;
                }
                #themeBtn:hover { background: #e0e0e0; }
                #searchArea { background: #ffffff; }
                #searchInput {
                    background: #f6f8fa; color: #24292f; border: 2px solid #d0d7de;
                    border-radius: 10px; padding: 8px 15px;
                    selection-background-color: #0969da;
                }
                #searchInput:focus { border-color: #0969da; }
                #searchInput::placeholder { color: #8b949e; }
                #clearBtn {
                    background: #f0f0f0; color: #57606a; border: none;
                    border-radius: 15px; font-size: 14px;
                }
                #clearBtn:hover { background: #e0e0e0; color: #24292f; }
                #suggestionsList {
                    background: #f6f8fa; color: #24292f; border: none;
                    border-right: 1px solid #d0d7de;
                    outline: none;
                }
                #suggestionsList::item {
                    padding: 10px 15px; border-bottom: 1px solid #e8e8e8;
                }
                #suggestionsList::item:selected {
                    background: #0969da; color: white;
                }
                #suggestionsList::item:hover {
                    background: #e8e8e8;
                }
                #resultView { background: #ffffff; }
                QSplitter::handle { background: #d0d7de; }
                QStatusBar { background: #f6f8fa; color: #57606a; border-top: 1px solid #d0d7de; }
            """)
            self.theme_btn.setText("🌙")

    def _toggle_theme(self):
        """Toggle between dark and light theme."""
        self.is_dark = not self.is_dark
        self._apply_theme()
        # Refresh current result if any
        if self.current_word:
            self._load_direct_search(self.current_word)

    def _show_welcome(self):
        """Show welcome screen."""
        if self.is_dark:
            bg = '#1a1a2e'
            fg = '#c9d1d9'
            accent = '#58a6ff'
            sub = '#8b949e'
        else:
            bg = '#ffffff'
            fg = '#24292f'
            accent = '#1565c0'
            sub = '#57606a'

        welcome_html = f"""
        <html>
        <head><style>
            body {{
                font-family: 'Segoe UI', Tahoma, sans-serif;
                background: {bg};
                color: {fg};
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                text-align: center;
                direction: rtl;
            }}
            .welcome {{
                padding: 40px;
            }}
            .logo {{
                font-size: 48px;
                font-weight: bold;
                color: {accent};
                margin-bottom: 15px;
            }}
            .tagline {{
                font-size: 18px;
                color: {sub};
                margin-bottom: 30px;
            }}
            .features {{
                text-align: right;
                max-width: 400px;
                margin: 0 auto;
            }}
            .feature {{
                padding: 8px 0;
                font-size: 14px;
                color: {fg};
            }}
            .feature span {{
                color: {accent};
                margin-left: 8px;
            }}
        </style></head>
        <body>
        <div class="welcome">
            <div class="logo">📖 offdic</div>
            <div class="tagline">دیکشنری آفلاین انگلیسی-فارسی</div>
            <div class="features">
                <div class="feature"><span>✓</span> جستجوی آفلاین کلمات انگلیسی و فارسی</div>
                <div class="feature"><span>✓</span> معانی، مترادف، متضاد و جملات نمونه</div>
                <div class="feature"><span>✓</span> اشکال مختلف کلمه (past, plural, ...)</div>
                <div class="feature"><span>✓</span> دسته‌بندی موضوعی کلمات</div>
                <div class="feature"><span>✓</span> سطح CEFR (A1 تا C2)</div>
                <div class="feature"><span>✓</span> بدون تبلیغات، بدون ثبت‌نام، کاملا رایگان</div>
                <div class="feature"><span>✓</span> تم روشن و تاریک</div>
            </div>
            <div style="margin-top:30px;color:{sub};font-size:13px;">
                کلمه‌ای را در کادر بالا جستجو کنید
            </div>
        </div>
        </body>
        </html>
        """
        self.result_view.setHtml(welcome_html)

    def _on_search_text_changed(self, text):
        """Handle search text change with debouncing."""
        self.clear_btn.setVisible(bool(text.strip()))

        if not text.strip():
            self.suggestions_list.clear()
            self.suggestions_list.setVisible(False)
            return

        # Debounce - wait 200ms before searching
        if hasattr(self, '_search_timer'):
            self._search_timer.stop()
        self._search_timer = QTimer()
        self._search_timer.setSingleShot(True)
        self._search_timer.timeout.connect(lambda: self._do_search(text))
        self._search_timer.start(200)

    def _do_search(self, word):
        """Perform the search."""
        if not word.strip():
            return

        worker = SearchWorker(self.db, word)
        worker.signals.finished.connect(self._on_search_results)
        worker.signals.error.connect(self._on_search_error)
        self.thread_pool.start(worker)

    def _on_search_results(self, results):
        """Handle search results."""
        self.suggestions_list.clear()

        if not results:
            self.suggestions_list.setVisible(False)
            return

        for r in results:
            item = QListWidgetItem()
            item.setText(r['word'])
            item.setData(Qt.UserRole, r)
            self.suggestions_list.addItem(item)

        self.suggestions_list.setVisible(True)
        self.suggestions_list.setFixedWidth(
            min(300, max(200, self.suggestions_list.sizeHintForColumn(0) + 30))
        )
        self.statusBar().showMessage(f"{len(results)} نتیجه یافت شد")

    def _on_search_error(self, error):
        """Handle search error."""
        self.statusBar().showMessage(f"خطا: {error}")

    def _on_suggestion_clicked(self, item):
        """Handle suggestion click - show details."""
        data = item.data(Qt.UserRole)
        if data:
            self._show_word_details(data['word_id'], data['lang'])

    def _on_suggestion_double_clicked(self, item):
        """Handle suggestion double click - show details."""
        data = item.data(Qt.UserRole)
        if data:
            self._show_word_details(data['word_id'], data['lang'])

    def _on_search_enter(self):
        """Handle Enter key in search."""
        text = self.search_input.text().strip()
        if not text:
            return

        # First try direct search
        self._load_direct_search(text)

    def _load_direct_search(self, word):
        """Search for exact word match and display result."""
        self.current_word = word
        self.statusBar().showMessage("در حال جستجو...")

        worker = DirectSearchWorker(self.db, word)
        worker.signals.finished.connect(self._on_detail_result)
        worker.signals.error.connect(self._on_detail_error)
        self.thread_pool.start(worker)

    def _show_word_details(self, word_id, lang):
        """Show word details by ID."""
        self.statusBar().showMessage("در حال بارگذاری...")

        worker = DetailWorker(self.db, word_id, lang)
        worker.signals.finished.connect(self._on_detail_result)
        worker.signals.error.connect(self._on_detail_error)
        self.thread_pool.start(worker)

    def _on_detail_result(self, data):
        """Display word detail result."""
        if data is None:
            # No exact match found - try search again
            self._show_not_found(self.search_input.text().strip())
            return

        lang = data.get('lang', detect_language(data.get('word', '')))
        if lang == 'english':
            html = self.html_gen.generate_english_html(data, self.is_dark)
        else:
            html = self.html_gen.generate_persian_html(data, self.is_dark)

        self.result_view.setHtml(html)
        self.current_word = data.get('word', '')
        self.search_input.setText(self.current_word)

        # Hide suggestions
        self.suggestions_list.setVisible(False)
        self.statusBar().showMessage(f"نمایش نتیجه: {self.current_word}")

    def _on_detail_error(self, error):
        """Handle detail loading error."""
        self.statusBar().showMessage(f"خطا: {error}")

    def _show_not_found(self, word):
        """Show not found page."""
        if self.is_dark:
            bg = '#1a1a2e'
            fg = '#c9d1d9'
            accent = '#58a6ff'
        else:
            bg = '#ffffff'
            fg = '#24292f'
            accent = '#1565c0'

        html = f"""
        <html>
        <head><style>
            body {{
                font-family: 'Segoe UI', Tahoma, sans-serif;
                background: {bg};
                color: {fg};
                display: flex;
                justify-content: center;
                align-items: center;
                height: 80vh;
                text-align: center;
                direction: rtl;
            }}
            .not-found {{
                padding: 40px;
            }}
            .icon {{ font-size: 48px; margin-bottom: 15px; }}
            .title {{ font-size: 20px; font-weight: bold; margin-bottom: 10px; }}
            .subtitle {{ font-size: 14px; color: #888; }}
            .word {{ color: {accent}; font-size: 24px; margin: 10px 0; direction: ltr; }}
        </style></head>
        <body>
        <div class="not-found">
            <div class="icon">🔍</div>
            <div class="title">کلمه یافت نشد</div>
            <div class="word">"{word}"</div>
            <div class="subtitle">لطفاً املای کلمه را بررسی کنید یا کلمه دیگری جستجو کنید</div>
        </div>
        </body>
        </html>
        """
        self.result_view.setHtml(html)
        self.statusBar().showMessage(f"کلمه '{word}' یافت نشد")

    def _clear_search(self):
        """Clear search input."""
        self.search_input.clear()
        self.suggestions_list.clear()
        self.suggestions_list.setVisible(False)
        self.search_input.setFocus()

    def keyPressEvent(self, event):
        """Handle key events."""
        if event.key() == Qt.Key_Escape:
            self._clear_search()
        elif event.key() == Qt.Key_Down and self.suggestions_list.isVisible():
            self.suggestions_list.setFocus()
            if self.suggestions_list.count() > 0:
                self.suggestions_list.setCurrentRow(0)
        else:
            super().keyPressEvent(event)

    def closeEvent(self, event):
        """Handle close event."""
        if self.db:
            self.db.close()
        event.accept()


# ============================================================================
# Entry Point
# ============================================================================

def main():
    # High DPI support
    QApplication.setAttribute(Qt.AA_EnableHighDpiScaling, True)
    QApplication.setAttribute(Qt.AA_UseHighDpiPixmaps, True)

    app = QApplication(sys.argv)
    app.setApplicationName("offdic")
    app.setApplicationDisplayName("offdic - دیکشنری آفلاین")

    # Set default font
    font = QFont("Segoe UI", 10)
    app.setFont(font)

    window = MainWindow()
    window.show()

    sys.exit(app.exec_())


if __name__ == '__main__':
    main()
