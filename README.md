dic/dict:smali

sourcecode: decrepted java

[گزارش رفع خطا و بیلد واقعی](docs/BUILD_VERIFICATION_FA.md) · [ریلیز خودکار APK](docs/RELEASE_FA.md) · [تنظیمات API](docs/AI_SETTINGS_FA.md) · [خروجی مستقل](docs/STANDALONE_FA.md)

dbsample:sample of database without sqlcipher key to understand the db structure the main db is "fastdic_plain.sqlite" which is not in this repo bc it's too heave but the sample is and labeling is requierd bc some columns use codenumber instead of label like pos,etc

res:res

assets:assets

```text
app/src/main/assets/databases/fastdic_plain.sqlite
```

اگر فایل کامل وجود نداشته باشد، Gradle نمونهٔ موجود در `dbsample/sample.sqlite` را خودکار در APK بسته‌بندی می‌کند. نیازی به کپی دستی نمونه نیست. فایل بزرگ از Git نادیده گرفته می‌شود.

**راه بهتر برای دیتابیس خیلی بزرگ:** پس از نصب، از «بیشتر ← وارد کردن دیتابیس کامل SQLite» فایل را انتخاب کنید. این روش APK را حجیم نمی‌کند. دیتابیس کامل باید همان ساختار نمونه را داشته باشد. دیتابیس SQLCipher رمزدار بدون کلید قابل استفاده نیست و این پروژه کلید استخراج یا رمز را دور نمی‌زند.

راهنمای کامل: [DATABASE_FA.md](docs/DATABASE_FA.md).

## قابلیت‌های نوشته‌شده

- جستجوی پیشوندی فارسی/انگلیسی، تشخیص زبان، صفحه‌بندی و escaping کاراکترهای LIKE؛ هر ردیف نتیجه، پیش‌نمایش ترجمهٔ همان واژه را نشان می‌دهد.
- معنی، مثال، نقش دستوری با کدهای اصلی، CEFR، برچسب‌های دستوری، آوانگاری، مترادف/متضاد، شکل‌های صرفی و لینک اصطلاح‌ها.
- علاقه‌مندی، تاریخچه، کپی/اشتراک‌گذاری، دریافت متن از سایر برنامه‌ها.
- دسته‌بندی‌های دیتابیس، وارد کردن SQLite با اعتبارسنجی قبل از جایگزینی.
- تلفظ US/UK با TTS دستگاه و ورود متن با سرویس تشخیص گفتار دستگاه.
- حالت تاریک و اندازهٔ نوشته؛ نوار پنج‌بخشی و آیکن‌های اصلی، رندر نتیجه با CSS اصلی در WebView محدودشده. صفحهٔ واژه خودکفا است (CSS/فونت/آیکن درون‌خطی) و اگر WebView از کار بیفتد، معنی واژه در نمایش سادهٔ بومی نشان داده می‌شود.
- دوربین/انتخاب تصویر و OCR لاتین با پیش‌نمایش، انتخاب بلوک و بزرگ‌نمایی.
- ترجمهٔ متن انگلیسی/فارسی با ML Kit؛ آفلاین پس از دانلود اولیهٔ مدل.
- واژهٔ روز محلی و ویجت قابل resize با Worker به‌روزرسانی.
- تنظیمات AI/API برای Gateway و OpenAI-compatible Chat Completions: endpoint، مدل، کلید رمز‌شده، دستور سیستم، timeout و آزمایش اتصال. نیازمند تنظیم سرویس/مدل واقعی.

راهنمای قابلیت‌های جدید، راه‌اندازی AI و محدودیت‌ها: [FEATURES_FA.md](docs/FEATURES_FA.md). رفع باگ «Webpage not available» صفحهٔ واژه و افزودن پیش‌نمایش ترجمه در جستجو: [RESULT_PAGE_FA.md](docs/RESULT_PAGE_FA.md). OCR خط فارسی ندارد و واژهٔ روز به آرشیو سرور اصلی متصل نیست.

**این‌ها به معنای تطابق کامل رفتار یا ظاهر نیستند.** جدول فاصله‌ها، تمام قابلیت‌های باقی‌مانده و معیار پایان کار در [CHECKLIST_FA.md](docs/CHECKLIST_FA.md) است.

## باز کردن و ساخت

ریشهٔ مخزن را در Android Studio باز کنید. ابزارهای لازم:

- JDK 17
- Gradle 8.9
- Android SDK Platform 35؛ دسترسی به Google Maven و Maven Central
- حداقل اندروید دستگاه: API 26

با JDK 17 و SDK تنظیم‌شده، از Wrapper همراه پروژه استفاده کنید:

```sh
./gradlew :app:assembleDebug :app:lintDebug
./gradlew :app:connectedDebugAndroidTest  # با emulator یا دستگاه متصل
```

فایل خروجی مورد انتظار: `app/build/outputs/apk/debug/app-debug.apk`.

برای ساختن همان APKهای ریلیز روی سیستم خودتان:

```sh
./gradlew :app:assembleRelease -PappVersionName=1.0.5 -PappVersionCode=1000005 -PabiSplits=true
# app/build/outputs/apk/release/app-<abi>-release.apk
```

Wrapper استاندارد Gradle 8.9 همراه پروژه است و checksum توزیع را بررسی می‌کند. در ویندوز از `gradlew.bat` استفاده کنید؛ نصب جداگانهٔ Gradle لازم نیست.

Workflow در `.github/workflows/android.yml` بیلد، lint، تست emulator و بیلد نسخهٔ مستقل را اجرا می‌کند. بیلد نسخهٔ release (همان ورژنی که ریلیز می‌شود) هم در همین ورک‌فلو کامپایل می‌شود تا خطای ریلیز زودتر از مرج دیده شود. اجرای موفق مشخص در [گزارش بررسی](docs/BUILD_VERIFICATION_FA.md) لینک شده است.

**ریلیز خودکار:** با هر مرج به `main`، ورک‌فلوی `.github/workflows/release.yml` نسخهٔ `1.0.<شمارهٔ اجرا>` را می‌سازد، چهار APK (arm64-v8a، armeabi-v7a، x86_64 و یونیورسال)، فایل `SHA256SUMS` و `offdic-standalone.zip` را ضمیمهٔ Release می‌کند و نسخهٔ arm64 را برای آپلود در گوگل درایو روی برنچ واسط `drive-artifacts` می‌گذارد. جزئیات و روش امضا با کلید اختصاصی: [docs/RELEASE_FA.md](docs/RELEASE_FA.md).

## پروژهٔ مستقل بدون سورس اصلی

```sh
python3 tools/export_standalone.py
```

فایل `artifacts/offdic-standalone.zip` را در پوشهٔ خالی دیگری استخراج کنید. هیچ پوشهٔ Java/Smali مرجع، `.git`، خروجی build یا دیتابیس کامل داخل آن نیست. نمونهٔ دیتابیس و تمام ورودی‌های لازم برای بیلد و تست همراه آن است. توضیح شاخه/مخزن مستقل: [STANDALONE_FA.md](docs/STANDALONE_FA.md).

## بررسی‌های قابل اجرا بدون Android SDK

```sh
python3 tools/audit_original.py
python3 tools/test_contract.py
python3 tools/test_gateway.py
python3 tools/test_standalone.py
```

۱۶ آزمون میزبان پاس شده‌اند (۱۰ قرارداد/منابع، ۵ gateway با upstream ساختگی و ۱ خروجی مستقل). این آزمون‌ها جای کامپایل Kotlin، تست دستگاه، بررسی کارایی دیتابیس کامل یا مقایسهٔ تصویری را نمی‌گیرند. [گزارش بررسی](docs/REVIEW_FA.md).

## ساختار

| مسیر | کاربرد |
|---|---|
| `app/` | پروژهٔ جدید Kotlin؛ تنها سورس تولید APK |
| `sourcecode/` | Java دیکامپایل‌شدهٔ اصلی، مرجع |
| `dict/` | Smali اصلی، مرجع بازسازی متدهای ناقص |
| `res/`, `assets/`, `AndroidManifest.xml` | منابع و manifest استخراج‌شدهٔ اصلی؛ وارد بیلد جدید نمی‌شوند |
| `dbsample/` | نمونهٔ SQLite و گزارش ساختار |
| `gateway/` | سرویس مستقل AI برای استقرار پشت HTTPS و اتصال به مدل واقعی |
| `docs/` | چک‌لیست، موجودی سورس، گزارش تست و راهنمای دیتابیس |

شناسهٔ اپ جدید `org.offdic` است تا با اپ اصلی تداخل نکند. انتقال خودکار داده‌های خصوصی اپ اصلی انجام نمی‌شود. مجوز فونت‌های مالکیتی و حق استفاده از منابع اپ اصلی باید پیش از انتشار مستقل بررسی شود؛ متن مجوز موجود همراه فونت‌ها حفظ شده است.
