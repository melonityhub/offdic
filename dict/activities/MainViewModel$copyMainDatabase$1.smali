.class final Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/activities/MainViewModel;->copyMainDatabase(Z)V
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
    c = "fast.dic.dict.activities.MainViewModel$copyMainDatabase$1"
    f = "MainViewModel.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x125,
        0x125,
        0x125
    }
    m = "invokeSuspend"
    n = {
        "hasCopied",
        "stopCopingDatabase",
        "hasCopied",
        "stopCopingDatabase",
        "hasCopied",
        "stopCopingDatabase"
    }
    nl = {
        0x129,
        0x129,
        0x12a
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
    v = 0x2
.end annotation


# instance fields
.field final synthetic $forceClose:Z

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/activities/MainViewModel;


# direct methods
.method constructor <init>(ZLfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lfast/dic/dict/activities/MainViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->$forceClose:Z

    iput-object p2, p0, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

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

    new-instance p1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;

    iget-boolean v0, p0, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->$forceClose:Z

    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;-><init>(ZLfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    const-string v2, "CopyMainDatabase: Exception while creating db: "

    const-string v3, "MainViewModel copyMainDatabase failed: "

    const-string v4, "MainViewModel: copyMainDatabase failed: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 234
    iget v0, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v1, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    iget-object v0, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 235
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 239
    :try_start_0
    iget-boolean v0, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->$forceClose:Z

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-static {v0}, Lfast/dic/dict/activities/MainViewModel;->access$getFdMainDatabaseHelper$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->removeDatabase()V

    .line 243
    :cond_3
    sget-object v0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Util;->getAvailableInternalMemorySize()J

    move-result-wide v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const-wide/32 v12, 0x5f5e100

    cmp-long v0, v16, v12

    .line 247
    iget-object v12, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    if-ltz v0, :cond_4

    .line 246
    :try_start_1
    invoke-static {v12}, Lfast/dic/dict/activities/MainViewModel;->access$getFdMainDatabaseHelper$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    move-result-object v12

    invoke-virtual {v12}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->readyLocalStorageBeforeCopyDatabase()Z

    move-result v12

    goto :goto_0

    .line 247
    :cond_4
    invoke-static {v12}, Lfast/dic/dict/activities/MainViewModel;->access$getFdMainDatabaseHelper$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    move-result-object v12

    invoke-virtual {v12}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v12

    if-nez v12, :cond_5

    .line 248
    iget-object v12, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-static {v12}, Lfast/dic/dict/activities/MainViewModel;->access$getFdMainDatabaseHelper$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    move-result-object v12

    invoke-virtual {v12}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->readyLocalStorageBeforeCopyDatabase()Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    goto :goto_0

    :cond_5
    move v12, v11

    :goto_0
    if-nez v12, :cond_6

    .line 253
    :try_start_2
    iget-object v13, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-static {v13}, Lfast/dic/dict/activities/MainViewModel;->access$get_copyUiState$p(Lfast/dic/dict/activities/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    new-instance v14, Lfast/dic/dict/activities/MainViewModel$CopyUiState$Show;

    sget v15, Lfast/dic/dict/R$string;->updating_database:I

    invoke-direct {v14, v15}, Lfast/dic/dict/activities/MainViewModel$CopyUiState$Show;-><init>(I)V

    invoke-interface {v13, v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 256
    :cond_6
    :goto_1
    :try_start_3
    iget-object v13, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-static {v13}, Lfast/dic/dict/activities/MainViewModel;->access$getFdMainDatabaseHelper$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    move-result-object v13

    invoke-virtual {v13}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->getDatabaseSize()J

    move-result-wide v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 266
    iget-object v13, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    .line 258
    const-string v6, "CopyMainDatabase: Exception happen "

    if-ltz v0, :cond_7

    .line 260
    :try_start_4
    invoke-static {v13}, Lfast/dic/dict/activities/MainViewModel;->access$getFdMainDatabaseHelper$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, v12}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->createDatabase(Z)Z

    move-result v0

    iput-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 262
    :try_start_5
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v13

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v14, v11, [Ljava/lang/Object;

    invoke-virtual {v13, v0, v14}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 266
    :cond_7
    :try_start_6
    invoke-static {v13}, Lfast/dic/dict/activities/MainViewModel;->access$getFdMainDatabaseHelper$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v0

    if-nez v0, :cond_8

    .line 268
    iget-object v0, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-static {v0}, Lfast/dic/dict/activities/MainViewModel;->access$get_copyUiState$p(Lfast/dic/dict/activities/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move v13, v12

    :try_start_7
    new-instance v12, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v18, v13

    .line 269
    :try_start_8
    sget v13, Lfast/dic/dict/R$string;->error:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move/from16 v19, v18

    .line 272
    :try_start_9
    sget v18, Lfast/dic/dict/R$string;->exit:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move/from16 v20, v19

    const/16 v19, 0x1

    move/from16 v7, v20

    .line 268
    :try_start_a
    invoke-direct/range {v12 .. v19}, Lfast/dic/dict/activities/MainViewModel$CopyUiState$StorageAlert;-><init>(IJJIZ)V

    invoke-interface {v0, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v7, v19

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move/from16 v7, v18

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move v7, v13

    goto :goto_5

    :cond_8
    :goto_2
    move v7, v12

    .line 277
    :goto_3
    iget-object v0, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-static {v0}, Lfast/dic/dict/activities/MainViewModel;->access$getFdMainDatabaseHelper$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v0, :cond_9

    .line 279
    :try_start_b
    iget-object v0, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-static {v0}, Lfast/dic/dict/activities/MainViewModel;->access$getFdMainDatabaseHelper$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, v7}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->createDatabase(Z)Z

    move-result v0

    iput-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_4

    :catch_1
    move-exception v0

    .line 281
    :try_start_c
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v12

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v6}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 293
    :cond_9
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1$1;

    iget-object v3, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-direct {v2, v3, v9, v10}, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1$1;-><init>(Lfast/dic/dict/activities/MainViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->L$0:Ljava/lang/Object;

    iput v7, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->I$0:I

    iput v8, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->label:I

    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_a

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    :goto_5
    move v12, v7

    goto :goto_6

    :catchall_5
    move-exception v0

    move v7, v12

    goto :goto_6

    :catchall_6
    move-exception v0

    move v12, v11

    .line 288
    :goto_6
    :try_start_d
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v6}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v2

    .line 290
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 293
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1$1;

    iget-object v3, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-direct {v2, v3, v9, v10}, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1$1;-><init>(Lfast/dic/dict/activities/MainViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->L$0:Ljava/lang/Object;

    iput v12, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->I$0:I

    const/4 v4, 0x2

    iput v4, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->label:I

    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_a

    goto :goto_8

    .line 298
    :cond_a
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_7
    move-exception v0

    .line 293
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1$1;

    iget-object v4, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->this$0:Lfast/dic/dict/activities/MainViewModel;

    invoke-direct {v3, v4, v9, v10}, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1$1;-><init>(Lfast/dic/dict/activities/MainViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->L$1:Ljava/lang/Object;

    iput v12, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->I$0:I

    const/4 v6, 0x3

    iput v6, v1, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;->label:I

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_b

    :goto_8
    return-object v5

    .line 298
    :cond_b
    :goto_9
    throw v0
.end method
