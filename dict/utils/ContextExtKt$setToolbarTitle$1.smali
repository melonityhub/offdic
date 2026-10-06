.class final Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ContextExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/utils/ContextExtKt;->setToolbarTitle(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
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
    value = "SMAP\nContextExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextExt.kt\nfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1\n+ 2 WithLifecycleState.kt\nandroidx/lifecycle/WithLifecycleStateKt\n*L\n1#1,179:1\n104#2:180\n127#2,8:181\n*S KotlinDebug\n*F\n+ 1 ContextExt.kt\nfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1\n*L\n100#1:180\n100#1:181,8\n*E\n"
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
    c = "fast.dic.dict.utils.ContextExtKt$setToolbarTitle$1"
    f = "ContextExt.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xbc
    }
    m = "invokeSuspend"
    n = {
        "$this$withStarted$iv",
        "$this$withStateAtLeastUnchecked$iv$iv",
        "state$iv$iv",
        "lifecycleDispatcher$iv$iv",
        "dispatchNeeded$iv$iv"
    }
    nl = {
        0xb4
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
.field final synthetic $this_setToolbarTitle:Landroidx/fragment/app/Fragment;

.field final synthetic $title:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field Z$0:Z

.field label:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->$this_setToolbarTitle:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->$title:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;

    iget-object v0, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->$this_setToolbarTitle:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->$title:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 99
    iget v1, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/MainCoroutineDispatcher;

    iget-object v0, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    iget-object v0, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->L$1:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    iget-object p0, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->$this_setToolbarTitle:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->$this_setToolbarTitle:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->$title:Ljava/lang/String;

    .line 180
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 181
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v6

    invoke-virtual {v6}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v6

    .line 182
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 184
    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v8

    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v8, v9, :cond_5

    .line 185
    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v8

    move-object v9, v5

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v8, v9}, Landroidx/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-ltz v8, :cond_6

    .line 105
    :try_start_0
    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 106
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string/jumbo p1, "toolbarTitle"

    if-nez v3, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 109
    :catch_0
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lfast/dic/dict/activities/MainActivity;

    if-eqz p1, :cond_3

    check-cast p0, Lfast/dic/dict/activities/MainActivity;

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p0, v3}, Lfast/dic/dict/activities/MainActivity;->updateTitle(Ljava/lang/String;)V

    .line 111
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    .line 184
    :cond_5
    new-instance p0, Landroidx/lifecycle/LifecycleDestroyedException;

    invoke-direct {p0}, Landroidx/lifecycle/LifecycleDestroyedException;-><init>()V

    throw p0

    :cond_6
    move-object v8, v6

    move v6, v7

    .line 188
    move-object v7, v8

    check-cast v7, Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v9, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1;

    invoke-direct {v9, v1, v3}, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v1, v8

    move-object v8, v9

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->L$0:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->L$2:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->L$3:Ljava/lang/Object;

    iput-boolean v6, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->Z$0:Z

    iput v2, p0, Lfast/dic/dict/utils/ContextExtKt$setToolbarTitle$1;->label:I

    invoke-static/range {v4 .. v9}, Landroidx/lifecycle/WithLifecycleStateKt;->suspendWithStateAtLeastUnchecked(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;ZLkotlinx/coroutines/CoroutineDispatcher;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    .line 112
    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
