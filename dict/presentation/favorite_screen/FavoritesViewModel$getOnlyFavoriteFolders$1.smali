.class final Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FavoritesViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->getOnlyFavoriteFolders()V
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
    c = "fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$getOnlyFavoriteFolders$1"
    f = "FavoritesViewModel.kt"
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

.field final synthetic this$0:Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;->this$0:Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

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

    new-instance p1, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;->this$0:Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    invoke-direct {p1, p0, p2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 64
    iget v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;->this$0:Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->access$get_state$p(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    .line 66
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Data;

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;->this$0:Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    invoke-static {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->access$getFavouriteFolder$p(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->get()Ljava/util/ArrayList;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Data;-><init>(Ljava/util/List;)V

    .line 65
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 68
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
