.class final Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DirectoryWordsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->loadInitial()V
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
    c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$loadInitial$1"
    f = "DirectoryWordsViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->$id:Ljava/lang/String;

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

    new-instance p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->$id:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;-><init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 63
    iget v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$setOffset$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;I)V

    .line 65
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    const/16 v1, 0x32

    invoke-static {p1, v1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$setLimit$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;I)V

    .line 66
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$getFavorite$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    move-result-object v1

    iget-object v3, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->$id:Ljava/lang/String;

    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$getLimit$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)I

    move-result v4

    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$getOffset$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)I

    move-result v5

    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$getSortBy$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)Lfast/dic/dict/domain/entity/WordSortEnum;

    move-result-object v7

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->get$default(Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Ljava/lang/Integer;Ljava/lang/String;IIZLfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 67
    iget-object v1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$setOffset$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;I)V

    .line 68
    iget-object v1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    check-cast p1, Ljava/util/List;

    invoke-static {v1, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$postItems(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/util/List;)V

    .line 69
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$get_uiState$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-static {p0}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$get_uiState$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->copy$default(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;Ljava/util/List;ZILjava/lang/Object;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 70
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
