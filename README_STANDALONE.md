# Offdic — پروژهٔ مستقل Kotlin

این پوشه فقط اپ بازسازی‌شده، منابع مورد استفادهٔ آن، دیتابیس نمونه، تست‌ها و gateway اختیاری AI را دارد. سورس Java/Smali دیکامپایل‌شده و پوشه‌های مرجع پروژهٔ اصلی در آن نیستند. این خروجی هنوز ادعای تطابق صددرصدی با اپ اصلی ندارد.

## ساخت

JDK 17 و Android SDK Platform 35 لازم است. مسیر SDK را در `local.properties` با `sdk.dir=...` یا با `ANDROID_HOME` تنظیم کنید.

```sh
chmod +x gradlew
./gradlew :app:assembleDebug :app:lintDebug
./gradlew :app:connectedDebugAndroidTest  # با emulator یا دستگاه متصل
python3 tools/test_contract.py
python3 tools/test_gateway.py
```

در ویندوز از `gradlew.bat` استفاده کنید. APK در `app/build/outputs/apk/debug/app-debug.apk` قرار می‌گیرد. Gradle Wrapper نسخهٔ ۸.۹ همراه پروژه است و checksum توزیع بررسی می‌شود.

## دیتابیس

فایل کامل بدون رمز را در `app/src/main/assets/databases/fastdic_plain.sqlite` بگذارید، یا از داخل اپ وارد کنید. در نبود آن نمونه خودکار بسته‌بندی می‌شود. فایل کامل وارد Git یا ZIP خروجی نمی‌شود. راهنما: `docs/DATABASE_FA.md`.

## تنظیمات AI

«بیشتر ← تنظیمات AI / API»: نوع Gateway یا OpenAI-compatible Chat Completions، URL کامل HTTPS، نام مدل، کلید، دستور سیستم و timeout را تنظیم کنید. ذخیرهٔ کلید با Android Keystore انجام می‌شود. برای تست اتصال تأیید شما لازم است؛ ممکن است ارائه‌دهنده هزینه بگیرد. برنامه اشتراک یا تبلیغ ندارد. راهنما: `docs/AI_SETTINGS_FA.md`.

## مستقل‌سازی و انتشار

`SOURCE_MANIFEST.json` هش فایل‌های خروجی را دارد. این ZIP تاریخچهٔ Git یا کلیدهای دستگاه را ندارد. برای مخزن یا شاخهٔ جدا به `docs/STANDALONE_FA.md` مراجعه کنید. مجوز منابع و فونت‌های منتقل‌شده را پیش از انتشار مستقل بررسی کنید.

OCR لاتین است، مدل ترجمه در اولین استفاده دانلود می‌شود، AI نیازمند سرویس/مدل واقعی و واژهٔ روز محلی است. تطابق کامل رابط و بی‌باگ بودن تضمین نشده‌اند. جزئیات قابلیت‌ها در `docs/FEATURES_FA.md` است.
