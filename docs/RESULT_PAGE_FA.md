# رفع باگ «Webpage not available» در صفحهٔ واژه و پیش‌نمایش ترجمه در جستجو

تاریخ: ۲۰۲۶-۱۰-۰۷

## علائم گزارش‌شده

۱. در جستجو، ترجمهٔ هر واژه زیر همان واژه نمایش داده نمی‌شد؛ فقط خودِ واژه در فهرست می‌آمد.
۲. با باز کردن واژه، WebView به‌جای نتیجه صفحهٔ خطا نشان می‌داد:

```text
data:text/html;charset=utf-8;base64
net::ERR_HTTP_RESPONSE_CODE_FAILURE
```

## ریشهٔ باگ

`ResultWebView.shouldInterceptRequest` برای **هر درخواستی** که `WebViewAssetLoader` آن را نمی‌شناخت، یک پاسخ HTTP ساختگی برمی‌گرداند:

```kotlin
WebResourceResponse("text/plain", "UTF-8", 403, "Blocked", emptyMap(), ByteArrayInputStream(ByteArray(0)))
```

سند نتیجه با `loadDataWithBaseURL(baseUrl = "https://appassets.androidplatform.net/", …)` بارگذاری می‌شد؛ WebView این محتوا را به یک نشانی `data:text/html;charset=utf-8;base64,…` تبدیل می‌کند. ناوبری همین سند اصلی هم از `shouldInterceptRequest` می‌گذرد و پاسخ ساختگی «۴۰۳» برای یک درخواست غیر-HTTP گرفته می‌شد؛ Chromium آن پاسخ را رد می‌کند و صفحهٔ خطای خود را جای نتیجه می‌گذارد. به همین دلیل در خطا، نشانی `data:…;base64` و کد `ERR_HTTP_RESPONSE_CODE_FAILURE` دیده می‌شد. CSS، فونت و آیکن‌ها هم به همین مسیر وابسته بودند؛ یعنی هر خطای کوچک در همان زنجیره، کل صفحه را از بین می‌برد.

## اصلاح انجام‌شده

۱. **صفحهٔ خودکفا:** `ResultAssets` همهٔ ارجاع‌های `https://appassets.androidplatform.net/assets/...` در `style-results.css` را با `data:` درون‌خطی جایگزین می‌کند (فونت‌های IRANSansX و آیکن‌ها). نتیجه یک‌بار در حافظه cache می‌شود.
۲. **بارگذاری مانند اپ اصلی:** `ResultWebView` اکنون با `loadDataWithBaseURL(null, html, "text/html", "UTF-8", null)` بارگذاری می‌کند؛ دقیقاً همان کاری که `WordResultFragment` و `BindingAdapterKt` در اپ اصلی می‌کنند.
۳. **حذف پاسخ ساختگی:** `shouldInterceptRequest` فقط پاسخ `WebViewAssetLoader` را برمی‌گرداند و در غیر آن `null` می‌دهد؛ یعنی WebView خودش درخواست را مدیریت می‌کند و هیچ پاسخ ۴۰۳ جعلی ساخته نمی‌شود.
۴. **دو لایه اطمینان:**
   - اگر سند از حد مجاز نشانی data (حدود ۲ مگابایت در Chromium) بزرگ شود، نسخهٔ سبک CSS بدون فونت توکار بارگذاری می‌شود.
   - اگر با این حال بارگذاری شکست بخورد (`onReceivedError`، `onReceivedHttpError`، `onRenderProcessGone`)، صفحهٔ واژه به‌صورت بومی (TextView) با همان معنی، مثال، مترادف و اصطلاح‌ها نمایش داده می‌شود و دکمهٔ «تلاش دوباره» دارد. دیگر هیچ حالتی وجود ندارد که کاربر جای ترجمه، صفحهٔ خطا ببیند.
۵. **پیش‌نمایش ترجمه در جستجو:** `Dictionary.search` و `categoryWords` و `word` یک ستون سوم برمی‌گردانند: نخستین معنی همان واژه؛ برای واژهٔ انگلیسی `english_details.persian_meaning` و برای واژهٔ فارسی `persian_details.english_meaning` — همان ستون‌هایی که `FDDatabaseManager` اصلی در فهرست پیشنهادها استفاده می‌کند (`ORDER BY position, detail_id`). فهرست علاقه‌مندی‌ها و تاریخچه هم با `Dictionary.previews()` همین پیش‌نمایش را نشان می‌دهد.
۶. **ظاهر فهرست:** هر ردیف مثل `word_suggestion_item_layout` اصلی است: واژه در بالا (۲۰sp، یک خط) و ترجمه در پایین (۱۴sp، یک خط، ellipsize) روی پس‌زمینهٔ `selectableItemBackground`.

## بررسی‌های دیگر روی صفحهٔ نتیجه

- کلاس‌های `no-js` و `is-darkmode` و ویژگی `data-theme` با هم تنظیم می‌شوند تا CSS اصلی `.results{opacity:0}` را در هیچ حالتی پنهان نکند.
- برچسب‌های شمارش‌پذیری/رسمی/لهجه به فارسی نگاشت می‌شوند و همهٔ متن دیتابیس escape می‌شود؛ JavaScript، دسترسی فایل، دسترسی محتوا و بارگذاری شبکه در WebView خاموش است.
- هدرهای CSP فقط `'unsafe-inline'` برای استایل و `data:` برای فونت/تصویر را مجاز می‌کنند و هیچ میزبان شبکه‌ای (از جمله میزبان مجازی appassets) در سیاست نمانده؛ آزمون میزبان و آزمون دستگاه هر دو این را قفل می‌کنند.
- `onRenderProcessGone` به‌جای Toast، مسیر جایگزین بومی را فعال می‌کند.
- سند خالی اولیهٔ WebView (`about:blank`) وضعیت `RENDERED` را فعال نمی‌کند؛ پس `RENDERED` همیشه یعنی «سند نتیجه تمام شد» و `FAILED` همیشه یعنی خطای همان سند.

## آزمون‌ها

- `tools/test_contract.py`: نگهبان رگرسیون `test_result_page_is_self_contained` (نبود پاسخ ساختگی، base URL برابر `null`، نبود `<link>` بیرونی)، `test_search_preview_matches_original_first_detail` و `test_word_page_falls_back_and_shows_previews`. جمعاً ۱۳ آزمون میزبان.
- `app/src/androidTest/.../ResultPageTest.kt` (دستگاهی): بارگذاری واقعی یک واژه در WebView. چون سند یک data URL است و می‌تواند پیش از چیدمان (layout) نمای تازه‌اضافه‌شده تمام شود، آزمون تا ۲۰ ثانیه نظرسنجی می‌کند تا عنوان سند همان واژه و ارتفاع محتوا بزرگ‌تر از صفر شود و در پیام خطا نشانی/وضعیت‌ها را چاپ می‌کند؛ به‌علاوه بررسی اینکه CSS درون‌خطی هیچ ارجاع بیرونی ندارد و CSP هم میزبان مجازی را نام نمی‌برد.
- `DictionaryTest.suggestionRowsCarryTheTranslationPreview` (دستگاهی): وجود پیش‌نمایش برای هر دو زبان و یکسان بودن نتیجهٔ `previews()` با ستون پیش‌نمایش `search()`.
