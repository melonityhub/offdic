.class final Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WordResultViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->getNumberResult(Ljava/lang/String;)V
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
    c = "fast.dic.dict.presentation.word_result_screen.WordResultViewModel$getNumberResult$1"
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

.field final synthetic $number:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$number:Ljava/lang/String;

    iput-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iput-boolean p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$isDarkMode:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$number:Ljava/lang/String;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$isDarkMode:Z

    invoke-direct {p1, v0, v1, p0, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;-><init>(Ljava/lang/String;Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 173
    iget v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->label:I

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 174
    sget-object v1, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;

    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fastdic/android/modules/fdnumberstowords/FDEnNumberToWords;->convertNumber(Ljava/lang/String;)Lcom/fastdic/android/modules/fdnumberstowords/ConvertNumberResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fastdic/android/modules/fdnumberstowords/ConvertNumberResult;->getWords()Ljava/lang/String;

    move-result-object v4

    .line 175
    sget-object v1, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->INSTANCE:Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;

    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fastdic/android/modules/fdnumberstowords/FDPeNumberToWords;->convertNumber(Ljava/lang/String;)Lcom/fastdic/android/modules/fdnumberstowords/ConvertNumberResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fastdic/android/modules/fdnumberstowords/ConvertNumberResult;->getWords()Ljava/lang/String;

    move-result-object v5

    .line 177
    new-instance v1, Lfast/dic/dict/models/database/SentenseModel;

    invoke-direct {v1}, Lfast/dic/dict/models/database/SentenseModel;-><init>()V

    .line 178
    invoke-virtual {v1, v5}, Lfast/dic/dict/models/database/SentenseModel;->setPersian(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, v4}, Lfast/dic/dict/models/database/SentenseModel;->setEnglish(Ljava/lang/String;)V

    .line 187
    new-instance v2, Lfast/dic/dict/models/database/EnglishAudioModel;

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-direct {v2, v4, v3, v6, v3}, Lfast/dic/dict/models/database/EnglishAudioModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 188
    new-instance v7, Lfast/dic/dict/models/database/EnglishAudioModel;

    invoke-direct {v7, v4, v3, v6, v3}, Lfast/dic/dict/models/database/EnglishAudioModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 186
    new-instance v7, Lfast/dic/dict/models/database/EnglishAudiosModel;

    invoke-direct {v7, v6, v2}, Lfast/dic/dict/models/database/EnglishAudiosModel;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v2, 0x1

    .line 191
    new-array v2, v2, [Lfast/dic/dict/models/database/EnglishMeaningModel;

    new-instance v8, Lfast/dic/dict/models/database/EnglishMeaningModel;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const/16 v20, 0x5ff

    const/16 v21, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v8 .. v21}, Lfast/dic/dict/models/database/EnglishMeaningModel;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x0

    aput-object v8, v2, v6

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 181
    new-instance v6, Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-object/from16 v18, v7

    .line 185
    iget-object v7, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$number:Ljava/lang/String;

    const/4 v8, -0x1

    .line 182
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    .line 191
    move-object/from16 v20, v2

    check-cast v20, Ljava/util/List;

    const v26, 0x4c7fc

    const/16 v27, 0x0

    const/16 v19, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v25, 0x0

    move-object/from16 v24, v1

    .line 181
    invoke-direct/range {v6 .. v27}, Lfast/dic/dict/models/database/EnglishSearchResultModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/EnglishAudiosModel;ZLjava/util/List;Ljava/util/List;Lfast/dic/dict/models/database/EnglishIdiomsModel;ZLfast/dic/dict/models/database/SentenseModel;Lfast/dic/dict/models/database/EnglishWordFamily;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 194
    new-instance v8, Lfast/dic/dict/models/database/SearchResultModel;

    const/16 v13, 0xb

    move-object v11, v6

    invoke-direct/range {v8 .. v14}, Lfast/dic/dict/models/database/SearchResultModel;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lfast/dic/dict/models/database/EnglishSearchResultModel;Lfast/dic/dict/models/database/PersianSearchResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v8

    .line 201
    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHistoryCategory$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/utils/FDCategory;

    move-result-object v2

    iget-object v6, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$number:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lfast/dic/dict/utils/FDCategory;->findLanguage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v20, v5

    .line 196
    new-instance v5, Lfast/dic/dict/models/database/ListModel;

    .line 198
    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$number:Ljava/lang/String;

    const v27, 0x18bbff

    const/16 v28, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v2

    move-object/from16 v23, v2

    .line 196
    invoke-direct/range {v5 .. v28}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 203
    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHistory$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    move-result-object v2

    invoke-virtual {v2, v5}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->deleteAndInsert(Lfast/dic/dict/models/database/ListModel;)V

    .line 205
    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHtml$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/utils/FDHtml;

    move-result-object v2

    .line 206
    invoke-virtual {v1}, Lfast/dic/dict/models/database/SearchResultModel;->getEnglishSearchResultModel()Lfast/dic/dict/models/database/EnglishSearchResultModel;

    move-result-object v1

    .line 207
    iget-boolean v5, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$isDarkMode:Z

    .line 205
    invoke-virtual {v2, v1, v5, v3}, Lfast/dic/dict/utils/FDHtml;->generate(Lfast/dic/dict/models/database/EnglishSearchResultModel;ZLfast/dic/dict/models/database/TranslateModel;)Ljava/lang/String;

    move-result-object v3

    .line 211
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_state$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .line 212
    new-instance v2, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlNumberResult;

    .line 216
    iget-object v6, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$number:Ljava/lang/String;

    .line 217
    iget-boolean v7, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$getNumberResult$1;->$isDarkMode:Z

    move-object/from16 v5, v20

    .line 212
    invoke-direct/range {v2 .. v7}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$HtmlNumberResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 220
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
