.class final Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PricingViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->getPricingList(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;)Landroidx/lifecycle/MutableLiveData;
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
    c = "fast.dic.dict.presentation.pricing_screen.PricingViewModel$getPricingList$1"
    f = "PricingViewModel.kt"
    i = {}
    l = {
        0x25
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        0x26
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $language:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

.field final synthetic $liveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
            "Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->$language:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    iput-object p2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->this$0:Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    iput-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

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

    new-instance p1, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->$language:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->this$0:Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v0, v1, p0, p2}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;-><init>(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "[Pricing] getPricingListV2 done, code="

    const-string v1, "[Pricing] getPricingListV2 start, language="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 34
    iget v3, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->label:I

    const-string v4, "Unknown Error"

    const-string v5, "FD-HTTP"

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v6, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    :try_start_1
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->$language:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->this$0:Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->access$getWebService$p(Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;)Lfast/dic/dict/services/WebService;

    move-result-object p1

    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->$language:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v6, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->label:I

    invoke-virtual {p1, v1, v3}, Lfast/dic/dict/services/WebService;->getPricingListV2(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    return-object v2

    .line 34
    :cond_2
    :goto_0
    check-cast p1, Lretrofit2/Response;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 38
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 40
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-ne v0, v6, :cond_4

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 41
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$PricingPlan;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lfast/dic/dict/domain/entity/pricing/PricingResponse;

    invoke-direct {v1, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$PricingPlan;-><init>(Lfast/dic/dict/domain/entity/pricing/PricingResponse;)V

    .line 41
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_6

    .line 45
    :cond_4
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v2, Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$Error;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_7

    move-object v3, v4

    goto :goto_2

    :cond_7
    move-object v3, v1

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    goto :goto_3

    :cond_9
    const/16 p1, -0x64

    :goto_3
    invoke-direct {v2, v3, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$Error;-><init>(Ljava/lang/String;I)V

    .line 45
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 50
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$Error;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    move-object v4, p1

    :goto_5
    const/16 p1, 0x1f9

    invoke-direct {v0, v4, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$Error;-><init>(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 55
    :goto_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
