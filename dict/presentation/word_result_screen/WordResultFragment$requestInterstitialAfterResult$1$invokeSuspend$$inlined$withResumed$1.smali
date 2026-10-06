.class public final Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$invokeSuspend$$inlined$withResumed$1;
.super Ljava/lang/Object;
.source "WithLifecycleState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWithLifecycleState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WithLifecycleState.kt\nandroidx/lifecycle/WithLifecycleStateKt$withStateAtLeastUnchecked$2\n+ 2 WordResultFragment.kt\nfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1\n*L\n1#1,175:1\n362#2:176\n384#2:177\n*E\n"
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
.method public constructor <init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$invokeSuspend$$inlined$withResumed$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Unit;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$invokeSuspend$$inlined$withResumed$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-static {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$getViewModel(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v0

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$invokeSuspend$$inlined$withResumed$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$invokeSuspend$$inlined$withResumed$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-direct {v2, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->handleFullscreenAdsForFreeUsers(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)V

    .line 177
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
