.class public final Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;
.super Ljava/lang/Object;
.source "FDFavouriteDatabaseManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;",
        "",
        "<init>",
        "()V",
        "count",
        "",
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
.field public static final Companion:Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager$Companion;

.field private static final get:Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;->Companion:Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager$Companion;

    .line 27
    new-instance v0, Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;

    invoke-direct {v0}, Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;-><init>()V

    sput-object v0, Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;->get:Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getGet$cp()Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;
    .locals 1

    .line 10
    sget-object v0, Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;->get:Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;

    return-object v0
.end method


# virtual methods
.method public final count()I
    .locals 3

    .line 12
    sget-object p0, Lfast/dic/dict/helpers/database/DatabaseListManager;->Companion:Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;->getInstance()Lfast/dic/dict/helpers/database/DatabaseListManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/DatabaseListManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 15
    :try_start_0
    const-string v2, "SELECT count(word_id) FROM favourite"

    .line 16
    invoke-virtual {p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string v0, "rawQuery(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 18
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    sget-object p0, Lfast/dic/dict/helpers/database/DatabaseListManager;->Companion:Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;->getInstance()Lfast/dic/dict/helpers/database/DatabaseListManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/DatabaseListManager;->closeDatabase()V

    :cond_1
    return v1
.end method
