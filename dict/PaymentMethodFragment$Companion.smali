.class public final Lfast/dic/dict/PaymentMethodFragment$Companion;
.super Ljava/lang/Object;
.source "PaymentMethodFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/PaymentMethodFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/PaymentMethodFragment$Companion;",
        "",
        "<init>",
        "()V",
        "showModal",
        "Lfast/dic/dict/PaymentMethodFragment;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "args",
        "Lfast/dic/dict/PaymentMethodFragmentArgs;",
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

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final showModal(Landroidx/fragment/app/FragmentActivity;Lfast/dic/dict/PaymentMethodFragmentArgs;)Lfast/dic/dict/PaymentMethodFragment;
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    new-instance p0, Lfast/dic/dict/PaymentMethodFragment;

    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragment;-><init>()V

    .line 526
    invoke-virtual {p2}, Lfast/dic/dict/PaymentMethodFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lfast/dic/dict/PaymentMethodFragment;->setArguments(Landroid/os/Bundle;)V

    .line 527
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/PaymentMethodFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p0
.end method
