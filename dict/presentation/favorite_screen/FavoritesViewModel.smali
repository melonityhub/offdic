.class public final Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FavoritesViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001.B-\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u001a\u0002\u0008\u000c\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001e\u001a\u00020\u001cJ\u0014\u0010\u001f\u001a\u00020\u001c2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!J\u001c\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\"2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001c0&J\u0016\u0010\'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)J\u000e\u0010+\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\"J\u000e\u0010,\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\"J\u000e\u0010-\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\"R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00ca\u0001\u0002\u00080\u00a8\u0006/"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "history",
        "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
        "favorite",
        "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
        "favouriteFolder",
        "Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;",
        "wordCategory",
        "Lfast/dic/dict/helpers/FDWordCategory;",
        "<init>",
        "(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;Lfast/dic/dict/helpers/FDWordCategory;)V",
        "Ljavax/inject/Inject;",
        "_state",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState;",
        "state",
        "Landroidx/lifecycle/LiveData;",
        "getState",
        "()Landroidx/lifecycle/LiveData;",
        "_events",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;",
        "events",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getEvents",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "getFolders",
        "",
        "getOnlyFavoriteFolders",
        "getFoldersNoLoading",
        "updateFolderOrder",
        "list",
        "",
        "Lfast/dic/dict/models/database/FolderModel;",
        "deleteFolder",
        "folder",
        "complete",
        "Lkotlin/Function0;",
        "updateFolder",
        "wordId",
        "",
        "folderId",
        "onFolderClicked",
        "onEditRequested",
        "onDeleteRequested",
        "FavoritesEvent",
        "app",
        "Ldagger/hilt/android/lifecycle/HiltViewModel;"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _events:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;",
            ">;"
        }
    .end annotation
.end field

.field private _state:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState;",
            ">;"
        }
    .end annotation
.end field

.field private final events:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final favorite:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

.field private final favouriteFolder:Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

.field private final history:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

.field private final state:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState;",
            ">;"
        }
    .end annotation
.end field

.field private final wordCategory:Lfast/dic/dict/helpers/FDWordCategory;


# direct methods
.method public constructor <init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;Lfast/dic/dict/helpers/FDWordCategory;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "history"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favorite"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favouriteFolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wordCategory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 21
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->history:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    .line 22
    iput-object p2, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->favorite:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    .line 23
    iput-object p3, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->favouriteFolder:Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    .line 24
    iput-object p4, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->wordCategory:Lfast/dic/dict/helpers/FDWordCategory;

    .line 27
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Loading;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    .line 28
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->state:Landroidx/lifecycle/LiveData;

    const/4 p1, 0x0

    const/4 p2, 0x5

    const/4 p3, 0x0

    const/4 p4, 0x4

    .line 31
    invoke-static {p3, p4, p1, p2, p1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 32
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->events:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method

.method public static final synthetic access$getFavorite$p(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDFavourite;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->favorite:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    return-object p0
.end method

.method public static final synthetic access$getFavouriteFolder$p(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->favouriteFolder:Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    return-object p0
.end method

.method public static final synthetic access$getHistory$p(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDHistory;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->history:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    return-object p0
.end method

.method public static final synthetic access$getWordCategory$p(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;)Lfast/dic/dict/helpers/FDWordCategory;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->wordCategory:Lfast/dic/dict/helpers/FDWordCategory;

    return-object p0
.end method

.method public static final synthetic access$get_state$p(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static final deleteFolder$lambda$0(Lkotlin/jvm/functions/Function0;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    .line 103
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 104
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final deleteFolder(Lfast/dic/dict/models/database/FolderModel;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/models/database/FolderModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "complete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Loading;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 99
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$deleteFolder$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$deleteFolder$1;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;Lfast/dic/dict/models/database/FolderModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    .line 102
    new-instance p1, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method public final getEvents()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->events:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final getFolders()V
    .locals 7

    .line 41
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Loading;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 43
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getFolders$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getFolders$1;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getFoldersNoLoading()V
    .locals 7

    .line 72
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getFoldersNoLoading$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getFoldersNoLoading$1;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getOnlyFavoriteFolders()V
    .locals 7

    .line 62
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Loading;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 64
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$getOnlyFavoriteFolders$1;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->state:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final onDeleteRequested(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 1

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$ConfirmDelete;

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$ConfirmDelete;-><init>(Lfast/dic/dict/models/database/FolderModel;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onEditRequested(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 1

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;-><init>(Lfast/dic/dict/models/database/FolderModel;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onFolderClicked(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 1

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$OpenFolder;

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$OpenFolder;-><init>(Lfast/dic/dict/models/database/FolderModel;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "wordId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->favouriteFolder:Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-virtual {v0, p2}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->setCurrentFolder(Ljava/lang/String;)Lfast/dic/dict/models/database/FolderModel;

    .line 109
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->favorite:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->updateFolder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateFolderOrder(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/FolderModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$updateFolderOrder$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$updateFolderOrder$1;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
