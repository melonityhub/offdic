.class final Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SearchFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/fragments/SearchFragment;->uiProcessOnSearchSuggestion(Ljava/util/List;)V
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
    c = "fast.dic.dict.fragments.SearchFragment$uiProcessOnSearchSuggestion$1"
    f = "SearchFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $responseSuggestedWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lfast/dic/dict/fragments/SearchFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lfast/dic/dict/fragments/SearchFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;",
            "Lfast/dic/dict/fragments/SearchFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->$responseSuggestedWords:Ljava/util/List;

    iput-object p2, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->this$0:Lfast/dic/dict/fragments/SearchFragment;

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

    new-instance p1, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;

    iget-object v0, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->$responseSuggestedWords:Ljava/util/List;

    iget-object p0, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->this$0:Lfast/dic/dict/fragments/SearchFragment;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;-><init>(Ljava/util/List;Lfast/dic/dict/fragments/SearchFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 273
    iget v0, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->$responseSuggestedWords:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->this$0:Lfast/dic/dict/fragments/SearchFragment;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lfast/dic/dict/fragments/SearchFragment;->access$setHasResult$p(Lfast/dic/dict/fragments/SearchFragment;Z)V

    .line 278
    iget-object v0, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->this$0:Lfast/dic/dict/fragments/SearchFragment;

    invoke-static {v0}, Lfast/dic/dict/fragments/SearchFragment;->access$getHasResult$p(Lfast/dic/dict/fragments/SearchFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->this$0:Lfast/dic/dict/fragments/SearchFragment;

    invoke-virtual {v0}, Lfast/dic/dict/fragments/SearchFragment;->getBinding()Lfast/dic/dict/databinding/FragmentSearchBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentSearchBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {v0}, Lfast/dic/dict/views/SearchBarView;->isOpenedBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->this$0:Lfast/dic/dict/fragments/SearchFragment;

    invoke-virtual {v0}, Lfast/dic/dict/fragments/SearchFragment;->getBinding()Lfast/dic/dict/databinding/FragmentSearchBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentSearchBinding;->placeholderNoResult:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->this$0:Lfast/dic/dict/fragments/SearchFragment;

    invoke-virtual {v0}, Lfast/dic/dict/fragments/SearchFragment;->getBinding()Lfast/dic/dict/databinding/FragmentSearchBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentSearchBinding;->placeholderNoResult:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 284
    :goto_0
    iget-object v0, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->this$0:Lfast/dic/dict/fragments/SearchFragment;

    invoke-virtual {v0}, Lfast/dic/dict/fragments/SearchFragment;->getSuggestionAdapter()Lfast/dic/dict/adapters/WordSuggestionAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfast/dic/dict/adapters/WordSuggestionAdapter;->submitList(Ljava/util/List;)V

    .line 285
    iget-object p0, p0, Lfast/dic/dict/fragments/SearchFragment$uiProcessOnSearchSuggestion$1;->this$0:Lfast/dic/dict/fragments/SearchFragment;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/SearchFragment;->getBinding()Lfast/dic/dict/databinding/FragmentSearchBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentSearchBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 286
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 273
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
