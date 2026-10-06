.class public final Lfast/dic/dict/views/LollipopFixedWebView$Companion;
.super Ljava/lang/Object;
.source "LollipopFixedWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/views/LollipopFixedWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lfast/dic/dict/views/LollipopFixedWebView$Companion;",
        "",
        "<init>",
        "()V",
        "getFixedContext",
        "Landroid/content/Context;",
        "context",
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/views/LollipopFixedWebView$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFixedContext(Lfast/dic/dict/views/LollipopFixedWebView$Companion;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lfast/dic/dict/views/LollipopFixedWebView$Companion;->getFixedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private final getFixedContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 20
    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    .line 19
    invoke-virtual {p1, p0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "createConfigurationContext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
