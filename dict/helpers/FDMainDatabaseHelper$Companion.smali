.class public final Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;
.super Ljava/lang/Object;
.source "FDDatabaseHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/helpers/FDMainDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;",
        "",
        "<init>",
        "()V",
        "DB_PATH",
        "",
        "getDB_PATH",
        "()Ljava/lang/String;",
        "setDB_PATH",
        "(Ljava/lang/String;)V",
        "DB_NAME",
        "CB_DB_NAME",
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
.method private constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDB_PATH()Ljava/lang/String;
    .locals 0

    .line 245
    invoke-static {}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->access$getDB_PATH$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setDB_PATH(Ljava/lang/String;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-static {p1}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->access$setDB_PATH$cp(Ljava/lang/String;)V

    return-void
.end method
