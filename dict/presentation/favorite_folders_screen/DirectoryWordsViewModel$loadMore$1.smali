.class final Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DirectoryWordsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->loadMore()V
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
    c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$loadMore$1"
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
.field final synthetic $current:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $id:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->$id:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->$current:Ljava/util/List;

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

    new-instance p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    iget-object v1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->$id:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->$current:Ljava/util/List;

    invoke-direct {p1, v0, v1, p0, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;-><init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 81
    iget v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$getFavorite$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    move-result-object v0

    iget-object v2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->$id:Ljava/lang/String;

    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$getOffset$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)I

    move-result v4

    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$getSortBy$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)Lfast/dic/dict/domain/entity/WordSortEnum;

    move-result-object v6

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/16 v3, 0x32

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->get$default(Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Ljava/lang/Integer;Ljava/lang/String;IIZLfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->$current:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$setOffset$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;I)V

    .line 86
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$postItems(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/util/List;)V

    .line 87
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$setLoadingMore$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Z)V

    .line 88
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
