.class final Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1$1$1;
.super Ljava/lang/Object;
.source "WordResultFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_apply:Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1$1$1;->$this_apply:Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 373
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1$1$1;->invoke(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 375
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 377
    const-string v0, "fromOnBoarding"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1$1$1;->$this_apply:Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    check-cast p0, Landroidx/fragment/app/Fragment;

    sget v0, Lfast/dic/dict/R$id;->moreFragment:I

    sget v1, Lfast/dic/dict/R$id;->newPricingFragment:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lfast/dic/dict/utils/FragmentExtensionKt;->openTab(Landroidx/fragment/app/Fragment;ILjava/lang/Integer;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
