.class final Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WordResultFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requestInterstitialAfterResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWordResultFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WordResultFragment.kt\nfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1\n+ 2 WithLifecycleState.kt\nandroidx/lifecycle/WithLifecycleStateKt\n*L\n1#1,980:1\n113#2:981\n127#2,8:982\n*S KotlinDebug\n*F\n+ 1 WordResultFragment.kt\nfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1\n*L\n361#1:981\n361#1:982,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "fast.dic.dict.presentation.word_result_screen.WordResultFragment$requestInterstitialAfterResult$1"
    f = "WordResultFragment.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x3dd
    }
    m = "invokeSuspend"
    n = {
        "$this$withResumed$iv",
        "$this$withStateAtLeastUnchecked$iv$iv",
        "state$iv$iv",
        "lifecycleDispatcher$iv$iv",
        "dispatchNeeded$iv$iv"
    }
    nl = {
        0x3d5
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0"
    }
    v = 0x2
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-direct {p1, p0, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 360
    iget v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/MainCoroutineDispatcher;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->L$1:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 361
    iget-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    .line 981
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 982
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    invoke-virtual {v5}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    .line 983
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 985
    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v7

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v7, v8, :cond_2

    .line 986
    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v7

    move-object v8, v4

    check-cast v8, Ljava/lang/Enum;

    invoke-virtual {v7, v8}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-ltz v7, :cond_3

    .line 362
    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$getViewModel(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object p0

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "requireActivity(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$1$1;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->handleFullscreenAdsForFreeUsers(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function0;)V

    .line 384
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 985
    :cond_2
    new-instance p0, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw p0

    :cond_3
    move-object v7, v5

    move v5, v6

    .line 989
    move-object v6, v7

    check-cast v6, Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v8, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$invokeSuspend$$inlined$withResumed$1;

    invoke-direct {v8, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1$invokeSuspend$$inlined$withResumed$1;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object v1, v7

    move-object v7, v8

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->L$2:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->L$3:Ljava/lang/Object;

    iput-boolean v5, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->Z$0:Z

    iput v2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$requestInterstitialAfterResult$1;->label:I

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    .line 385
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
