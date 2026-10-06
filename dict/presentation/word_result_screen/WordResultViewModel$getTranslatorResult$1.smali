.class final Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WordResultViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getTranslatorResult(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getTranslatorResult$1"
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

.field final synthetic $meaning:Ljava/lang/String;

.field final synthetic $sentence:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;


# direct methods
.method public static synthetic $r8$lambda$DnhJc20Uyuc5LH3CCoZjbcoYXtw(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;ZLfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->invokeSuspend$lambda$0$1(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;ZLfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pJzLdg_8-VWf92aa_3QA0Yu0b8I(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;ZLcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->invokeSuspend$lambda$0$0(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;ZLcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$sentence:Ljava/lang/String;

    iput-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iput-object p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$meaning:Ljava/lang/String;

    iput-boolean p4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$isDarkMode:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Lfast/dic/dict/models/database/ListModel;Lfast/dic/dict/models/database/TranslateModel;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;ZLfast/dic/dict/models/database/TranslateModel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    if-eqz p6, :cond_6

    .line 296
    invoke-virtual {p6}, Lfast/dic/dict/models/database/TranslateModel;->getSuccessful()Z

    move-result p7

    if-nez p7, :cond_0

    goto/16 :goto_2

    .line 306
    :cond_0
    invoke-virtual {p6}, Lfast/dic/dict/models/database/TranslateModel;->getResult()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1, p6}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Lfast/dic/dict/models/database/TranslateModel;->setSentence(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p6}, Lfast/dic/dict/models/database/TranslateModel;->setResult(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p3}, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->name()Ljava/lang/String;

    move-result-object p6

    sget-object p7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p6, p7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p6

    const-string/jumbo p7, "toLowerCase(...)"

    invoke-static {p6, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p6}, Lfast/dic/dict/models/database/TranslateModel;->setLanguage(Ljava/lang/String;)V

    .line 312
    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHistory$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    move-result-object p6

    invoke-virtual {p6, p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->deleteAndInsert(Lfast/dic/dict/models/database/ListModel;)V

    .line 313
    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getMContext$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p4, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$trackTranslateWithAnalytics(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Landroid/content/Context;)V

    .line 315
    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getDatabaseHelper$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/database/FDDatabaseManager;

    move-result-object p1

    invoke-virtual {p2}, Lfast/dic/dict/models/database/TranslateModel;->getSentence()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, p6}, Lfast/dic/dict/database/FDDatabaseManager;->getWordIdParent(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const/4 p6, 0x0

    if-eqz p1, :cond_1

    .line 318
    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getDatabaseHelper$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/database/FDDatabaseManager;

    move-result-object p7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p7, p3, p1}, Lfast/dic/dict/database/FDDatabaseManager;->getDetailByWordId(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Lfast/dic/dict/models/database/SearchResultModel;

    move-result-object p1

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p2}, Lfast/dic/dict/models/database/TranslateModel;->getSentence()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 320
    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getDatabaseHelper$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/database/FDDatabaseManager;

    move-result-object p1

    invoke-virtual {p2}, Lfast/dic/dict/models/database/TranslateModel;->getSentence()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p3, p7}, Lfast/dic/dict/database/FDDatabaseManager;->getDetailByWordGetOtherFormOfWord(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;)Lfast/dic/dict/models/database/SearchResultModel;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, p6

    .line 325
    :goto_0
    sget-object p7, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p3, p7, :cond_4

    .line 326
    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHtml$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/utils/FDHtml;

    move-result-object p3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lfast/dic/dict/models/database/SearchResultModel;->getEnglishSearchResultModel()Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-result-object p6

    :cond_3
    invoke-virtual {p3, p6, p5, p2}, Lfast/dic/dict/utils/FDHtml;->generate(Lfast/dic/dict/models/database/EnglishSearchResultModel;ZLfast/dic/dict/models/database/TranslateModel;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 328
    :cond_4
    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHtml$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/utils/FDHtml;

    move-result-object p3

    if-eqz p1, :cond_5

    .line 329
    invoke-virtual {p1}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object p6

    .line 328
    :cond_5
    invoke-virtual {p3, p6, p5, p2}, Lfast/dic/dict/utils/FDHtml;->generatePersianResult(Lfast/dic/dict/models/database/PersianSearchResultModel;ZLfast/dic/dict/models/database/TranslateModel;)Ljava/lang/String;

    move-result-object p1

    .line 335
    :goto_1
    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getFdParseWrapper$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/services/parse/FDParseWrapper;

    move-result-object v0

    new-instance p3, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda1;

    move-object p6, p2

    move-object p2, p3

    move p7, p5

    move-object p3, p0

    move-object p5, p4

    move-object p4, p1

    invoke-direct/range {p2 .. p7}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;Z)V

    move-object p0, p2

    new-instance p2, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;

    invoke-direct/range {p2 .. p7}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;Z)V

    const/4 p6, 0x2

    const/4 p7, 0x0

    const/4 p4, 0x0

    move-object p3, p0

    move-object p5, p2

    move-object p2, v0

    invoke-static/range {p2 .. p7}, Lfast/dic/dict/services/parse/FDParseWrapper;->fetchParseUser$default(Lfast/dic/dict/services/parse/FDParseWrapper;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 352
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    :goto_2
    move-object p3, p0

    .line 297
    invoke-static {p3}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_state$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    .line 298
    new-instance p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorResult;

    if-eqz p6, :cond_7

    .line 299
    invoke-virtual {p6}, Lfast/dic/dict/models/database/TranslateModel;->getResult()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    :cond_7
    const-string p2, "Something has occurred. The result is empty!"

    .line 298
    :cond_8
    invoke-direct {p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorResult;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 303
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$0(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;ZLcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;
    .locals 8

    .line 337
    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_state$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    .line 338
    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    .line 339
    invoke-virtual {p3}, Lfast/dic/dict/models/database/TranslateModel;->getResult()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    .line 338
    invoke-direct/range {v0 .. v7}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 337
    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 342
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$1(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;ZLfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;
    .locals 8

    .line 344
    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_state$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    .line 345
    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    .line 346
    invoke-virtual {p3}, Lfast/dic/dict/models/database/TranslateModel;->getResult()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    .line 345
    invoke-direct/range {v0 .. v7}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 344
    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 349
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$sentence:Ljava/lang/String;

    iget-object v2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iget-object v3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$meaning:Ljava/lang/String;

    iget-boolean v4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$isDarkMode:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;-><init>(Ljava/lang/String;Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 235
    iget v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->label:I

    if-nez v1, :cond_8

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 236
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$sentence:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->find(Ljava/lang/String;)Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    move-result-object v7

    .line 237
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHistoryCategory$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/utils/FDCategory;

    move-result-object v1

    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$sentence:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lfast/dic/dict/utils/FDCategory;->findLanguage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 239
    new-instance v8, Lfast/dic/dict/models/database/ListModel;

    const/4 v1, -0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$sentence:Ljava/lang/String;

    const v30, 0x1aff7b

    const/16 v31, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v27, v2

    move-object/from16 v25, v4

    invoke-direct/range {v8 .. v31}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 240
    new-instance v6, Lfast/dic/dict/models/database/TranslateModel;

    const/16 v14, 0xf

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v15}, Lfast/dic/dict/models/database/TranslateModel;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 242
    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$meaning:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    iget-object v3, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iget-object v5, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$sentence:Ljava/lang/String;

    move-object v4, v6

    iget-object v6, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$meaning:Ljava/lang/String;

    iget-boolean v8, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$isDarkMode:Z

    invoke-static/range {v3 .. v8}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$prepareHtmlForTranslatorHistory(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Lfast/dic/dict/models/database/TranslateModel;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Z)Ljava/lang/String;

    move-result-object v10

    .line 246
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_state$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .line 247
    new-instance v9, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    .line 248
    iget-object v11, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$sentence:Ljava/lang/String;

    iget-object v12, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$meaning:Ljava/lang/String;

    iget-boolean v13, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$isDarkMode:Z

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/4 v14, 0x0

    .line 247
    invoke-direct/range {v9 .. v16}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 246
    invoke-interface {v1, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 251
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 254
    :cond_1
    :goto_0
    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getConnectivityHelper$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/helpers/FDConnectivityHelper;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/helpers/FDConnectivityHelper;->isInternetAvailable()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getLocalStorage$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/database/LocalStorage;->offlineTranslatorIsEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 255
    invoke-virtual {v6, v1}, Lfast/dic/dict/models/database/TranslateModel;->setSuccessful(Z)V

    .line 256
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$sentence:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lfast/dic/dict/models/database/TranslateModel;->setSentence(Ljava/lang/String;)V

    .line 257
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getMContext$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lfast/dic/dict/R$string;->no_internet_error_for_translator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lfast/dic/dict/models/database/TranslateModel;->setResult(Ljava/lang/String;)V

    .line 259
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getLocalStorage$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "english"

    goto :goto_1

    :cond_2
    const-string v1, "persian"

    .line 258
    :goto_1
    invoke-virtual {v6, v1}, Lfast/dic/dict/models/database/TranslateModel;->setLanguage(Ljava/lang/String;)V

    .line 261
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHtml$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/utils/FDHtml;

    move-result-object v1

    iget-boolean v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$isDarkMode:Z

    invoke-virtual {v1, v3, v2, v6}, Lfast/dic/dict/utils/FDHtml;->generate(Lfast/dic/dict/models/database/EnglishSearchResultModel;ZLfast/dic/dict/models/database/TranslateModel;)Ljava/lang/String;

    move-result-object v8

    .line 263
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_state$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .line 264
    new-instance v7, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;

    .line 266
    iget-object v9, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$sentence:Ljava/lang/String;

    .line 267
    iget-object v10, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$meaning:Ljava/lang/String;

    .line 268
    iget-boolean v11, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$isDarkMode:Z

    const/4 v12, 0x1

    .line 264
    invoke-direct/range {v7 .. v12}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$TranslatorHtmlResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 263
    invoke-interface {v1, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 272
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 275
    :cond_3
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    instance-of v2, v1, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v2, :cond_4

    move-object v3, v1

    check-cast v3, Lfast/dic/dict/services/parse/FDParseUser;

    :cond_4
    move-object v1, v3

    if-eqz v1, :cond_7

    .line 277
    invoke-virtual {v1}, Lfast/dic/dict/services/parse/FDParseUser;->isAuthenticated()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    .line 282
    :cond_5
    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getLocalStorage$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/database/LocalStorage;->offlineTranslatorIsEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 283
    iget-object v3, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    .line 285
    iget-object v5, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$sentence:Ljava/lang/String;

    .line 289
    iget-boolean v9, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$isDarkMode:Z

    .line 290
    invoke-static {v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getMContext$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Landroid/content/Context;

    move-result-object v10

    .line 283
    invoke-static/range {v3 .. v10}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$handleOfflineTranslator(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/Integer;Ljava/lang/String;Lfast/dic/dict/models/database/TranslateModel;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lfast/dic/dict/models/database/ListModel;ZLandroid/content/Context;)V

    .line 292
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 295
    :cond_6
    sget-object v2, Lfast/dic/dict/helpers/FDOnlineTranslator;->INSTANCE:Lfast/dic/dict/helpers/FDOnlineTranslator;

    move-object v5, v8

    iget-object v8, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$sentence:Ljava/lang/String;

    iget-object v4, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iget-boolean v9, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->$isDarkMode:Z

    new-instance v3, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;

    invoke-direct/range {v3 .. v9}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Lfast/dic/dict/models/database/ListModel;Lfast/dic/dict/models/database/TranslateModel;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;Z)V

    invoke-virtual {v2, v8, v1, v3}, Lfast/dic/dict/helpers/FDOnlineTranslator;->translate(Ljava/lang/String;Lfast/dic/dict/services/parse/FDParseUser;Lkotlin/jvm/functions/Function2;)V

    .line 353
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 278
    :cond_7
    :goto_2
    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getTranslatorResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_state$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorUnauthorized;->INSTANCE:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorUnauthorized;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 279
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 235
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
