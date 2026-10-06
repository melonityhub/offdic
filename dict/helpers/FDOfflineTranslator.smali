.class public final Lfast/dic/dict/helpers/FDOfflineTranslator;
.super Ljava/lang/Object;
.source "FDOfflineTranslator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDOfflineTranslator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDOfflineTranslator.kt\nfast/dic/dict/helpers/FDOfflineTranslator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J>\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192&\u0010\u001a\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0012\u000c\u0012\n\u0018\u00010\u001cj\u0004\u0018\u0001`\u001d\u0012\u0004\u0012\u00020\u000b0\u001bj\u0002`\u001eJ\u001e\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0086@\u00a2\u0006\u0002\u0010 J.\u0010\u0015\u001a\u00020\u000b2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0018\u0010\u001a\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\"\u0012\u0004\u0012\u00020\u000b0$R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lfast/dic/dict/helpers/FDOfflineTranslator;",
        "",
        "<init>",
        "()V",
        "enToPeOptions",
        "Lcom/google/mlkit/nl/translate/TranslatorOptions;",
        "peToEnOptions",
        "englishPersianTranslator",
        "Lcom/google/mlkit/nl/translate/Translator;",
        "persianEnglishTranslator",
        "downloadModelIfNeeded",
        "",
        "copyOfflineModel",
        "context",
        "Landroid/content/Context;",
        "unzip",
        "zipFile",
        "Ljava/io/File;",
        "location",
        "inStream",
        "Ljava/util/zip/ZipInputStream;",
        "translateAsync",
        "sentence",
        "",
        "language",
        "",
        "callback",
        "Lkotlin/Function2;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Lfast/dic/dict/helpers/OfflineTranslatorCallback;",
        "translate",
        "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "blocks",
        "",
        "Lcom/google/mlkit/vision/text/Text$TextBlock;",
        "Lkotlin/Function1;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lfast/dic/dict/helpers/FDOfflineTranslator;

.field private static enToPeOptions:Lcom/google/mlkit/nl/translate/TranslatorOptions;

.field private static final englishPersianTranslator:Lcom/google/mlkit/nl/translate/Translator;

.field private static peToEnOptions:Lcom/google/mlkit/nl/translate/TranslatorOptions;

.field private static final persianEnglishTranslator:Lcom/google/mlkit/nl/translate/Translator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfast/dic/dict/helpers/FDOfflineTranslator;

    invoke-direct {v0}, Lfast/dic/dict/helpers/FDOfflineTranslator;-><init>()V

    sput-object v0, Lfast/dic/dict/helpers/FDOfflineTranslator;->INSTANCE:Lfast/dic/dict/helpers/FDOfflineTranslator;

    .line 36
    new-instance v0, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;-><init>()V

    .line 37
    const-string v1, "en"

    invoke-virtual {v0, v1}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;->setSourceLanguage(Ljava/lang/String;)Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;

    move-result-object v0

    .line 38
    const-string v2, "fa"

    invoke-virtual {v0, v2}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;->setTargetLanguage(Ljava/lang/String;)Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;->build()Lcom/google/mlkit/nl/translate/TranslatorOptions;

    move-result-object v0

    const-string v3, "build(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lfast/dic/dict/helpers/FDOfflineTranslator;->enToPeOptions:Lcom/google/mlkit/nl/translate/TranslatorOptions;

    .line 40
    new-instance v0, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;

    invoke-direct {v0}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;-><init>()V

    .line 41
    invoke-virtual {v0, v2}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;->setSourceLanguage(Ljava/lang/String;)Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;->setTargetLanguage(Ljava/lang/String;)Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/mlkit/nl/translate/TranslatorOptions$Builder;->build()Lcom/google/mlkit/nl/translate/TranslatorOptions;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lfast/dic/dict/helpers/FDOfflineTranslator;->peToEnOptions:Lcom/google/mlkit/nl/translate/TranslatorOptions;

    .line 44
    sget-object v0, Lfast/dic/dict/helpers/FDOfflineTranslator;->enToPeOptions:Lcom/google/mlkit/nl/translate/TranslatorOptions;

    invoke-static {v0}, Lcom/google/mlkit/nl/translate/Translation;->getClient(Lcom/google/mlkit/nl/translate/TranslatorOptions;)Lcom/google/mlkit/nl/translate/Translator;

    move-result-object v0

    const-string v1, "getClient(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lfast/dic/dict/helpers/FDOfflineTranslator;->englishPersianTranslator:Lcom/google/mlkit/nl/translate/Translator;

    .line 45
    sget-object v0, Lfast/dic/dict/helpers/FDOfflineTranslator;->peToEnOptions:Lcom/google/mlkit/nl/translate/TranslatorOptions;

    invoke-static {v0}, Lcom/google/mlkit/nl/translate/Translation;->getClient(Lcom/google/mlkit/nl/translate/TranslatorOptions;)Lcom/google/mlkit/nl/translate/Translator;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lfast/dic/dict/helpers/FDOfflineTranslator;->persianEnglishTranslator:Lcom/google/mlkit/nl/translate/Translator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final downloadModelIfNeeded$lambda$0(Ljava/lang/Void;)Lkotlin/Unit;
    .locals 2

    .line 53
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Offline translator model successfully downloaded."

    invoke-virtual {p0, v1, v0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final downloadModelIfNeeded$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final downloadModelIfNeeded$lambda$2(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "exception"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to download offline translator model. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final translateAsync$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final translateAsync$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 146
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final translateAsync$lambda$2(Lkotlin/jvm/functions/Function2;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 151
    invoke-interface {p0, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final unzip(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    .line 91
    :try_start_0
    new-instance p0, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast p0, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object p1, p0

    check-cast p1, Ljava/util/zip/ZipInputStream;

    .line 92
    sget-object v0, Lfast/dic/dict/helpers/FDOfflineTranslator;->INSTANCE:Lfast/dic/dict/helpers/FDOfflineTranslator;

    invoke-direct {v0, p1, p2}, Lfast/dic/dict/helpers/FDOfflineTranslator;->unzip(Ljava/util/zip/ZipInputStream;Ljava/io/File;)V

    .line 93
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 91
    :try_start_2
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 95
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can not unzip model right now + "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    return-void
.end method

.method private final unzip(Ljava/util/zip/ZipInputStream;Ljava/io/File;)V
    .locals 6

    .line 101
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Location file must be directory or not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 106
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v0, "separator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p2, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 116
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_6

    .line 118
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 120
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 123
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_5

    .line 124
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 126
    :cond_5
    new-instance p2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v4, Ljava/io/OutputStream;

    invoke-direct {p2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast p2, Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v3, p2

    check-cast v3, Ljava/io/BufferedOutputStream;

    .line 127
    move-object v4, p1

    check-cast v4, Ljava/io/InputStream;

    check-cast v3, Ljava/io/OutputStream;

    invoke-static {v4, v3, v0, v1, v2}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :try_start_3
    invoke-static {p2, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {p2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p2

    .line 131
    :try_start_6
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unzip exception inner + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p2, v4}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p0

    .line 135
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unzip exception + "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final copyOfflineModel(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "no_backup"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.mlkit.translate.models"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "en_fa"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "translate_enfa"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const-string p1, "MLKit translator model is exists."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mlkit_translator_model.zip"

    invoke-direct {p1, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/OutputStream;

    .line 76
    sget-object v3, Lfast/dic/dict/providers/FDContentProvider;->Companion:Lfast/dic/dict/providers/FDContentProvider$Companion;

    invoke-virtual {v3}, Lfast/dic/dict/providers/FDContentProvider$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0x400

    .line 79
    new-array v3, v3, [B

    .line 80
    sget-object v4, Lfast/dic/dict/providers/FDContentProvider;->Companion:Lfast/dic/dict/providers/FDContentProvider$Companion;

    invoke-virtual {v4}, Lfast/dic/dict/providers/FDContentProvider$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v5, Lfast/dic/dict/R$raw;->mlkit_translator_model:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "openRawResource(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :goto_1
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_3

    .line 82
    invoke-virtual {v1, v3, v2, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 86
    invoke-direct {p0, p1, v0}, Lfast/dic/dict/helpers/FDOfflineTranslator;->unzip(Ljava/io/File;Ljava/io/File;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final downloadModelIfNeeded()V
    .locals 2

    .line 48
    new-instance p0, Lcom/google/mlkit/common/model/DownloadConditions$Builder;

    invoke-direct {p0}, Lcom/google/mlkit/common/model/DownloadConditions$Builder;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/google/mlkit/common/model/DownloadConditions$Builder;->build()Lcom/google/mlkit/common/model/DownloadConditions;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lfast/dic/dict/helpers/FDOfflineTranslator;->englishPersianTranslator:Lcom/google/mlkit/nl/translate/Translator;

    invoke-interface {v0, p0}, Lcom/google/mlkit/nl/translate/Translator;->downloadModelIfNeeded(Lcom/google/mlkit/common/model/DownloadConditions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 52
    new-instance v0, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 55
    new-instance v0, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final translate(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;

    iget v1, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p0, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->label:I

    sub-int/2addr p0, v2

    iput p0, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;

    invoke-direct {v0, p0, p3}, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;-><init>(Lfast/dic/dict/helpers/FDOfflineTranslator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p3

    .line 155
    iget v1, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget p1, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->I$0:I

    iget-object p1, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    iget-object p1, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 156
    sget-object p0, Lfast/dic/dict/utils/Category;->English:Lfast/dic/dict/utils/Category;

    invoke-virtual {p0}, Lfast/dic/dict/utils/Category;->getRawValue()I

    move-result p0

    if-ne p2, p0, :cond_3

    .line 157
    sget-object p0, Lfast/dic/dict/helpers/FDOfflineTranslator;->englishPersianTranslator:Lcom/google/mlkit/nl/translate/Translator;

    invoke-interface {p0, p1}, Lcom/google/mlkit/nl/translate/Translator;->translate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    goto :goto_1

    .line 159
    :cond_3
    sget-object p0, Lfast/dic/dict/helpers/FDOfflineTranslator;->persianEnglishTranslator:Lcom/google/mlkit/nl/translate/Translator;

    invoke-interface {p0, p1}, Lcom/google/mlkit/nl/translate/Translator;->translate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 156
    :goto_1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 162
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->L$0:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->I$0:I

    iput v2, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->label:I

    invoke-static {p0, v0}, Lfast/dic/dict/helpers/FDOfflineTranslatorKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_4

    return-object p3

    :cond_4
    :goto_2
    const-string p1, "await(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final translateAsync(Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "sentence"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object p0, Lfast/dic/dict/utils/Category;->English:Lfast/dic/dict/utils/Category;

    invoke-virtual {p0}, Lfast/dic/dict/utils/Category;->getRawValue()I

    move-result p0

    if-ne p2, p0, :cond_0

    .line 141
    sget-object p0, Lfast/dic/dict/helpers/FDOfflineTranslator;->englishPersianTranslator:Lcom/google/mlkit/nl/translate/Translator;

    invoke-interface {p0, p1}, Lcom/google/mlkit/nl/translate/Translator;->translate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    goto :goto_0

    .line 143
    :cond_0
    sget-object p0, Lfast/dic/dict/helpers/FDOfflineTranslator;->persianEnglishTranslator:Lcom/google/mlkit/nl/translate/Translator;

    invoke-interface {p0, p1}, Lcom/google/mlkit/nl/translate/Translator;->translate(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 140
    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 146
    new-instance p1, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3}, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function2;)V

    new-instance p2, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda4;

    invoke-direct {p2, p1}, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 150
    new-instance p1, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda5;

    invoke-direct {p1, p3}, Lfast/dic/dict/helpers/FDOfflineTranslator$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final translateAsync(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "blocks"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance p0, Lfast/dic/dict/utils/FDCategory;

    invoke-direct {p0}, Lfast/dic/dict/utils/FDCategory;-><init>()V

    .line 168
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, p0, v2}, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lfast/dic/dict/utils/FDCategory;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
