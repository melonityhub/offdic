.class final Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HistoryFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;",
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
        "event",
        "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;"
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
    c = "fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$2$1$1"
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
            "Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryFragment;

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

    new-instance v0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;

    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryFragment;

    invoke-direct {v0, p0, p2}, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;-><init>(Lfast/dic/dict/presentation/history_screen/HistoryFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;->invoke(Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 163
    iget v1, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;->label:I

    if-nez v1, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    instance-of p1, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$OpenWordResult;

    if-eqz p1, :cond_0

    .line 166
    new-instance v1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    check-cast v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$OpenWordResult;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$OpenWordResult;->getItem()Lfast/dic/dict/models/database/ListModel;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;-><init>(Lfast/dic/dict/models/database/ListModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryFragment;

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->wordResultModal:I

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 170
    :cond_0
    instance-of p1, v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;

    if-eqz p1, :cond_1

    .line 171
    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryFragment$onViewCreated$2$1$1;->this$0:Lfast/dic/dict/presentation/history_screen/HistoryFragment;

    .line 172
    check-cast v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->getItem()Lfast/dic/dict/models/database/ListModel;

    move-result-object p1

    .line 173
    invoke-virtual {v0}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {v0}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->getPosition()I

    move-result v0

    .line 171
    invoke-static {p0, p1, v1, v0}, Lfast/dic/dict/presentation/history_screen/HistoryFragment;->access$showDeleteSingleItemConfirmationAlert(Lfast/dic/dict/presentation/history_screen/HistoryFragment;Lfast/dic/dict/models/database/ListModel;Ljava/lang/String;I)V

    .line 178
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 164
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 163
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
