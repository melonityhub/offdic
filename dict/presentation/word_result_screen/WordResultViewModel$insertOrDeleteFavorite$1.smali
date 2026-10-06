.class final Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WordResultViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->insertOrDeleteFavorite(Lfast/dic/dict/models/database/ListModel;)V
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
    c = "fast.dic.dict.presentation.word_result_screen.WordResultViewModel$insertOrDeleteFavorite$1"
    f = "WordResultViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $listModel:Lfast/dic/dict/models/database/ListModel;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/models/database/ListModel;Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/models/database/ListModel;",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->$listModel:Lfast/dic/dict/models/database/ListModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

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

    new-instance p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->$listModel:Lfast/dic/dict/models/database/ListModel;

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;-><init>(Lfast/dic/dict/models/database/ListModel;Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 514
    iget v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 515
    iget-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->$listModel:Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getCategory()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lfast/dic/dict/utils/FDCategory;

    invoke-direct {v0}, Lfast/dic/dict/utils/FDCategory;-><init>()V

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->$listModel:Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {v1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/utils/FDCategory;->findLanguage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lfast/dic/dict/models/database/ListModel;->setCategory(Ljava/lang/Integer;)V

    .line 516
    iget-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getFavorite$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    move-result-object p1

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->$listModel:Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->$listModel:Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {v1}, Lfast/dic/dict/models/database/ListModel;->getCategory()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->wordDocumentId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 519
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getFavorite$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->delete(Ljava/lang/String;)Z

    .line 521
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_favoriteStatus$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    .line 522
    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$RemoveFromFavorite;

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$RemoveFromFavorite;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 525
    :cond_1
    new-instance p1, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-direct {p1}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;-><init>()V

    invoke-virtual {p1}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->getCurrentFolder()Lfast/dic/dict/models/database/FolderModel;

    move-result-object p1

    if-nez p1, :cond_2

    .line 528
    new-instance p1, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-direct {p1}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;-><init>()V

    new-instance v0, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-direct {v0}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;-><init>()V

    invoke-virtual {v0}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->getDefaultFolder()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->insert(Ljava/lang/String;Z)Ljava/lang/String;

    .line 529
    new-instance p1, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-direct {p1}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;-><init>()V

    invoke-virtual {p1}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->getCurrentFolder()Lfast/dic/dict/models/database/FolderModel;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 533
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->$listModel:Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1}, Lfast/dic/dict/models/database/FolderModel;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/models/database/ListModel;->setFolderId(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getFavorite$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    move-result-object v0

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->$listModel:Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {v0, v1}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->insert(Lfast/dic/dict/models/database/ListModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/models/database/FolderModel;->setWordDocumentId(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getFavorite$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    move-result-object v0

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->$listModel:Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {v1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->$listModel:Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {v2}, Lfast/dic/dict/models/database/ListModel;->getCategory()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->getFolderNameByWord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-virtual {p1, v0}, Lfast/dic/dict/models/database/FolderModel;->setName(Ljava/lang/String;)V

    .line 539
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_favoriteStatus$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    .line 540
    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$AddToFavorite;

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$AddToFavorite;-><init>(Lfast/dic/dict/models/database/FolderModel;)V

    .line 539
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 543
    :cond_3
    iget-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_favoriteStatus$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    .line 544
    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$SelectFolder;

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$insertOrDeleteFavorite$1;->$listModel:Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p0}, Lfast/dic/dict/models/database/ListModel;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$SelectFolder;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 549
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 514
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
