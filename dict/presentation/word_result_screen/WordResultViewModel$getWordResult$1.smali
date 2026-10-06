.class final Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WordResultViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getWordResult(Ljava/lang/String;Ljava/lang/Integer;)V
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
    value = "SMAP\nWordResultViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WordResultViewModel.kt\nfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,585:1\n777#2:586\n873#2,2:587\n1739#2:589\n1814#2,3:590\n*S KotlinDebug\n*F\n+ 1 WordResultViewModel.kt\nfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1\n*L\n103#1:586\n103#1:587,2\n104#1:589\n104#1:590,3\n*E\n"
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
    c = "fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getWordResult$1"
    f = "WordResultViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $isDarkMode:Z

.field final synthetic $word:Ljava/lang/String;

.field final synthetic $wordId:Ljava/lang/Integer;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/Integer;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;",
            "Ljava/lang/Integer;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$word:Ljava/lang/String;

    iput-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iput-object p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$wordId:Ljava/lang/Integer;

    iput-boolean p4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$isDarkMode:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$word:Ljava/lang/String;

    iget-object v2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iget-object v3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$wordId:Ljava/lang/Integer;

    iget-boolean v4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$isDarkMode:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;-><init>(Ljava/lang/String;Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/Integer;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 91
    iget v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->label:I

    if-nez v1, :cond_f

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$word:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->find(Ljava/lang/String;)Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    move-result-object v1

    .line 93
    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getDatabaseHelper$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/database/FDDatabaseManager;

    move-result-object v2

    iget-object v3, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$word:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lfast/dic/dict/database/FDDatabaseManager;->getWordIdParent(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 98
    iget-object v3, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    if-eqz v2, :cond_0

    .line 96
    invoke-static {v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getDatabaseHelper$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/database/FDDatabaseManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Lfast/dic/dict/database/FDDatabaseManager;->getDetailByWordId(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Lfast/dic/dict/models/database/SearchResultModel;

    move-result-object v2

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getDatabaseHelper$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/database/FDDatabaseManager;

    move-result-object v2

    iget-object v3, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$word:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lfast/dic/dict/database/FDDatabaseManager;->getDetailByWordGetOtherFormOfWord(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;)Lfast/dic/dict/models/database/SearchResultModel;

    move-result-object v2

    .line 101
    :goto_0
    sget-object v3, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v3, :cond_8

    .line 102
    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getEnglishSearchResultModel()Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getMeanings()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    check-cast v3, Ljava/lang/Iterable;

    .line 586
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 587
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lfast/dic/dict/models/database/EnglishMeaningModel;

    .line 103
    invoke-virtual {v9}, Lfast/dic/dict/models/database/EnglishMeaningModel;->getMeaning()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    move v9, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v9, v5

    :goto_3
    if-nez v9, :cond_1

    .line 587
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 588
    :cond_4
    check-cast v7, Ljava/util/List;

    .line 102
    check-cast v7, Ljava/lang/Iterable;

    .line 589
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 590
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 591
    check-cast v5, Lfast/dic/dict/models/database/EnglishMeaningModel;

    .line 104
    invoke-virtual {v5}, Lfast/dic/dict/models/database/EnglishMeaningModel;->getMeaning()Ljava/lang/String;

    move-result-object v5

    .line 591
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 592
    :cond_5
    check-cast v3, Ljava/util/List;

    goto :goto_5

    :cond_6
    move-object v3, v6

    :goto_5
    if-eqz v3, :cond_7

    .line 106
    move-object v7, v3

    check-cast v7, Ljava/lang/Iterable;

    const-string/jumbo v3, "\u060c "

    move-object v8, v3

    check-cast v8, Ljava/lang/CharSequence;

    const/16 v14, 0x3e

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_7
    move-object/from16 v22, v6

    goto :goto_7

    .line 107
    :cond_8
    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWordDetails()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-ne v3, v5, :cond_9

    .line 108
    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWordDetails()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfast/dic/dict/models/database/PersianWordDetail;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lfast/dic/dict/models/database/PersianWordDetail;->getMeaning()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 110
    :cond_9
    const-string v3, ""

    :goto_6
    move-object/from16 v22, v3

    .line 113
    :goto_7
    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getEnglishSearchResultModel()Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWord()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_a
    move-object v3, v6

    :goto_8
    if-nez v3, :cond_d

    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWord()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_b
    move-object v3, v6

    :goto_9
    if-nez v3, :cond_d

    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getEnglishSearchResultModel()Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getEnglishNumbers()Lfast/dic/dict/models/database/SentenseModel;

    move-result-object v3

    goto :goto_a

    :cond_c
    move-object v3, v6

    :goto_a
    if-nez v3, :cond_d

    .line 114
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$word:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v0, v6, v2, v6}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getTranslatorResult$default(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 123
    :cond_d
    iget-object v3, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHistoryCategory$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/utils/FDCategory;

    move-result-object v3

    iget-object v4, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$word:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lfast/dic/dict/utils/FDCategory;->findLanguage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 119
    new-instance v7, Lfast/dic/dict/models/database/ListModel;

    .line 120
    iget-object v10, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$wordId:Ljava/lang/Integer;

    .line 121
    iget-object v3, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$word:Ljava/lang/String;

    const v29, 0x1abffb

    const/16 v30, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

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

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v3

    .line 119
    invoke-direct/range {v7 .. v30}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 125
    iget-object v3, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHistory$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    move-result-object v3

    invoke-virtual {v3, v7}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->deleteAndInsert(Lfast/dic/dict/models/database/ListModel;)V

    .line 127
    sget-object v3, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    .line 134
    iget-object v4, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    if-ne v1, v3, :cond_e

    .line 128
    invoke-static {v4}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHtml$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/utils/FDHtml;

    move-result-object v1

    .line 129
    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getEnglishSearchResultModel()Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-result-object v3

    .line 130
    iget-boolean v4, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$isDarkMode:Z

    .line 128
    invoke-virtual {v1, v3, v4, v6}, Lfast/dic/dict/utils/FDHtml;->generate(Lfast/dic/dict/models/database/EnglishSearchResultModel;ZLfast/dic/dict/models/database/TranslateModel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 134
    :cond_e
    invoke-static {v4}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHtml$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/utils/FDHtml;

    move-result-object v1

    .line 135
    invoke-virtual {v2}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v3

    .line 136
    iget-boolean v4, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->$isDarkMode:Z

    .line 134
    invoke-virtual {v1, v3, v4, v6}, Lfast/dic/dict/utils/FDHtml;->generatePersianResult(Lfast/dic/dict/models/database/PersianSearchResultModel;ZLfast/dic/dict/models/database/TranslateModel;)Ljava/lang/String;

    move-result-object v1

    .line 141
    :goto_b
    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getWordResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_state$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .line 142
    new-instance v3, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlResult;

    invoke-direct {v3, v1, v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlResult;-><init>(Ljava/lang/String;Lfast/dic/dict/models/database/SearchResultModel;)V

    .line 141
    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 144
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 91
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
