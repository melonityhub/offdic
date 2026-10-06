.class final Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->getWordOfDayData()V
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
    c = "fast.dic.dict.viewmodels.fragments.HomeViewModel$getWordOfDayData$1"
    f = "HomeViewModel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x2c
    }
    m = "invokeSuspend"
    n = {
        "localWodModel",
        "canGetRequest"
    }
    nl = {
        0x2d
    }
    s = {
        "L$0",
        "I$0"
    }
    v = 0x2
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/viewmodels/fragments/HomeViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/viewmodels/fragments/HomeViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->this$0:Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

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

    new-instance p1, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->this$0:Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

    invoke-direct {p1, p0, p2}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;-><init>(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 28
    iget v1, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lfast/dic/dict/models/api/WodApiModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->this$0:Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

    invoke-static {p1}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->access$getLocalStorage$p(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/database/LocalStorage;->getWod()Lfast/dic/dict/models/api/WodApiModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v4, "yyyy-MM-dd"

    const/4 v5, 0x2

    invoke-static {v1, v4, v2, v5, v2}, Lfast/dic/dict/utils/DateExtKt;->toString$default(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fastdic/android/modules/fdnumberstowords/utils/FDStringExtKt;->toEnglishNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lfast/dic/dict/models/api/WodApiModel;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    .line 44
    :goto_0
    iget-object v4, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->this$0:Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

    if-nez v1, :cond_3

    .line 39
    invoke-static {v4}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->access$getViewModelState$p(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance v0, Lfast/dic/dict/viewmodels/fragments/HomeViewModelState$Data;

    invoke-direct {v0, p1}, Lfast/dic/dict/viewmodels/fragments/HomeViewModelState$Data;-><init>(Lfast/dic/dict/models/api/WodApiModel;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 40
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 44
    :cond_3
    :try_start_1
    invoke-static {v4}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->access$getWebService$p(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;)Lfast/dic/dict/services/WebService;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->L$0:Ljava/lang/Object;

    iput v1, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->I$0:I

    iput v3, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->label:I

    invoke-virtual {v4, v5}, Lfast/dic/dict/services/WebService;->getWod(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 28
    :cond_4
    :goto_1
    check-cast p1, Lretrofit2/Response;

    if-eqz p1, :cond_5

    .line 45
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/models/api/WodApiModel;

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    if-eqz p1, :cond_7

    .line 47
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v0, :cond_6

    goto :goto_3

    .line 52
    :cond_6
    iget-object p1, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->this$0:Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

    invoke-static {p1}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->access$getLocalStorage$p(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p1

    invoke-virtual {p1, v0}, Lfast/dic/dict/database/LocalStorage;->storeWod(Lfast/dic/dict/models/api/WodApiModel;)V

    .line 53
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->this$0:Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

    invoke-static {p0}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->access$getViewModelState$p(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Lfast/dic/dict/viewmodels/fragments/HomeViewModelState$Data;

    invoke-direct {p1, v0}, Lfast/dic/dict/viewmodels/fragments/HomeViewModelState$Data;-><init>(Lfast/dic/dict/models/api/WodApiModel;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 48
    :cond_7
    :goto_3
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;->this$0:Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

    invoke-static {p0}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->access$getViewModelState$p(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Lfast/dic/dict/viewmodels/fragments/HomeViewModelState$Data;

    invoke-direct {p1, v2}, Lfast/dic/dict/viewmodels/fragments/HomeViewModelState$Data;-><init>(Lfast/dic/dict/models/api/WodApiModel;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 49
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
