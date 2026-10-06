.class final Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HistoryViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->clear()V
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
    c = "fast.dic.dict.presentation.history_screen.HistoryViewModel$clear$1"
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
.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/history_screen/HistoryViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

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

    new-instance p1, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;

    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    invoke-direct {p1, p0, p2}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;-><init>(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 231
    iget v0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 232
    iget-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    new-instance v0, Lfast/dic/dict/models/database/PagingListModel;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/models/database/PagingListModel;-><init>(IILjava/lang/Integer;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    const/16 v2, 0x32

    .line 233
    invoke-virtual {v0, v2}, Lfast/dic/dict/models/database/PagingListModel;->setLimit(I)V

    const/4 v2, 0x0

    .line 234
    invoke-virtual {v0, v2}, Lfast/dic/dict/models/database/PagingListModel;->setOffset(I)V

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v0, v2}, Lfast/dic/dict/models/database/PagingListModel;->setListModel(Ljava/util/ArrayList;)V

    .line 236
    invoke-static {v1}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->access$getCurrentCategory$p(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/models/database/PagingListModel;->setCategory(Ljava/lang/Integer;)V

    .line 232
    invoke-static {p1, v0}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->access$setCurrentPaging$p(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;Lfast/dic/dict/models/database/PagingListModel;)V

    .line 239
    iget-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->access$get_uiState$p(Lfast/dic/dict/presentation/history_screen/HistoryViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    .line 240
    new-instance v0, Lfast/dic/dict/presentation/history_screen/HistoryUiState;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$clear$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;->getCurrentPaging()Lfast/dic/dict/models/database/PagingListModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/models/database/PagingListModel;->getListModel()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/util/Collection;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/history_screen/HistoryUiState;-><init>(Ljava/util/List;)V

    .line 239
    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 241
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 231
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
