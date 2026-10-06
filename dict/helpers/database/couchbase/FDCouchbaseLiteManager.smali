.class public final Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;
.super Ljava/lang/Object;
.source "FDCouchbaseLiteManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;,
        Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDCouchbaseLiteManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDCouchbaseLiteManager.kt\nfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n1#2:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u000bJ\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\r\u001a\u00020\u000bJ\u0016\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;",
        "",
        "<init>",
        "()V",
        "_database",
        "Lcom/couchbase/lite/Database;",
        "get_database",
        "()Lcom/couchbase/lite/Database;",
        "set_database",
        "(Lcom/couchbase/lite/Database;)V",
        "closeDatabase",
        "",
        "openDatabase",
        "copyDataBase",
        "isDatabaseMigrated",
        "",
        "words",
        "",
        "Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;",
        "DatabaseType",
        "Companion",
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
.field public static final Companion:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;

.field public static final DATABASE_FILE_NAME:Ljava/lang/String; = "lists"

.field private static final instance:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;


# instance fields
.field private _database:Lcom/couchbase/lite/Database;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->Companion:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;

    .line 114
    new-instance v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    invoke-direct {v0}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;-><init>()V

    sput-object v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->instance:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    :try_start_0
    sget-object p0, Lfast/dic/dict/providers/FDContentProvider;->Companion:Lfast/dic/dict/providers/FDContentProvider$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/providers/FDContentProvider$Companion;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLite;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;
    .locals 1

    .line 16
    sget-object v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->instance:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    return-object v0
.end method


# virtual methods
.method public final closeDatabase()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->_database:Lcom/couchbase/lite/Database;

    return-void
.end method

.method public final copyDataBase()V
    .locals 4

    .line 57
    new-instance p0, Ljava/io/File;

    sget-object v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->Companion:Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;->getDB_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->Companion:Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;->getDB_PATH()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 65
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/io/OutputStream;

    const/16 v0, 0x400

    .line 70
    new-array v0, v0, [B

    .line 72
    sget-object v1, Lfast/dic/dict/providers/FDContentProvider;->Companion:Lfast/dic/dict/providers/FDContentProvider$Companion;

    invoke-virtual {v1}, Lfast/dic/dict/providers/FDContentProvider$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfast/dic/dict/R$raw;->lists:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "openRawResource(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 79
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 80
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final get_database()Lcom/couchbase/lite/Database;
    .locals 0

    .line 27
    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->_database:Lcom/couchbase/lite/Database;

    return-object p0
.end method

.method public final isDatabaseMigrated(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;",
            ">;)Z"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->openDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 86
    :cond_0
    new-array v1, v0, [Lcom/couchbase/lite/SelectResult;

    invoke-static {}, Lcom/couchbase/lite/SelectResult;->all()Lcom/couchbase/lite/SelectResult$From;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object v1

    .line 87
    invoke-static {p0}, Lcom/couchbase/lite/DataSource;->database(Lcom/couchbase/lite/Database;)Lcom/couchbase/lite/DataSource$As;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/DataSource;

    invoke-virtual {v1, p0}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object p0

    const-string v1, "from(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/couchbase/lite/Query;

    .line 90
    :try_start_0
    invoke-interface {p0}, Lcom/couchbase/lite/Query;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->printStackTrace()V

    const/4 p0, 0x0

    .line 94
    :goto_0
    sget-object v1, Lfast/dic/dict/helpers/database/FDHistoryDatabaseManager;->Companion:Lfast/dic/dict/helpers/database/FDHistoryDatabaseManager$Companion;

    invoke-virtual {v1}, Lfast/dic/dict/helpers/database/FDHistoryDatabaseManager$Companion;->getGet()Lfast/dic/dict/helpers/database/FDHistoryDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/helpers/database/FDHistoryDatabaseManager;->count()I

    move-result v1

    if-gt v1, v0, :cond_4

    .line 95
    sget-object v1, Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;->Companion:Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager$Companion;

    invoke-virtual {v1}, Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager$Companion;->getGet()Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;->count()I

    move-result v1

    if-le v1, v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->allResults()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v3

    :goto_1
    if-lez p0, :cond_3

    return v0

    :cond_3
    return v3

    :cond_4
    :goto_2
    if-eqz p0, :cond_7

    if-nez p1, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->allResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_6

    goto :goto_3

    .line 100
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->allResults()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gt p1, p0, :cond_6

    goto :goto_3

    :cond_6
    move v0, v3

    :goto_3
    return v0

    :cond_7
    return v3
.end method

.method public final openDatabase()Lcom/couchbase/lite/Database;
    .locals 5

    .line 35
    new-instance v0, Lcom/couchbase/lite/DatabaseConfiguration;

    invoke-direct {v0}, Lcom/couchbase/lite/DatabaseConfiguration;-><init>()V

    const/4 v1, 0x0

    .line 37
    :try_start_0
    iget-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->_database:Lcom/couchbase/lite/Database;

    if-nez v2, :cond_0

    .line 38
    new-instance v2, Lcom/couchbase/lite/Database;

    .line 39
    const-string v3, "lists"

    .line 38
    invoke-direct {v2, v3, v0}, Lcom/couchbase/lite/Database;-><init>(Ljava/lang/String;Lcom/couchbase/lite/DatabaseConfiguration;)V

    iput-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->_database:Lcom/couchbase/lite/Database;
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v2

    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FDCouchbaseLiteManager error: openDatabase error happen: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 46
    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->printStackTrace()V

    .line 47
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FDCouchbaseLiteManager: openDatabase error happen: error - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final set_database(Lcom/couchbase/lite/Database;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->_database:Lcom/couchbase/lite/Database;

    return-void
.end method
