.class final Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/common/SyncViewModel;->sync()V
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
    c = "fast.dic.dict.presentation.common.SyncViewModel$sync$1"
    f = "SyncViewModel.kt"
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

.field final synthetic this$0:Lfast/dic/dict/presentation/common/SyncViewModel;


# direct methods
.method public static synthetic $r8$lambda$flzUxeTA3Yg_1GBNJZ9gM5OYDeU(Lfast/dic/dict/presentation/common/SyncViewModel;Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;->invokeSuspend$lambda$0$0(Lfast/dic/dict/presentation/common/SyncViewModel;Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method

.method constructor <init>(Lfast/dic/dict/presentation/common/SyncViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/common/SyncViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;->this$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lfast/dic/dict/presentation/common/SyncViewModel;Lfast/dic/dict/data/sync/model/SyncSessionModel;)Lkotlin/Unit;
    .locals 8

    .line 87
    invoke-virtual {p1}, Lfast/dic/dict/data/sync/model/SyncSessionModel;->getError()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p1}, Lfast/dic/dict/data/sync/model/SyncSessionModel;->getErrorCode()I

    move-result v0

    const/16 v2, 0x190

    if-ne v0, v2, :cond_0

    .line 89
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getLocalStorage$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfast/dic/dict/database/LocalStorage;->setDefaultsLastSyncDate(Ljava/util/Date;)V

    .line 92
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$get_syncState$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    .line 93
    new-instance v0, Lfast/dic/dict/presentation/common/SyncUIState;

    invoke-virtual {p1}, Lfast/dic/dict/data/sync/model/SyncSessionModel;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x13

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Unknown error!"

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lfast/dic/dict/presentation/common/SyncUIState;-><init>(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 95
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 99
    :cond_1
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getFdListPath$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/helpers/FDListPath;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDListPath;->updateDocuments()V

    .line 102
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getFdListPath$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/helpers/FDListPath;

    move-result-object v0

    invoke-virtual {p1}, Lfast/dic/dict/data/sync/model/SyncSessionModel;->getSession_id()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {v0, p1}, Lfast/dic/dict/helpers/FDListPath;->replicatorConfiguration(Ljava/lang/String;)Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/couchbase/lite/Replicator;

    invoke-direct {v0, p1}, Lcom/couchbase/lite/Replicator;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V

    invoke-static {p0, v0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$setReplicator$p(Lfast/dic/dict/presentation/common/SyncViewModel;Lcom/couchbase/lite/Replicator;)V

    .line 105
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getReplicator$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lcom/couchbase/lite/Replicator;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/common/SyncViewModel;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Replicator;->addChangeListener(Lcom/couchbase/lite/ReplicatorChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object v1

    :cond_3
    invoke-static {p0, v1}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$setListenerToken$p(Lfast/dic/dict/presentation/common/SyncViewModel;Lcom/couchbase/lite/ListenerToken;)V

    .line 131
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getReplicator$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lcom/couchbase/lite/Replicator;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/couchbase/lite/Replicator;->start()V

    .line 132
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$0(Lfast/dic/dict/presentation/common/SyncViewModel;Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 8

    .line 106
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/couchbase/lite/CouchbaseLiteException;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error code :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v0

    const-string v1, "getStatus(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getProgress()Lcom/couchbase/lite/ReplicatorProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatorProgress;->getCompleted()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getProgress()Lcom/couchbase/lite/ReplicatorProgress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/couchbase/lite/ReplicatorProgress;->getTotal()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/ReplicatorActivityLevel;->IDLE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne v1, v2, :cond_2

    .line 113
    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getProgress()Lcom/couchbase/lite/ReplicatorProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorProgress;->getCompleted()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getProgress()Lcom/couchbase/lite/ReplicatorProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorProgress;->getTotal()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p1

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PushPull Replicator: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", activity = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 116
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getFdHistory$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->deleteOldHistory()V

    .line 117
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getFdListPath$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/helpers/FDListPath;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/helpers/FDListPath;->checkAndDeDuplicateDocuments()V

    .line 119
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 120
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getLocalStorage$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p1

    invoke-virtual {p1, v5}, Lfast/dic/dict/database/LocalStorage;->setDefaultsLastSyncDate(Ljava/util/Date;)V

    .line 122
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$get_syncState$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance v0, Lfast/dic/dict/presentation/common/SyncUIState;

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v7}, Lfast/dic/dict/presentation/common/SyncUIState;-><init>(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne v0, v1, :cond_3

    .line 124
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$get_syncState$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance v0, Lfast/dic/dict/presentation/common/SyncUIState;

    const/16 v6, 0x1b

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Stopped with Error!"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lfast/dic/dict/presentation/common/SyncUIState;-><init>(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 125
    :cond_3
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 126
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$get_syncState$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance v0, Lfast/dic/dict/presentation/common/SyncUIState;

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/couchbase/lite/CouchbaseLiteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    :cond_4
    const-string v1, "Unknown error"

    :cond_5
    move-object v3, v1

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/couchbase/lite/CouchbaseLiteException;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    move-object v4, p1

    const/16 v6, 0x13

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lfast/dic/dict/presentation/common/SyncUIState;-><init>(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_7
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

    new-instance p1, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;

    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;->this$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    invoke-direct {p1, p0, p2}, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;-><init>(Lfast/dic/dict/presentation/common/SyncViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 85
    iget v0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;->this$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getFdSyncSession$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/data/sync/repository/FDSyncSession;

    move-result-object p1

    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;->this$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    new-instance v0, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/common/SyncViewModel;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/data/sync/repository/FDSyncSession;->getSession(Lkotlin/jvm/functions/Function1;)V

    .line 133
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
