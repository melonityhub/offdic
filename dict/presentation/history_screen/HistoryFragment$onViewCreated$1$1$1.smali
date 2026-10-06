.class final Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HistoryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lfast/dic/dict/presentation/history_screen/HistoryUiState;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "state",
        "Lfast/dic/dict/presentation/history_screen/HistoryUiState;"
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
    c = "fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$1$1$1"
    f = "HistoryFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/history_screen/HistoryFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/history_screen/HistoryFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/history_screen/HistoryFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryFragment;

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

    new-instance v0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;

    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryFragment;

    invoke-direct {v0, p0, p2}, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;-><init>(Lfast/dic/dict/presentation/history_screen/HistoryFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lfast/dic/dict/presentation/history_screen/HistoryUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/history_screen/HistoryUiState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lfast/dic/dict/presentation/history_screen/HistoryUiState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->invoke(Lfast/dic/dict/presentation/history_screen/HistoryUiState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lfast/dic/dict/presentation/history_screen/HistoryUiState;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 150
    iget v1, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->label:I

    if-nez v1, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryFragment;

    invoke-static {p1}, Lfast/dic/dict/presentation/history_screen/HistoryFragment;->access$getViewModel(Lfast/dic/dict/presentation/history_screen/HistoryFragment;)Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->getCurrentPaging()Lfast/dic/dict/models/database/PagingListModel;

    move-result-object v1

    invoke-static {p1, v1}, Lfast/dic/dict/presentation/history_screen/HistoryFragment;->access$setPagingListModel$p(Lfast/dic/dict/presentation/history_screen/HistoryFragment;Lfast/dic/dict/models/database/PagingListModel;)V

    .line 152
    iget-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryFragment;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/history_screen/HistoryFragment;->getAdapter()Lfast/dic/dict/presentation/history_screen/HistoryAdapter;

    move-result-object p1

    invoke-virtual {v0}, Lfast/dic/dict/presentation/history_screen/HistoryUiState;->getItems()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter;->submitList(Ljava/util/List;)V

    .line 153
    iget-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryFragment;

    invoke-static {p1}, Lfast/dic/dict/presentation/history_screen/HistoryFragment;->access$getBinding$p(Lfast/dic/dict/presentation/history_screen/HistoryFragment;)Lfast/dic/dict/databinding/FragmentHistoryBinding;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentHistoryBinding;->placeholderLabel:Landroid/widget/TextView;

    .line 154
    invoke-virtual {v0}, Lfast/dic/dict/presentation/history_screen/HistoryUiState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 153
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$1$1$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryFragment;

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lfast/dic/dict/utils/ContextExtKt;->requestForNewMenu(Landroidx/fragment/app/Fragment;)V

    .line 156
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 150
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
