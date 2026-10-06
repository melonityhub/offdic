.class final Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HistoryViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->loadPage(Z)V
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
    value = "SMAP\nHistoryViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HistoryViewModel.kt\nfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,255:1\n1#2:256\n*E\n"
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
    c = "fast.dic.dict.presentation.history_screen.HistoryViewModel$loadPage$1"
    f = "HistoryViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $reset:Z

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/history_screen/HistoryViewModel;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    iput-boolean p2, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->$reset:Z

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

    new-instance p1, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    iget-boolean p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->$reset:Z

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;-><init>(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 92
    iget v1, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->label:I

    if-nez v1, :cond_a

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    iget-object v1, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->getCurrentPaging()Lfast/dic/dict/models/database/PagingListModel;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Lfast/dic/dict/models/database/PagingListModel;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lfast/dic/dict/models/database/PagingListModel;-><init>(IILjava/lang/Integer;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    invoke-static {v1, v2}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->access$setCurrentPaging$p(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;Lfast/dic/dict/models/database/PagingListModel;)V

    move-object v1, v2

    .line 94
    :cond_0
    invoke-virtual {v1}, Lfast/dic/dict/models/database/PagingListModel;->getLimit()I

    move-result v4

    .line 95
    iget-boolean v2, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->$reset:Z

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    move v5, v11

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lfast/dic/dict/models/database/PagingListModel;->getOffset()I

    move-result v2

    move v5, v2

    .line 97
    :goto_0
    iget-object v2, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    invoke-static {v2}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->access$getHistory$p(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    move-result-object v2

    .line 98
    iget-object v3, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    invoke-static {v3}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->access$getCurrentCategory$p(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;)Ljava/lang/Integer;

    move-result-object v3

    .line 101
    iget-object v6, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    invoke-virtual {v6}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->getCurrentSort()Lfast/dic/dict/domain/entity/WordSortEnum;

    move-result-object v8

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 97
    invoke-static/range {v2 .. v10}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->get$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Ljava/lang/Integer;IIZZLfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 104
    iget-boolean v3, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->$reset:Z

    if-eqz v3, :cond_5

    .line 105
    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 107
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 108
    new-instance v12, Lfast/dic/dict/models/database/ListModel;

    const v34, 0x1fffff

    const/16 v35, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v12 .. v35}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {v4}, Lfast/dic/dict/models/database/ListModel;->isLast()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    .line 110
    invoke-virtual {v12, v4}, Lfast/dic/dict/models/database/ListModel;->setLast(Z)V

    .line 111
    invoke-interface {v2, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 115
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lfast/dic/dict/models/database/PagingListModel;->setListModel(Ljava/util/ArrayList;)V

    .line 116
    invoke-virtual {v1}, Lfast/dic/dict/models/database/PagingListModel;->getListModel()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    :cond_3
    invoke-virtual {v1, v11}, Lfast/dic/dict/models/database/PagingListModel;->setOffset(I)V

    .line 117
    iget-object v0, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    invoke-static {v0}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->access$get_uiState$p(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v2, Lfast/dic/dict/presentation/history_screen/HistoryUiState;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lfast/dic/dict/models/database/PagingListModel;->getListModel()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Lfast/dic/dict/presentation/history_screen/HistoryUiState;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 119
    :cond_5
    invoke-virtual {v1}, Lfast/dic/dict/models/database/PagingListModel;->getListModel()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 120
    :cond_7
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lfast/dic/dict/models/database/PagingListModel;->setListModel(Ljava/util/ArrayList;)V

    .line 122
    invoke-virtual {v1}, Lfast/dic/dict/models/database/PagingListModel;->getListModel()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    :cond_8
    invoke-virtual {v1, v11}, Lfast/dic/dict/models/database/PagingListModel;->setOffset(I)V

    .line 123
    iget-object v0, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$loadPage$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    invoke-static {v0}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->access$get_uiState$p(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v2, Lfast/dic/dict/presentation/history_screen/HistoryUiState;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lfast/dic/dict/models/database/PagingListModel;->getListModel()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_2
    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Lfast/dic/dict/presentation/history_screen/HistoryUiState;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 125
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 92
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
