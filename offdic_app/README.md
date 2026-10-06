# 📖 offdic - دیکشنری آفلاین انگلیسی-فارسی

یک اپلیکیشن دسکتاپ آفلاین برای ترجمه کلمات انگلیسی به فارسی و بالعکس.

## ✨ ویژگی‌ها

- 🔍 **جستجوی هوشمند** - جستجوی کلمات انگلیسی و فارسی با پشتیبانی از GLOB matching
- 📚 **معانی کامل** - نمایش تمام معانی، اشکال مختلف کلمه، POS و سطح CEFR
- 📝 **جملات نمونه** - جملات انگلیسی و فارسی برای درک بهتر
- 🔄 **مترادف و متضاد** - مترادف‌ها و متضادهای هر کلمه
- 🏷️ **دسته‌بندی موضوعی** - دسته‌بندی کلمات در حوزه‌های مختلف (پزشکی، حقوق، ...)
- 👨‍👩‍👧‍👦 **خانواده کلمه** - نمایش کلمات هم‌ریشه
- 🌙 **تم تاریک/روشن** - امکان تغییر ظاهر
- 💯 **کاملاً رایگان** - بدون تبلیغات، بدون ثبت‌نام، بدون محدودیت
- 📱 **آفلاین** - تمام عملیات بدون نیاز به اینترنت انجام می‌شود

## 🚀 نصب و اجرا

### پیش‌نیازها
- Python 3.8 یا بالاتر
- pip (مدیر بسته پایتون)

### نصب سریع
```bash
# نصب وابستگی‌ها
pip install PyQt5 PyQtWebEngine

# اجرای برنامه
python offdic.py
```

### ساخت فایل اجرایی ویندوز
```bash
# نصب PyInstaller
pip install pyinstaller

# ساخت فایل اجرایی
pyinstaller --noconfirm --onedir --windowed --name "offdic" ^
    --add-data "fastdic_plain.sqlite;." ^
    --hidden-import "PyQt5.QtWebEngineWidgets" ^
    --hidden-import "PyQt5.QtWebEngineCore" ^
    offdic.py
```

یا از اسکریپت `build_windows.bat` استفاده کنید.

## 📁 ساختار فایل‌ها

```
offdic_app/
├── offdic.py              # فایل اصلی برنامه (GUI)
├── db_manager.py          # مدیریت دیتابیس و منطق جستجو
├── fastdic_plain.sqlite   # دیتابیس آفلاین (sample)
├── requirements.txt       # وابستگی‌ها
├── build_windows.bat      # اسکریپت ساخت برای ویندوز
└── README.md              # این فایل
```

## 📊 دیتابیس

دیتابیس `fastdic_plain.sqlite` شامل:
- **english_words** - کلمات انگلیسی با اشکال مختلف (past, plural, ...)
- **english_details** - معانی فارسی با اطلاعات CEFR, رسمی/غیررسمی
- **persian_words** - کلمات فارسی
- **persian_details** - معانی انگلیسی
- **english_sentences / persian_sentences** - جملات نمونه
- **english_synonyms_antonyms** - مترادف و متضاد
- **english_idioms** - اصطلاحات
- **english_categories / persian_categories** - دسته‌بندی‌ها
- **english_word_families** - خانواده کلمات
- **english_pos / persian_pos** - انواع کلمه (اسم، فعل، ...)
- **category_names** - نام دسته‌بندی‌ها
- **english_american_audios / english_british_audios** - فایل‌های صوتی

> ⚠️ توجه: فایل `fastdic_plain.sqlite` موجود یک نمونه (sample) است. 
> برای استفاده از دیتابیس کامل، فایل اصلی را جایگزین کنید.

## 🔑 نحوه جستجو

### جستجوی انگلیسی
- حروف کوچک خودکار
- GLOB matching: `hel*` → hello, help, ...

### جستجوی فارسی
- تبدیل حروف فارسی به کد عددی برای جستجو
- مثال: آب → `1013` → جستجو در `word_in_number`

## 🎨 کدهای انواع کلمه (POS)

| کد | انگلیسی | فارسی |
|----|---------|-------|
| 1 | noun | اسم |
| 5 | verb - transitive | فعل متعدی |
| 6 | verb - intransitive | فعل لازم |
| 7 | adjective | صفت |
| 8 | adverb | قید |
| 18 | idiom | اصطلاح |
| 20 | phrasal verb | فعل عبارتی |
| 24 | abbreviation | مخفف |

## 📋 دسته‌بندی‌ها

| کد | نام |
|----|-----|
| 3 | شیمی |
| 4 | پزشکی |
| 7 | حقوق |
| 11 | ریاضی |
| 15 | کامپیوتر |
| 21 | ورزش |
| 22 | روان‌شناسی |
| 32 | تکنولوژی |
| 41 | هنر |
| 53 | هوش مصنوعی |

## 📝 مجوز

این پروژه بر اساس سورس اپلیکیشن اندرویدی fastdic ساخته شده است.
