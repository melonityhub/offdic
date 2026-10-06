.class final Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CategoriesViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->getCategories()V
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
    c = "fast.dic.dict.presentation.categories_screen.CategoriesViewModel$getCategories$1"
    f = "CategoriesViewModel.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x25,
        0x2d
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "$this$launch"
    }
    nl = {
        0x2d,
        0x2e
    }
    s = {
        "L$0",
        "L$0"
    }
    v = 0x2
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;

    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;

    invoke-direct {v0, p0, p2}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 30
    iget v2, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v9, :cond_1

    if-ne v2, v8, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    new-instance p1, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1$1;

    iget-object v2, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;

    invoke-direct {p1, v2, v7}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1$1;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 37
    iput-object v1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->L$0:Ljava/lang/Object;

    iput v9, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->label:I

    invoke-interface {p1, v2}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 39
    :cond_3
    :goto_0
    new-instance p1, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1$2;

    iget-object v2, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;

    invoke-direct {p1, v2, v7}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1$2;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 45
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->L$0:Ljava/lang/Object;

    iput v8, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;->label:I

    invoke-interface {p1, v2}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    .line 46
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
