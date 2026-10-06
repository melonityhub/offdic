.class final Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;
.super Ljava/lang/Object;
.source "WordResultFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
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
.field final synthetic this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 362
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 14

    .line 363
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    new-instance v2, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    .line 366
    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    sget v3, Lfast/dic/dict/R$string;->show_advertisements:I

    invoke-virtual {v1, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 367
    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    sget v3, Lfast/dic/dict/R$string;->advertisements_description_on_boarding:I

    invoke-virtual {v1, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 368
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    sget v1, Lfast/dic/dict/R$string;->remove_ads_and_by_pro_subscription:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v12, 0x1e0

    const/4 v13, 0x0

    const/4 v3, 0x1

    .line 364
    const-string v7, "PRICING"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/services/FDAds$AdForFeature;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 371
    const-string p0, ""

    invoke-virtual {v2, v0, p0}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 373
    new-instance p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1$1$1;

    invoke-direct {p0, v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1$1$1;-><init>(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;)V

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, p0}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->setOnDismissed(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
