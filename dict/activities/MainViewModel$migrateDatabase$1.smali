.class final Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/activities/MainViewModel;->migrateDatabase()V
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
    c = "fast.dic.dict.activities.MainViewModel$migrateDatabase$1"
    f = "MainViewModel.kt"
    i = {}
    l = {
        0xd9,
        0xd9,
        0xd9
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        0xdd,
        0xdd,
        0xde
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/activities/MainViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/activities/MainViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

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

    new-instance p1, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;

    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-direct {p1, p0, p2}, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;-><init>(Lfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "MainViewModel: migration failed: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 201
    iget v2, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v2, 0x0

    .line 203
    :try_start_0
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v6

    const-string v7, "MainViewModel: background migration started"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v6, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-static {v6}, Lfast/dic/dict/activities/MainViewModel;->access$getFdListPath$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDListPath;

    move-result-object v6

    invoke-virtual {v6}, Lfast/dic/dict/helpers/FDListPath;->isDBExistsInDocumentCB()Z

    move-result v6

    if-nez v6, :cond_3

    .line 206
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v6

    const-string v7, "MainViewModel: migrating list DB to CB"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v6, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-static {v6}, Lfast/dic/dict/activities/MainViewModel;->access$getFdListPath$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDListPath;

    move-result-object v6

    invoke-virtual {v6}, Lfast/dic/dict/helpers/FDListPath;->migrateToCB()V

    .line 208
    iget-object v6, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-static {v6}, Lfast/dic/dict/activities/MainViewModel;->access$getFdListPath$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDListPath;

    move-result-object v6

    invoke-virtual {v6}, Lfast/dic/dict/helpers/FDListPath;->migrateAddFolder()V

    goto :goto_0

    .line 210
    :cond_3
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v6

    const-string v7, "MainViewModel: only migrateAddFolder called"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v6, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-static {v6}, Lfast/dic/dict/activities/MainViewModel;->access$getFdListPath$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDListPath;

    move-result-object v6

    invoke-virtual {v6}, Lfast/dic/dict/helpers/FDListPath;->migrateAddFolder()V

    .line 213
    :goto_0
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v6

    const-string v7, "MainViewModel: background migration finished"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1$1;

    iget-object v3, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-direct {v2, v3, p1}, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1$1;-><init>(Lfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->label:I

    invoke-static {v0, v2, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v5

    .line 215
    :try_start_1
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1$1;

    iget-object v3, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-direct {v2, v3, p1}, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1$1;-><init>(Lfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->label:I

    invoke-static {v0, v2, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    .line 222
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_1
    move-exception v0

    .line 217
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1$1;

    iget-object v5, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-direct {v4, v5, p1}, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1$1;-><init>(Lfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;->label:I

    invoke-static {v2, v4, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object p0, v0

    .line 222
    :goto_3
    throw p0
.end method
