# گزارش بررسی و بیلد

این سند وضعیت بیلد و بررسی‌های قابل‌اجرا را ثبت می‌کند.

## بیلد اندروید (GitHub Actions)

ورک‌فلو `.github/workflows/android.yml` روی هر pull request و push:

1. `:app:assembleDebug`، `:app:assembleDebugAndroidTest` و `:app:lintDebug`
2. `:app:assembleRelease` با همان پرچم‌هایی که ریلیز استفاده می‌کند
   (`-PappVersionName=ci -PappVersionCode=1 -PabiSplits=true`) تا خطای پیکربندی ریلیز پیش از
   مرج دیده شود
3. خروجی مستقل و بیلد تأییدی آن در محیط جدا
4. تست دستگاه روی emulator API 35 (`:app:connectedDebugAndroidTest`)

ابزارهای مورد نیاز: JDK 17، Gradle (از wrapper ۸.۱۴.۵)، Android SDK Platform 35، دسترسی به Google
Maven و Maven Central. حداقل دستگاه API 26.

## بررسی‌های میزبان (بدون Android SDK)

```sh
python3 tools/test_contract.py     # ۱۴ آزمون: SQL واقعی، منابع، نگاشت برچسب‌ها، خودکفایی صفحه
python3 tools/test_gateway.py      # ۵ آزمون gateway با upstream ساختگی
python3 tools/test_standalone.py   # ۱ آزمون خروجی مستقل
```

این آزمون‌ها جای کامپایل Kotlin، تست دستگاه، بررسی کارایی دیتابیس کامل یا مقایسهٔ تصویری را
نمی‌گیرند. برای بیلد واقعی APK به JDK 17 و Android SDK نیاز است.

## خروجی مورد انتظار

`app/build/outputs/apk/debug/app-debug.apk` و برای ریلیز
`app/build/outputs/apk/release/app-<abi>-release.apk`.
