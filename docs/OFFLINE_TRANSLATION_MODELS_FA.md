# مدل‌های ترجمهٔ آفلاین (ML Kit) — چیست، از کجا دانلود می‌شود، هش لازم دارد؟

این سند فقط بر پایهٔ چیزهایی است که در همین مخزن یا در سورس رسمی/باز‌مهندسی‌شدهٔ ML Kit قابل بررسی است:
فایل متادیتای مدل‌ها، ZIP مدل موجود در مخزن، سورس اصلی دیکامپایل‌شده و کلاس‌های داخلی `com.google.mlkit`.
هیچ ادعایی دربارهٔ چیزی که بررسی نشده، اینجا نیست.

## ۱) مدل‌ها چیستند؟

اپ برای ترجمهٔ متن از **ML Kit On-device Translation** استفاده می‌کند (`com.google.mlkit:translate`، در اپ جدید نسخهٔ `17.0.3`).
این مدل‌ها همان مدل‌های حالت آفلاین Google Translate هستند و **فقط انگلیسی ↔ هر زبان** آموزش دیده‌اند؛
ترجمهٔ بین دو زبان غیرانگلیسی از انگلیسی به‌عنوان واسطه انجام می‌شود.

مدل هر زبان یک بستهٔ **RNN-NMT** (شبکهٔ رمزگذار/رمزگشای بازگشتی) است، نه یک فایل `.tflite` ساده. محتوای
بستهٔ فارسی/انگلیسی (`en_fa`) در همین مخزن این‌هاست:

| گروه فایل | نمونه | کار |
|---|---|---|
| گراف‌های مدل | `translate_enfa/translation_model.pb`، `translation_model_encoder_swizzled_birnn_0..2.bipe`، `translation_model_decoder_init_0.bipe`، `translation_model_decoder_step_0.bipe`، `..._embed_ids_0.bipe` | رمزگذار/رمزگشای NMT جهت en→fa |
| گراف جهت مخالف | `translate_faen/...` (همان مجموعه) | NMT جهت fa→en |
| پردازش متن | `processor_spec.pb`، `resources/src_wpm_model.model/.vocab`، `tgt_wpm_model.model/.vocab` | WordPiece و پیش/پس‌پردازش |
| دیکشنری دوزبانه | `merged_dict_en_fa_25_from_en.bin`، `_from_fa.bin`، `_both.bin`، `_update.bin` | معادل‌یابی واژه/نویسه‌گردانی |

- پسوند `_25` در نام دیکشنری، همان مقدار `VARIANTS.PKG_HIGH = "25"` در متادیتاست.
- هر بسته **دو جهت** را با هم دارد (`translate_enfa` و `translate_faen`)، به‌همین دلیل حجم یک بستهٔ کامل ~۴۰ مگابایت است.

## ۲) از کجا دانلود می‌شود؟

دانلود کار خودِ SDK است، نه اپ؛ اپ فقط `Translator.downloadModelIfNeeded()` را صدا می‌زند.
آدرس‌ها از فایل متادیتای همان نسخهٔ SDK ساخته می‌شود. در کلاس داخلی
`com.google.mlkit.nl.translate.internal.zzu` (نسخهٔ `translate@17.0.1`) صریحاً این دو الگو آمده است:

```
https://redirector.gvt1.com/edgedl/translate/offline/%s/high/%s/%s.zip
https://dl.google.com/translate/offline/%s/high/%s/%s.zip
```

و جای‌گذارها با `String.format(template, "v5", "r29", "<pair>")` پر می‌شوند؛ یعنی برای فارسی:

```
https://dl.google.com/translate/offline/v5/high/r29/en_fa.zip
```

| بخش آدرس | معنی | مقدار برای فارسی |
|---|---|---|
| `v5` | نسخهٔ قالب متادیتا (`"V": 5` در `res/raw/translate_models_metadata.json`) | ۵ |
| `high` | ردهٔ بسته (`PKG_HIGH`) | high |
| `r29` | ریویژن مدل (`"RV": 29`) | ۲۹ |
| `en_fa.zip` | نام بستهٔ زوج زبان | `en_fa` |

نکته‌ها:

- `res/raw/translate_models_metadata.json` فایل خودِ SDK است (`R.raw.translate_models_metadata`) که از AAR در منابع اپ ادغام شده؛
  `PKG_HIGH` ۵۸ زوج زبان و `PKG_LOW` ۲۸ زوج دارد (`VARIANTS` = `{"PKG_HIGH":"25","PKG_LOW":"02"}`).
- مدل فارسی فقط در `PKG_HIGH` است؛ ریویژن کل `PKG_HIGH` عدد ۲۹ است و `PKG_LOW` ریویژن ۱۱/۱۳ با حجم ~۱.۵–۳ مگابایت.
- پس از دانلود، بسته در مسیر خصوصیِ اپ باز می‌شود:
  `context.noBackupFilesDir/com.google.mlkit.translate.models/<pair>/` (در سورس اصلی همین مخزن، معادلِ آن
  `getApplicationInfo().dataDir + "/no_backup/com.google.mlkit.translate.models/en_fa/translate_enfa"` است).
  یعنی مدل در backup سیستم نمی‌آید و با پاک‌کردن داده‌های اپ می‌رود.
- اولین اجرا بدون اینترنت، امکان ترجمه ندارد؛ بعد از یک‌بار دانلود، ترجمهٔ آن زوج زبان آفلاین است.

## ۳) عددهای دقیق مدل فارسی (از متادیتای همین مخزن)

| کلید | مقدار | معنی |
|---|---|---|
| `DL_SZ` | 32,405,428 بایت (~۳۰.۹ مبی‌بایت) | حجم فایل ZIP دانلودی |
| `SZ` | 39,928,876 بایت (~۳۸.۱ مبی‌بایت) | حجم باز‌شدهٔ مدل (بدون ZIP) |
| `RV` | 29 | ریویژن مدل |
| `HASH` | `39603ed8f06fe81f0e21b26181145e163594df96cfbb375d9e6209472a46485c` | SHA-256 بستهٔ دانلودی |
| `CAPS.L1` / `CAPS.L2` | `NMT, TRANSLIT, L2` / `NMT, TRANSLIT, L1` | قابلیت‌های ثبت‌شدهٔ هر جهت؛ حداقل شامل `NMT` (ترجمهٔ عصبی) و `TRANSLIT` (نویسه‌گردانی). معنی دقیق برچسب `L1/L2` در سورس بستهٔ گوگل مستند نشده است |

راستی‌آزمایی داخلی: مجموع حجم ۳۸ فایل مدل داخل `res/raw/mlkit_translator_model.zip` در همین مخزن
**دقیقاً 39,928,876 بایت = `SZ`** است؛ پس محتوای مدل با نسخهٔ گوگل یکی است.

## ۴) هش لازم دارد؟ بله

۱. **SDK خودش هش را بررسی می‌کند.** هر مدل در متادیتا فیلد `HASH` (SHA-256) دارد. کلاس داخلی
   `ModelUtils.zza(File, String)` هش فایل دانلودی را حساب می‌کند و اگر با مقدار متادیتا نخواند،
   `RemoteModelFileManager` خطای `MlKitException("Hash does not match with expected", 102)` می‌دهد.
   یعنی هش، مکانیزم سلامت مدل در خود ML Kit است، نه یک چیز اختیاری.

۲. **اگر خودتان میزبانی/بسته‌بندی کنید، باز هم هش لازم است.** برای بررسی سالم‌بودن دانلود (و یکسان‌بودن
   با نسخهٔ گوگل) از همان `HASH` استفاده کنید:

```bash
curl -L -o en_fa.zip https://dl.google.com/translate/offline/v5/high/r29/en_fa.zip
sha256sum en_fa.zip
# انتظار: 39603ed8f06fe81f0e21b26181145e163594df96cfbb375d9e6209472a46485c
unzip -l en_fa.zip | tail -1   # حجم بازشده باید 39,928,876 بایت باشد
```

۳. **ZIP موجود در همین مخزن با هش منتشرشده نمی‌خواند و طبیعی است.** فایل
   `res/raw/mlkit_translator_model.zip` یک اسنپ‌شات از پوشهٔ `no_backup` روی دستگاه است، نه خودِ فایل گوگل:

| ویژگی | مقدار |
|---|---|
| حجم فایل ZIP مخزن | 32,417,537 بایت (`DL_SZ` + 12,109) |
| SHA-256 فایل ZIP مخزن | `2d276a8303a1202532fd0497ef7235009ddfeb66eaa7914849b61a4cede3490b` |
| محتوای اضافه (غیرمدل) | `com.google.mlkit.RemoteConfig`، `com.google.mlkit.InstallationId`، `com.google.android.gms.appid-no-backup`، `androidx.work.workdb` (+ `-wal`، `-shm`) |

   پس این فایل را نمی‌توان با `HASH` گوگل اعتبارسنجی کرد (فقط محتوای مدلش با گوگل یکی است، نه کانتینرش).

۴. **و اما نکتهٔ مهم برای این پروژه:** مسیر `copyOfflineModel()` در سورس اصلی (فایل `sourcecode/helpers/FDOfflineTranslator.java`)
   از `R.raw.mlkit_translator_model` استخراج می‌کند و **فقط وجود پوشهٔ `translate_enfa` را چک می‌کند**؛ هیچ بررسی هش یا
   اندازه‌ای انجام نمی‌شود. اگر آن استخراج نیمه‌کاره بماند یا فایل ZIP خراب باشد، مدل خراب تلقی می‌شود و دانلود
   رسمی هم دیگر انجام نمی‌شود. اگر این مسیر در اپ جدید پورت شود، باید قبل از استخراج، هش/اندازهٔ بسته را بررسی کنید.

## ۵) وضعیت اپ جدید در این مخزن

- `app/src/main/java/org/offdic/LanguageToolsActivity.kt` فقط `Translation.getClient(...)` و `downloadModelIfNeeded()`
  را صدا می‌زند؛ هیچ مدلی در APK نیست و مسیر دانلود رسمی گوگل استفاده می‌شود (بدون شرط Wi-Fi در کد فعلی).
- سورس اصلی (`FDApplication.onCreate`) برعکس، در استارت اپ `copyOfflineModel()` را در یک کوروتین صدا می‌زند و
  بلافاصله بعدش `downloadModelIfNeeded()` را؛ یعنی «کپی آفلاین + دوباره‌پرسی از گوگل».
- چون ریویژن مدل داخل متادیتای همان نسخهٔ SDK قفل شده (`v5/r29`)، اسنپ‌شات قدیمی اگر روزی `RV` بالاتر برود
  دیگر معتبر نیست و SDK دوباره دانلود می‌کند.
- بسته‌بندی فایل ۳۲ مگابایتی مدل گوگل داخل APK، جدای از حجم، مسئلهٔ مجوز توزیع هم دارد؛ متادیتا و مدل‌ها محصول
  گوگل‌اند و مجوز صریحی برای بازتوزیع در اپ شخص ثالث روی این مخزن دیده نشد.

## ۶) اگر ترجمهٔ آفلاین بدون Google لازم باشد

جایگزین‌های متداول (خارج از ML Kit و بدون وابستگی به Play Services):

- **NLLB-200** — `facebook/nllb-200-distilled-600M`؛ فارسی با کد `pes_Arab` پشتیبانی می‌شود.
- **mT5/ParsinLU روی دادهٔ OPUS** — مثل `persiannlp/mt5-{small,base,large}-parsinlu-opus-translation_fa_en` (fa→en)
  و مدل‌های `UI-Isfahan/mt5-*-opus-en-fa` (en→fa).
- زوج مستقیم `Helsinki-NLP/opus-mt-en-fa` در HF وجود ندارد (۴۰۴)، پس برای فارسی روی OPUS-MT خام حساب نکنید.

این‌ها مدل‌های Transformer هستند و برای اجرا روی موبایل به تبدیل (مثلاً ONNX Runtime Mobile / TFLite) و
موتور استنتاج خودتان نیاز دارند؛ جای‌گزین درج‌به‌درجِ ML Kit نیستند.

## ۷) منابع بررسی

- فایل‌های همین مخزن: `res/raw/translate_models_metadata.json`، `res/raw/mlkit_translator_model.zip`،
  `sourcecode/helpers/FDOfflineTranslator.java`، `sourcecode/FDApplication.java`،
  `dict/FDOfflineTranslator.smali`، `app/src/main/java/org/offdic/LanguageToolsActivity.kt`.
- کلاس‌های داخلی ML Kit (باز‌مهندسی‌شده): `com/google/mlkit/nl/translate/internal/zzu.java`
  (ساخت آدرس و خواندن `HASH`) و `com/google/mlkit/common/internal/model/ModelUtils.java` و
  `com/google/mlkit/common/sdkinternal/model/RemoteModelFileManager.java` (بررسی هش و خطای ۱۰۲).
- `LeanBitLab/LeanType` — `TranslationModelUrls.kt` با همان الگوی آدرس `…/offline/v5/high/r29/<pair>.zip`.
- مستندات رسمی: https://developers.google.com/ml-kit/language/translation/android
