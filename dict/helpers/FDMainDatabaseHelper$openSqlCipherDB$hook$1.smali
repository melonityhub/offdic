.class public final Lfast/dic/dict/helpers/FDMainDatabaseHelper$openSqlCipherDB$hook$1;
.super Ljava/lang/Object;
.source "FDDatabaseHelper.kt"

# interfaces
.implements Lnet/zetetic/database/sqlcipher/SQLiteDatabaseHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/helpers/FDMainDatabaseHelper;->openSqlCipherDB()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "fast/dic/dict/helpers/FDMainDatabaseHelper$openSqlCipherDB$hook$1",
        "Lnet/zetetic/database/sqlcipher/SQLiteDatabaseHook;",
        "preKey",
        "",
        "connection",
        "Lnet/zetetic/database/sqlcipher/SQLiteConnection;",
        "postKey",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postKey(Lnet/zetetic/database/sqlcipher/SQLiteConnection;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public preKey(Lnet/zetetic/database/sqlcipher/SQLiteConnection;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
