.class public final Lfast/dic/dict/presentation/common/SyncViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SyncViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B-\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u001a\u0002\u0008\u000c\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001bJ\u0006\u0010!\u001a\u00020\u001fJ\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020#J\u0008\u0010%\u001a\u0004\u0018\u00010&J\u0014\u0010\'\u001a\u00020\u001f2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001f0)J\u0006\u0010*\u001a\u00020\u001fJ\u0006\u0010+\u001a\u00020\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00ca\u0001\u0002\u0008-\u00a8\u0006,"
    }
    d2 = {
        "Lfast/dic/dict/presentation/common/SyncViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "fdHistory",
        "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
        "fdListPath",
        "Lfast/dic/dict/helpers/FDListPath;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "fdSyncSession",
        "Lfast/dic/dict/data/sync/repository/FDSyncSession;",
        "<init>",
        "(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/data/sync/repository/FDSyncSession;)V",
        "Ljavax/inject/Inject;",
        "_syncState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/presentation/common/SyncUIState;",
        "syncState",
        "Landroidx/lifecycle/LiveData;",
        "getSyncState",
        "()Landroidx/lifecycle/LiveData;",
        "setSyncState",
        "(Landroidx/lifecycle/LiveData;)V",
        "replicator",
        "Lcom/couchbase/lite/Replicator;",
        "listenerToken",
        "Lcom/couchbase/lite/ListenerToken;",
        "selectedSort",
        "Lfast/dic/dict/domain/entity/WordSortEnum;",
        "getSelectedSort",
        "()Lfast/dic/dict/domain/entity/WordSortEnum;",
        "updateSelectedSort",
        "",
        "sort",
        "disableSync",
        "isSyncEnabled",
        "",
        "isAppLanguageIsPersian",
        "getLastTimeSynced",
        "Ljava/util/Date;",
        "logout",
        "onFinish",
        "Lkotlin/Function0;",
        "sync",
        "onDestroy",
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
.field private final _syncState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/presentation/common/SyncUIState;",
            ">;"
        }
    .end annotation
.end field

.field private final fdHistory:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

.field private fdListPath:Lfast/dic/dict/helpers/FDListPath;

.field private final fdSyncSession:Lfast/dic/dict/data/sync/repository/FDSyncSession;

.field private listenerToken:Lcom/couchbase/lite/ListenerToken;

.field private final localStorage:Lfast/dic/dict/database/LocalStorage;

.field private replicator:Lcom/couchbase/lite/Replicator;

.field private final selectedSort:Lfast/dic/dict/domain/entity/WordSortEnum;

.field private syncState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/common/SyncUIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/data/sync/repository/FDSyncSession;)V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "fdHistory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fdListPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localStorage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fdSyncSession"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 27
    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->fdHistory:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    .line 28
    iput-object p2, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->fdListPath:Lfast/dic/dict/helpers/FDListPath;

    .line 29
    iput-object p3, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 30
    iput-object p4, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->fdSyncSession:Lfast/dic/dict/data/sync/repository/FDSyncSession;

    .line 33
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lfast/dic/dict/presentation/common/SyncUIState;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lfast/dic/dict/presentation/common/SyncUIState;-><init>(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->_syncState:Landroidx/lifecycle/MutableLiveData;

    .line 34
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->syncState:Landroidx/lifecycle/LiveData;

    .line 39
    invoke-virtual {p3}, Lfast/dic/dict/database/LocalStorage;->getSelectedSort()Lfast/dic/dict/domain/entity/WordSortEnum;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->selectedSort:Lfast/dic/dict/domain/entity/WordSortEnum;

    return-void
.end method

.method public static final synthetic access$getFdHistory$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDHistory;
    .locals 0

    .line 25
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->fdHistory:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    return-object p0
.end method

.method public static final synthetic access$getFdListPath$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/helpers/FDListPath;
    .locals 0

    .line 25
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->fdListPath:Lfast/dic/dict/helpers/FDListPath;

    return-object p0
.end method

.method public static final synthetic access$getFdSyncSession$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/data/sync/repository/FDSyncSession;
    .locals 0

    .line 25
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->fdSyncSession:Lfast/dic/dict/data/sync/repository/FDSyncSession;

    return-object p0
.end method

.method public static final synthetic access$getLocalStorage$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/database/LocalStorage;
    .locals 0

    .line 25
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    return-object p0
.end method

.method public static final synthetic access$getReplicator$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lcom/couchbase/lite/Replicator;
    .locals 0

    .line 25
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->replicator:Lcom/couchbase/lite/Replicator;

    return-object p0
.end method

.method public static final synthetic access$get_syncState$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 25
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->_syncState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$setListenerToken$p(Lfast/dic/dict/presentation/common/SyncViewModel;Lcom/couchbase/lite/ListenerToken;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->listenerToken:Lcom/couchbase/lite/ListenerToken;

    return-void
.end method

.method public static final synthetic access$setReplicator$p(Lfast/dic/dict/presentation/common/SyncViewModel;Lcom/couchbase/lite/Replicator;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->replicator:Lcom/couchbase/lite/Replicator;

    return-void
.end method


# virtual methods
.method public final disableSync()V
    .locals 1

    .line 45
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfast/dic/dict/database/LocalStorage;->setEnableSync(Z)V

    return-void
.end method

.method public final getLastTimeSynced()Ljava/util/Date;
    .locals 0

    .line 50
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->getDefaultsLastSyncDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getSelectedSort()Lfast/dic/dict/domain/entity/WordSortEnum;
    .locals 0

    .line 39
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->selectedSort:Lfast/dic/dict/domain/entity/WordSortEnum;

    return-object p0
.end method

.method public final getSyncState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/common/SyncUIState;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->syncState:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final isAppLanguageIsPersian()Z
    .locals 0

    .line 48
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result p0

    return p0
.end method

.method public final isSyncEnabled()Z
    .locals 0

    .line 47
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->getEnableSync()Z

    move-result p0

    return p0
.end method

.method public final logout(Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onFinish"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;-><init>(Lfast/dic/dict/presentation/common/SyncViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 137
    iget-object v0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->replicator:Lcom/couchbase/lite/Replicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/Replicator;->stop()V

    .line 138
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->listenerToken:Lcom/couchbase/lite/ListenerToken;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/ListenerToken;->remove()V

    :cond_1
    return-void
.end method

.method public final setSyncState(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/common/SyncUIState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->syncState:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public final sync()V
    .locals 9

    .line 78
    invoke-virtual {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->isSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Sync is not enabled by the user!"

    invoke-virtual {p0, v1, v0}, Lfast/dic/dict/utils/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->_syncState:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lfast/dic/dict/presentation/common/SyncUIState;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lfast/dic/dict/presentation/common/SyncUIState;-><init>(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 85
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;-><init>(Lfast/dic/dict/presentation/common/SyncViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final updateSelectedSort(Lfast/dic/dict/domain/entity/WordSortEnum;)V
    .locals 1

    const-string v0, "sort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0, p1}, Lfast/dic/dict/database/LocalStorage;->setSelectedSort(Lfast/dic/dict/domain/entity/WordSortEnum;)V

    return-void
.end method
