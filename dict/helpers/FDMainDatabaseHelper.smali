.class public final Lfast/dic/dict/helpers/FDMainDatabaseHelper;
.super Ljava/lang/Object;
.source "FDDatabaseHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDDatabaseHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDDatabaseHelper.kt\nfast/dic/dict/helpers/FDMainDatabaseHelper\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,257:1\n37#2,2:258\n1#3:260\n*S KotlinDebug\n*F\n+ 1 FDDatabaseHelper.kt\nfast/dic/dict/helpers/FDMainDatabaseHelper\n*L\n33#1:258,2\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0008\u0001\u0010\u0004\u001a\u00020\u0005:\u0002\u0008\u0006\u001a\u0002\u0008\t\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rJ\n\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0002J\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u001a\u001a\u00020\u001bJ\u0008\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u001bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0004\u001a\u00020\u00058\u0002X\u0083\u0004\u0092\u0002\u0002\u0008\u0006\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010!\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#\u00ca\u0001\u0002\u0008&\u00a8\u0006%"
    }
    d2 = {
        "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
        "",
        "logger",
        "Lfast/dic/dict/utils/Logger;",
        "context",
        "Landroid/content/Context;",
        "Ldagger/hilt/android/qualifiers/ApplicationContext;",
        "<init>",
        "(Lfast/dic/dict/utils/Logger;Landroid/content/Context;)V",
        "Ljavax/inject/Inject;",
        "myDataBase",
        "Lnet/zetetic/database/sqlcipher/SQLiteDatabase;",
        "readyLocalStorageBeforeCopyDatabase",
        "",
        "createDatabase",
        "databaseExist",
        "openSqlCipherDB",
        "checkDataBase",
        "databasePath",
        "",
        "getDatabasePath",
        "()Ljava/lang/String;",
        "databaseFile",
        "Ljava/io/File;",
        "getDatabaseFile",
        "()Ljava/io/File;",
        "removeDatabase",
        "",
        "copyDataBase",
        "openDataBase",
        "getDatabaseSize",
        "",
        "close",
        "readableDatabase",
        "getReadableDatabase",
        "()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;",
        "Companion",
        "app",
        "Ljavax/inject/Singleton;"
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
.field private static final CB_DB_NAME:Ljava/lang/String; = "lists.sqlite"

.field public static final Companion:Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;

.field private static final DB_NAME:Ljava/lang/String; = "fastdic5.08.09.sqlite"

.field private static DB_PATH:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;
    .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
    .end annotation
.end field

.field private final logger:Lfast/dic/dict/utils/Logger;

.field private myDataBase:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->Companion:Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;

    .line 245
    const-string v0, ""

    sput-object v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->DB_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lfast/dic/dict/utils/Logger;Landroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->logger:Lfast/dic/dict/utils/Logger;

    .line 23
    iput-object p2, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->context:Landroid/content/Context;

    .line 255
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "/databases/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->DB_PATH:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getDB_PATH$cp()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->DB_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLogger$p(Lfast/dic/dict/helpers/FDMainDatabaseHelper;)Lfast/dic/dict/utils/Logger;
    .locals 0

    .line 20
    iget-object p0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->logger:Lfast/dic/dict/utils/Logger;

    return-object p0
.end method

.method public static final synthetic access$setDB_PATH$cp(Ljava/lang/String;)V
    .locals 0

    .line 20
    sput-object p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->DB_PATH:Ljava/lang/String;

    return-void
.end method

.method private final copyDataBase()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/io/File;

    sget-object v1, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->DB_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->DB_PATH:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fastdic5.08.09.sqlite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 183
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 189
    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 190
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getName(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v7, v8, v3, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 191
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 199
    :cond_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/io/OutputStream;

    const/16 v1, 0x400

    .line 202
    new-array v1, v1, [B

    .line 204
    iget-object p0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v2, Lfast/dic/dict/R$raw;->fastdic00:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "openRawResource(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    .line 206
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 208
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 211
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 212
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private final getDatabaseFile()Ljava/io/File;
    .locals 3

    .line 123
    const-string v0, "sqlcipher"

    .line 124
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :try_start_1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 135
    iget-object v1, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->context:Landroid/content/Context;

    new-instance v2, Lfast/dic/dict/helpers/FDMainDatabaseHelper$databaseFile$1;

    invoke-direct {v2, p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper$databaseFile$1;-><init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;)V

    check-cast v2, Lcom/getkeepsafe/relinker/ReLinker$LoadListener;

    invoke-static {v1, v0, v2}, Lcom/getkeepsafe/relinker/ReLinker;->loadLibrary(Landroid/content/Context;Ljava/lang/String;Lcom/getkeepsafe/relinker/ReLinker$LoadListener;)V

    .line 142
    :goto_0
    iget-object p0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->context:Landroid/content/Context;

    sget-object v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->DB_PATH:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fastdic5.08.09.sqlite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 143
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 147
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method private final getDatabasePath()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-direct {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getAbsolutePath(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final openSqlCipherDB()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;
    .locals 6

    .line 80
    :try_start_0
    invoke-direct {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->logger:Lfast/dic/dict/utils/Logger;

    const-string v2, "==> Database opened now"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance v1, Lfast/dic/dict/helpers/FDMainDatabaseHelper$openSqlCipherDB$hook$1;

    invoke-direct {v1}, Lfast/dic/dict/helpers/FDMainDatabaseHelper$openSqlCipherDB$hook$1;-><init>()V

    move-object v2, v1

    .line 92
    const-string v1, ""

    .line 95
    new-instance v4, Lfast/dic/dict/helpers/FDMainDatabaseHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;)V

    .line 101
    move-object v5, v2

    check-cast v5, Lnet/zetetic/database/sqlcipher/SQLiteDatabaseHook;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 90
    invoke-static/range {v0 .. v5}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/zetetic/database/sqlcipher/SQLiteDatabase$CursorFactory;ILnet/zetetic/database/DatabaseErrorHandler;Lnet/zetetic/database/sqlcipher/SQLiteDatabaseHook;)Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static final openSqlCipherDB$lambda$0(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;Landroid/database/sqlite/SQLiteException;)V
    .locals 2

    .line 96
    iget-object p0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->logger:Lfast/dic/dict/utils/Logger;

    const-string v0, "DatabaseErrorHandler onCorruption called"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DatabaseErrorHandler onCorruption called: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final checkDataBase()Z
    .locals 0

    .line 116
    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->openDataBase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->myDataBase:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final createDatabase(Z)Z
    .locals 2

    if-nez p1, :cond_0

    .line 58
    :try_start_0
    invoke-direct {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 61
    new-instance p1, Ljava/lang/Error;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error copying database. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getDatabaseSize()J
    .locals 2

    .line 230
    iget-object p0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v0, Lfast/dic/dict/R$raw;->fastdic00:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getReadableDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;
    .locals 0

    .line 242
    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->openDataBase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized openDataBase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;
    .locals 3

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->myDataBase:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->openSqlCipherDB()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->myDataBase:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iget-object v1, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->logger:Lfast/dic/dict/utils/Logger;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 221
    :try_start_1
    const-string v0, "==> Database is opened"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    :cond_1
    const-string v0, "==> Could not open database for unknown reason"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lfast/dic/dict/utils/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_2
    :goto_0
    iget-object v0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->myDataBase:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final readyLocalStorageBeforeCopyDatabase()Z
    .locals 13

    .line 28
    new-instance v0, Ljava/io/File;

    sget-object v1, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->DB_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getIndices([Ljava/lang/Object;)Lkotlin/ranges/IntRange;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v3

    invoke-virtual {v2}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v2

    if-gt v3, v2, :cond_5

    .line 32
    :goto_1
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "."

    const/4 v12, 0x0

    aput-object v7, v6, v12

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 259
    new-array v6, v12, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 33
    check-cast v5, [Ljava/lang/String;

    .line 34
    array-length v6, v5

    if-gt v6, v11, :cond_1

    goto :goto_2

    .line 37
    :cond_1
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "fastdic"

    const/4 v8, 0x2

    invoke-static {v6, v7, v12, v8, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "lists"

    invoke-static {v6, v7, v12, v8, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 38
    :cond_2
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "sqlite"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 39
    const-string v6, "fastdic5.08.09.sqlite"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "lists.sqlite"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 40
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 43
    :cond_3
    new-instance v4, Ljava/io/File;

    sget-object v6, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->DB_PATH:Ljava/lang/String;

    aget-object v5, v5, v12

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".sqlite-journal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 45
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    if-eq v3, v2, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 51
    :cond_5
    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result p0

    return p0
.end method

.method public final removeDatabase()V
    .locals 8

    .line 151
    iget-object p0, p0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->myDataBase:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->close()V

    .line 152
    :cond_0
    new-instance p0, Ljava/io/File;

    sget-object v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->DB_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 159
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 161
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    .line 162
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getName(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "fastdic5.08.09.sqlite"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v1, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
