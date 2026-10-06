.class final Lfast/dic/dict/database/FDDatabaseManager$search$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FDDatabaseManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/database/FDDatabaseManager;->search(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDDatabaseManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDDatabaseManager.kt\nfast/dic/dict/database/FDDatabaseManager$search$1\n+ 2 Cursor.kt\nandroidx/core/database/CursorKt\n*L\n1#1,1746:1\n72#2:1747\n*S KotlinDebug\n*F\n+ 1 FDDatabaseManager.kt\nfast/dic/dict/database/FDDatabaseManager$search$1\n*L\n160#1:1747\n*E\n"
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
    c = "fast.dic.dict.database.FDDatabaseManager$search$1"
    f = "FDDatabaseManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
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

.field final synthetic $finalWord:Ljava/lang/String;

.field final synthetic $limitNo:I

.field final synthetic $needHistoryCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/database/FDDatabaseManager;


# direct methods
.method constructor <init>(Lfast/dic/dict/database/FDDatabaseManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/database/FDDatabaseManager$search$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    iput-object p2, p0, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$finalWord:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$needHistoryCallback:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput p5, p0, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$limitNo:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lfast/dic/dict/database/FDDatabaseManager$search$1;

    iget-object v1, p0, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    iget-object v2, p0, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$finalWord:Ljava/lang/String;

    iget-object v3, p0, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$needHistoryCallback:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget v5, p0, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$limitNo:I

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/database/FDDatabaseManager$search$1;-><init>(Lfast/dic/dict/database/FDDatabaseManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lfast/dic/dict/database/FDDatabaseManager$search$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/database/FDDatabaseManager$search$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/database/FDDatabaseManager$search$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/database/FDDatabaseManager$search$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/database/FDDatabaseManager$search$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v1, p0

    iget-object v0, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 100
    iget v0, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->label:I

    if-nez v0, :cond_11

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    iget-object v0, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-static {v0}, Lfast/dic/dict/database/FDDatabaseManager;->access$getLogger$p(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/utils/Logger;

    move-result-object v0

    iget-object v3, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$finalWord:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "~~~> Start searching ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") word at "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v0, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-static {v0}, Lfast/dic/dict/database/FDDatabaseManager;->access$getStringUtils$p(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/utils/StringUtils;

    move-result-object v0

    iget-object v3, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$finalWord:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lfast/dic/dict/utils/StringUtils;->trimmingAndLowerCaseWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    .line 105
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 113
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 119
    iget-object v8, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    const/16 v9, 0x64

    if-lt v0, v9, :cond_1

    .line 114
    invoke-static {v8}, Lfast/dic/dict/database/FDDatabaseManager;->access$getTranslatePlaceHolder(Lfast/dic/dict/database/FDDatabaseManager;)Ljava/util/List;

    move-result-object v0

    .line 115
    iget-object v1, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 119
    :cond_1
    invoke-static {v8}, Lfast/dic/dict/database/FDDatabaseManager;->access$getDatabaseHelper$p(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    iget-object v0, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 129
    :cond_2
    :try_start_0
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v0, v3}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    const-string v9, "*"

    const/4 v10, 0x2

    if-eqz v0, :cond_3

    .line 131
    :try_start_1
    const-string v0, "SELECT w.english_word AS word, w.english_word_id as word_id, english_word_id_parent as word_id_parent FROM english_words w WHERE w.english_word GLOB ? ORDER BY w.english_word LIMIT ?"

    .line 132
    iget-object v11, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    new-array v10, v10, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v4

    iget v9, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$limitNo:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-static {v11, v0, v10}, Lfast/dic/dict/database/FDDatabaseManager;->access$safeRawQuery(Lfast/dic/dict/database/FDDatabaseManager;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_3
    const-string v0, "SELECT w.persian_word AS word, w.persian_word_id as word_id, persian_word_id_parent as word_id_parent FROM persian_words w WHERE w.word_in_number GLOB ? ORDER BY length(w.word_in_number) LIMIT ?"

    .line 136
    iget-object v11, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    .line 138
    new-array v10, v10, [Ljava/lang/String;

    sget-object v12, Lfast/dic/dict/utils/StringUtils;->Companion:Lfast/dic/dict/utils/StringUtils$Companion;

    invoke-virtual {v12, v3}, Lfast/dic/dict/utils/StringUtils$Companion;->peCharacterToNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v4

    iget v9, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$limitNo:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v8

    .line 136
    invoke-static {v11, v0, v10}, Lfast/dic/dict/database/FDDatabaseManager;->access$safeRawQuery(Lfast/dic/dict/database/FDDatabaseManager;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    iget-object v8, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-static {v8}, Lfast/dic/dict/database/FDDatabaseManager;->access$getLogger$p(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/utils/Logger;

    move-result-object v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "~~~> SQLiteException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 144
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v8

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v8, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 147
    :goto_0
    new-instance v8, Lfast/dic/dict/utils/FDCategory;

    invoke-direct {v8}, Lfast/dic/dict/utils/FDCategory;-><init>()V

    if-eqz v0, :cond_b

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 152
    :cond_4
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 153
    iget-object v2, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-static {v2}, Lfast/dic/dict/database/FDDatabaseManager;->access$getLogger$p(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/utils/Logger;

    move-result-object v2

    iget-object v1, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$finalWord:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "~~~> Canceled searching ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 156
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 158
    :cond_5
    new-instance v9, Lfast/dic/dict/models/database/ListModel;

    const v31, 0x1fffff

    const/16 v32, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v9 .. v32}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    const-string/jumbo v10, "word_id_parent"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1747
    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v10, v7

    goto :goto_1

    :cond_6
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    .line 162
    :goto_1
    invoke-virtual {v8, v3}, Lfast/dic/dict/utils/FDCategory;->findLanguage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Lfast/dic/dict/models/database/ListModel;->setCategory(Ljava/lang/Integer;)V

    .line 163
    const-string/jumbo v11, "word"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lfast/dic/dict/models/database/ListModel;->setWord(Ljava/lang/String;)V

    if-nez v10, :cond_7

    .line 165
    const-string/jumbo v11, "word_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_2

    :cond_7
    move-object v11, v10

    .line 164
    :goto_2
    invoke-virtual {v9, v11}, Lfast/dic/dict/models/database/ListModel;->setWordId(Ljava/lang/Integer;)V

    if-nez v10, :cond_9

    .line 168
    iget-object v10, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    .line 169
    sget-object v11, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v9}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->find(Ljava/lang/String;)Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    move-result-object v11

    .line 170
    invoke-virtual {v9}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 171
    iget-object v13, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-virtual {v13}, Lfast/dic/dict/database/FDDatabaseManager;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object v13

    .line 168
    invoke-virtual {v10, v11, v12, v13}, Lfast/dic/dict/database/FDDatabaseManager;->getMeanings(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;ILnet/zetetic/database/sqlcipher/SQLiteDatabase;)Ljava/util/List;

    move-result-object v10

    .line 174
    sget-object v11, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v11, v3}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 175
    move-object v12, v10

    check-cast v12, Ljava/lang/Iterable;

    const-string/jumbo v10, "\u060c "

    move-object v13, v10

    check-cast v13, Ljava/lang/CharSequence;

    const/16 v19, 0x3e

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    goto :goto_3

    .line 177
    :cond_8
    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    const-string v10, ", "

    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    const/16 v18, 0x3e

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    goto :goto_3

    .line 180
    :cond_9
    sget-object v10, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v10, v3}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result v10

    .line 185
    iget-object v11, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    if-eqz v10, :cond_a

    .line 182
    invoke-static {v11}, Lfast/dic/dict/database/FDDatabaseManager;->access$getContext$p(Lfast/dic/dict/database/FDDatabaseManager;)Landroid/content/Context;

    move-result-object v10

    sget v11, Lfast/dic/dict/R$string;->fa_to_see_translate_click_on_text:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 181
    invoke-virtual {v9, v10}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    goto :goto_3

    .line 185
    :cond_a
    invoke-static {v11}, Lfast/dic/dict/database/FDDatabaseManager;->access$getContext$p(Lfast/dic/dict/database/FDDatabaseManager;)Landroid/content/Context;

    move-result-object v10

    sget v11, Lfast/dic/dict/R$string;->en_to_see_translate_click_on_text:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 184
    invoke-virtual {v9, v10}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    .line 189
    :goto_3
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_4

    :cond_b
    if-eqz v0, :cond_c

    .line 193
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_c
    iget-object v0, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-static {v0}, Lfast/dic/dict/database/FDDatabaseManager;->access$getTranslatePlaceHolder(Lfast/dic/dict/database/FDDatabaseManager;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 196
    iget-object v2, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$needHistoryCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 198
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 199
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    iget-object v1, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 206
    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_e

    invoke-static {}, Lfast/dic/dict/utils/Util;->isMemoryReadyForLevenshtein()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 208
    new-instance v2, Lfast/dic/dict/helpers/FDSuggestions;

    invoke-direct {v2}, Lfast/dic/dict/helpers/FDSuggestions;-><init>()V

    .line 210
    iget-object v4, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    .line 208
    invoke-virtual {v2, v3, v4}, Lfast/dic/dict/helpers/FDSuggestions;->getLevenshtein(Ljava/lang/String;Lfast/dic/dict/database/FDDatabaseManager;)Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 207
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v1, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 217
    :cond_e
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-static {}, Lfast/dic/dict/utils/Util;->isMemoryReadyForLevenshtein()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 221
    new-instance v2, Lfast/dic/dict/helpers/FDSuggestions;

    invoke-direct {v2}, Lfast/dic/dict/helpers/FDSuggestions;-><init>()V

    iget-object v4, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->this$0:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-virtual {v2, v3, v4}, Lfast/dic/dict/helpers/FDSuggestions;->getLevenshtein(Ljava/lang/String;Lfast/dic/dict/database/FDDatabaseManager;)Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    :cond_f
    iget-object v1, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 106
    :cond_10
    :goto_4
    iget-object v0, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$needHistoryCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    iget-object v1, v1, Lfast/dic/dict/database/FDDatabaseManager$search$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 100
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
