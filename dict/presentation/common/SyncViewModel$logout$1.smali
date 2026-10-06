.class final Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/common/SyncViewModel;->logout(Lkotlin/jvm/functions/Function0;)V
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
    c = "fast.dic.dict.presentation.common.SyncViewModel$logout$1"
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
.field final synthetic $onFinish:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/common/SyncViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/common/SyncViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/common/SyncViewModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->this$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->$onFinish:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lfast/dic/dict/presentation/common/SyncViewModel;Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 7

    .line 60
    const-string v0, "Database deleted"

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 63
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getLocalStorage$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lfast/dic/dict/database/LocalStorage;->setEnableSync(Z)V

    .line 64
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getLocalStorage$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lfast/dic/dict/database/LocalStorage;->setDefaultsLastSyncDate(Ljava/util/Date;)V

    .line 65
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getLocalStorage$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p2

    invoke-virtual {p2, v0}, Lfast/dic/dict/database/LocalStorage;->setOfflineTranslator(Z)V

    .line 66
    invoke-static {p0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getLocalStorage$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    new-instance v0, Lfast/dic/dict/data/sync/model/SyncSessionModel;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/data/sync/model/SyncSessionModel;-><init>(Ljava/lang/String;Ljava/util/Date;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lfast/dic/dict/database/LocalStorage;->setCbSession(Lfast/dic/dict/data/sync/model/SyncSessionModel;)V

    .line 69
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 70
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance p1, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->this$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->$onFinish:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;-><init>(Lfast/dic/dict/presentation/common/SyncViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 53
    iget v0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p1

    instance-of v0, p1, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_0

    check-cast p1, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    iget-object v0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->this$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    invoke-static {v0}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getLocalStorage$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getDefaultsLastSyncDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 56
    iget-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->this$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getReplicator$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lcom/couchbase/lite/Replicator;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/couchbase/lite/Replicator;->stop()V

    .line 57
    :cond_1
    iget-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->this$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getReplicator$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lcom/couchbase/lite/Replicator;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/couchbase/lite/Replicator;->close()V

    .line 59
    :cond_2
    iget-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->this$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/common/SyncViewModel;->access$getFdListPath$p(Lfast/dic/dict/presentation/common/SyncViewModel;)Lfast/dic/dict/helpers/FDListPath;

    move-result-object p1

    iget-object v0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->this$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->$onFinish:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/common/SyncViewModel;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Lfast/dic/dict/helpers/FDListPath;->deleteDB(Lkotlin/jvm/functions/Function1;)V

    goto :goto_1

    .line 72
    :cond_3
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$logout$1;->$onFinish:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 74
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 53
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
