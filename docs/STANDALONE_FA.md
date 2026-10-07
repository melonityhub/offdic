# خروجی مستقل

`tools/export_standalone.py` یک آرشیو منبع تک‌قابل‌بازتولید می‌سازد که هیچ‌کدام از پوشه‌های مرجع
(`sourcecode/` دیکامپایل‌شده، `dict/` اسمالی، `res/` و `assets/` استخراج‌شدهٔ اصلی)، `.git`،
خروجی build یا دیتابیس کامل را در بر نمی‌گیرد.

```sh
python3 tools/export_standalone.py
# artifacts/offdic-standalone.zip
```

آرشیو را در یک پوشهٔ خالی دیگر استخراج کنید؛ پروژهٔ `offdic-standalone` مستقل باید بدون نیاز به
مخزن اصلی بیلد و تست شود:

```sh
cd offdic-standalone
./gradlew :app:assembleDebug
python3 tools/test_contract.py && python3 tools/test_gateway.py && python3 tools/test_standalone.py
```

فهرست فایل‌ها با یک allowlist صریح تعیین می‌شود (تابع `entries` در اسکریپت) و اگر ورودی‌ای گم
باشد، اسکریپت با خطا متوقف می‌شود. `SOURCE_MANIFEST.json` داخل آرشیو هش SHA256 هر فایل را دارد
تا یکپارچگی خروجی بررسی شود. آزمون `tools/test_standalone.py` همین موارد را می‌سنجد.

## شاخهٔ مستقل

این خروجی برای اشتراک‌گذاری سورس «قابل‌بازتولید» بدون تاریخچهٔ داخلی و منابع اصلی است. مجوز
فونت‌های مالکیتی و حق استفاده از منابع اپ اصلی پیش از انتشار مستقل باید بررسی شود؛ متن مجوز
موجود همراه فونت‌ها حفظ شده است.
