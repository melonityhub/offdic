.class final Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WordCategoryViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCefrWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;)V
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
    c = "fast.dic.dict.presentation.word_category_screen.WordCategoryViewModel$getCefrWords$1"
    f = "WordCategoryViewModel.kt"
    i = {}
    l = {
        0x34
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        0x36
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $cefr:Ljava/lang/String;

.field final synthetic $filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;",
            "Ljava/lang/String;",
            "Lfast/dic/dict/helpers/FDWordCategory$Filter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->this$0:Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->$cefr:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->$filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->this$0:Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->$cefr:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->$filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-direct {p1, v0, v1, p0, p2}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;-><init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 51
    iget v1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->this$0:Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->access$getCategory$p(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;)Lfast/dic/dict/helpers/FDWordCategory;

    move-result-object p1

    iget-object v1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->$cefr:Ljava/lang/String;

    iget-object v3, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->$filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->label:I

    invoke-virtual {p1, v1, v3, v4}, Lfast/dic/dict/helpers/FDWordCategory;->getWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 51
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 54
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;->this$0:Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    invoke-static {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->access$get_state$p(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    .line 55
    new-instance v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Data;

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Data;-><init>(Ljava/util/List;)V

    .line 54
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 57
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
