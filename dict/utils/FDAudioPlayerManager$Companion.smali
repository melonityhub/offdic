.class public final Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;
.super Ljava/lang/Object;
.source "FDAudioPlayerManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/utils/FDAudioPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;",
        "",
        "<init>",
        "()V",
        "get",
        "Lfast/dic/dict/utils/FDAudioPlayerManager;",
        "getGet",
        "()Lfast/dic/dict/utils/FDAudioPlayerManager;",
        "setGet",
        "(Lfast/dic/dict/utils/FDAudioPlayerManager;)V",
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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGet()Lfast/dic/dict/utils/FDAudioPlayerManager;
    .locals 0

    .line 98
    invoke-static {}, Lfast/dic/dict/utils/FDAudioPlayerManager;->access$getGet$cp()Lfast/dic/dict/utils/FDAudioPlayerManager;

    move-result-object p0

    return-object p0
.end method

.method public final setGet(Lfast/dic/dict/utils/FDAudioPlayerManager;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {p1}, Lfast/dic/dict/utils/FDAudioPlayerManager;->access$setGet$cp(Lfast/dic/dict/utils/FDAudioPlayerManager;)V

    return-void
.end method
