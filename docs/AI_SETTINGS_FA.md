# تنظیمات AI / API

قابلیت‌های هوش مصنوعی برنامه اختیاری‌اند و به هیچ سرویس ابری داخلی متصل نیستند. برنامه با هر
endpoint سازگار با OpenAI (Chat Completions) صحبت می‌کند؛ شما آدرس، مدل، کلید، دستور سیستم و
timeout را در «بیشتر ← تنظیمات AI / API» وارد می‌کنید و «آزمایش اتصال» سلامت آن را می‌سنجد.

## چرا gateway؟

اگر نمی‌خواهید کلید واقعی مدل روی دستگاه باشد، سرویس کوچک `gateway/server.py` را پشت HTTPS
مستقر کنید و به مدل واقعی متصل‌شده تنظیم کنید. در این حالت دستگاه فقط آدرس gateway شما را
می‌شناسد و کلید مدل روی سرور می‌ماند.

```sh
export OFFDIC_UPSTREAM_URL="https://api.example.com/v1/chat/completions"
export OFFDIC_UPSTREAM_KEY="sk-..."
export OFFDIC_MODEL="gpt-4o-mini"
python3 gateway/server.py   # روی 0.0.0.0:8000؛ پشت HTTPS قرار دهید
```

متغیرهای محیطی: `OFFDIC_UPSTREAM_URL`، `OFFDIC_UPSTREAM_KEY`، `OFFDIC_MODEL`، `OFFDIC_TIMEOUT`،
`OFFDIC_HOST`، `OFFDIC_PORT`. endpointها: `GET /healthz`، `GET /v1/models`،
`POST /v1/chat/completions`.

## محدودیت‌ها

- کلید و endpoint فقط در SharedPreferences خصوصی برنامه ذخیره می‌شوند و تنها در درخواستی که خود
  کاربر می‌فرستد استفاده می‌شوند.
- ترجمهٔ متن و OCR از مدل‌های روی‌دستگاه ML Kit استفاده می‌کنند و برای بار اول به دانلود مدل
  ترجمه (اینترنت) نیاز دارند؛ پس از آن آفلاین کار می‌کنند.
- بدون تنظیم endpoint، تب «هوش مصنوعی» و «ارسال به AI» پیام راهنما نشان می‌دهند و بقیهٔ برنامه
  کاملاً آفلاین می‌ماند.
