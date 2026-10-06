.class public final Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "DirectoryWordsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDirectoryWordsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DirectoryWordsViewModel.kt\nfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,154:1\n1#2:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u00013B\u0015\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u001e\u001a\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\"0!H\u0002J\u0018\u0010#\u001a\u00020\u001f2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010$\u001a\u00020\u0018J\u0006\u0010%\u001a\u00020\u001fJ\u0006\u0010&\u001a\u00020\u001fJ\u0006\u0010\'\u001a\u00020\u001fJ\u000e\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\"J\u000e\u0010*\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u0018J \u0010,\u001a\u00020\u001f2\u0018\u0010-\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0!\u0012\u0004\u0012\u00020\u001f0.J\u000e\u0010/\u001a\u00020\u001f2\u0006\u00100\u001a\u00020\"J\u0016\u00101\u001a\u00020\u001f2\u0006\u00100\u001a\u00020\"2\u0006\u00102\u001a\u00020\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u00085\u00a8\u00064"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "favorite",
        "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
        "<init>",
        "(Lfast/dic/dict/helpers/database/couchbase/FDFavourite;)V",
        "Ljavax/inject/Inject;",
        "_uiState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;",
        "uiState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getUiState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_events",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent;",
        "events",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getEvents",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "folderId",
        "",
        "sortBy",
        "Lfast/dic/dict/domain/entity/WordSortEnum;",
        "offset",
        "",
        "limit",
        "isLoadingMore",
        "",
        "postItems",
        "",
        "list",
        "",
        "Lfast/dic/dict/models/database/ListModel;",
        "init",
        "initialSort",
        "loadInitial",
        "loadMore",
        "refreshAfterSync",
        "deleteItem",
        "document",
        "changeSort",
        "newSort",
        "fetchAllFavoritesForShare",
        "callback",
        "Lkotlin/Function1;",
        "onItemSelected",
        "item",
        "onItemDeleteRequested",
        "position",
        "DirectoryEvent",
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
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final _uiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final events:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final favorite:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

.field private folderId:Ljava/lang/String;

.field private isLoadingMore:Z

.field private limit:I

.field private offset:I

.field private sortBy:Lfast/dic/dict/domain/entity/WordSortEnum;

.field private final uiState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfast/dic/dict/helpers/database/couchbase/FDFavourite;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "favorite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 23
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->favorite:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    .line 27
    new-instance p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, v0, v1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;-><init>(Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 28
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlow;

    const/4 p1, 0x4

    const/4 v0, 0x5

    .line 31
    invoke-static {v2, p1, v1, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 32
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->events:Lkotlinx/coroutines/flow/SharedFlow;

    .line 41
    sget-object p1, Lfast/dic/dict/domain/entity/WordSortEnum;->NEWEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->sortBy:Lfast/dic/dict/domain/entity/WordSortEnum;

    const/16 p1, 0x32

    .line 44
    iput p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->limit:I

    return-void
.end method

.method public static final synthetic access$getFavorite$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDFavourite;
    .locals 0

    .line 21
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->favorite:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    return-object p0
.end method

.method public static final synthetic access$getLimit$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)I
    .locals 0

    .line 21
    iget p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->limit:I

    return p0
.end method

.method public static final synthetic access$getOffset$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)I
    .locals 0

    .line 21
    iget p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->offset:I

    return p0
.end method

.method public static final synthetic access$getSortBy$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)Lfast/dic/dict/domain/entity/WordSortEnum;
    .locals 0

    .line 21
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->sortBy:Lfast/dic/dict/domain/entity/WordSortEnum;

    return-object p0
.end method

.method public static final synthetic access$get_uiState$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 21
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$postItems(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/util/List;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->postItems(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setLimit$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;I)V
    .locals 0

    .line 21
    iput p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->limit:I

    return-void
.end method

.method public static final synthetic access$setLoadingMore$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->isLoadingMore:Z

    return-void
.end method

.method public static final synthetic access$setOffset$p(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;I)V
    .locals 0

    .line 21
    iput p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->offset:I

    return-void
.end method

.method private final postItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    .line 49
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 50
    new-instance v1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    new-instance v2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->isLoading()Z

    move-result p1

    invoke-direct {v1, v2, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;-><init>(Ljava/util/List;Z)V

    .line 49
    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final changeSort(Lfast/dic/dict/domain/entity/WordSortEnum;)V
    .locals 1

    const-string v0, "newSort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->sortBy:Lfast/dic/dict/domain/entity/WordSortEnum;

    .line 118
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->loadInitial()V

    return-void
.end method

.method public final deleteItem(Lfast/dic/dict/models/database/ListModel;)V
    .locals 7

    .line 103
    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    check-cast p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    return-void

    .line 105
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$deleteItem$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$deleteItem$1;-><init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final fetchAllFavoritesForShare(Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 126
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->folderId:Ljava/lang/String;

    if-nez v0, :cond_0

    check-cast p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    .line 127
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 131
    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, p1, v4}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$fetchAllFavoritesForShare$1;-><init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getEvents()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->events:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final getUiState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final init(Ljava/lang/String;Lfast/dic/dict/domain/entity/WordSortEnum;)V
    .locals 1

    const-string v0, "initialSort"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->folderId:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->sortBy:Lfast/dic/dict/domain/entity/WordSortEnum;

    .line 56
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->loadInitial()V

    return-void
.end method

.method public final loadInitial()V
    .locals 10

    .line 60
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v2, v3}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->copy$default(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;Ljava/util/List;ZILjava/lang/Object;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->folderId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;

    invoke-direct {v1, p0, v0, v3}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadInitial$1;-><init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final loadMore()V
    .locals 9

    .line 74
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->folderId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-boolean v1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->isLoadingMore:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->_uiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->getItems()Ljava/util/List;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->favorite:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    invoke-virtual {v2, v0}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->count(Ljava/lang/String;)I

    move-result v2

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v2, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x1

    .line 80
    iput-boolean v2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->isLoadingMore:Z

    .line 81
    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/ViewModel;

    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v0, v1, v5}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$loadMore$1;-><init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onItemDeleteRequested(Lfast/dic/dict/models/database/ListModel;I)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$ConfirmDelete;

    invoke-direct {v0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$ConfirmDelete;-><init>(Lfast/dic/dict/models/database/ListModel;I)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onItemSelected(Lfast/dic/dict/models/database/ListModel;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->isTranslator()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWordHtml()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 144
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$OpenAi;

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$OpenAi;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 147
    :cond_2
    :goto_0
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->_events:Lkotlinx/coroutines/flow/MutableSharedFlow;

    new-instance v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$OpenWordResult;

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$OpenWordResult;-><init>(Lfast/dic/dict/models/database/ListModel;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final refreshAfterSync()V
    .locals 8

    .line 92
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;->folderId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$refreshAfterSync$1;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v0, v4}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$refreshAfterSync$1;-><init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
