.class final Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DirectoryWordsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->fetchAllFavoritesForShare(Lkotlin/jvm/functions/Function1;)V
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
    c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$fetchAllFavoritesForShare$1"
    f = "DirectoryWordsViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x85
    }
    m = "invokeSuspend"
    n = {
        "list"
    }
    nl = {
        0x88
    }
    s = {
        "L$0"
    }
    v = 0x2
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $id:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->$id:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->$callback:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    iget-object v1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->$id:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, p0, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;-><init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 131
    iget v1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$getFavorite$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    move-result-object v3

    iget-object v5, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->$id:Ljava/lang/String;

    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->access$getSortBy$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)Lfast/dic/dict/domain/entity/WordSortEnum;

    move-result-object v9

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v11}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->get$default(Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Ljava/lang/Integer;Ljava/lang/String;IIZLfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 133
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1$1;

    iget-object v4, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;->label:I

    invoke-static {v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 136
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
