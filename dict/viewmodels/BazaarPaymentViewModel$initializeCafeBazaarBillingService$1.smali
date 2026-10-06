.class final Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BazaarPaymentViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->initializeCafeBazaarBillingService(Landroid/content/Context;)Landroidx/lifecycle/LiveData;
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
    c = "fast.dic.dict.viewmodels.BazaarPaymentViewModel$initializeCafeBazaarBillingService$1"
    f = "BazaarPaymentViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $liveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;


# direct methods
.method public static synthetic $r8$lambda$B1nJ6Yb-vObvm94mnnJndppBOVo(Landroidx/lifecycle/MutableLiveData;Landroid/content/Context;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->invokeSuspend$lambda$0$1(Landroidx/lifecycle/MutableLiveData;Landroid/content/Context;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C9pxT1R-jQvpm2OovQAPffe2gHE(Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->invokeSuspend$lambda$0$2(Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gco8Nylh-lJMn2A_G2dX5e04MIU(Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->invokeSuspend$lambda$0$0(Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;",
            "Landroid/content/Context;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->this$0:Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    iput-object p2, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Landroidx/lifecycle/MutableLiveData;Landroid/content/Context;Lir/cafebazaar/poolakey/callback/ConnectionCallback;)Lkotlin/Unit;
    .locals 1

    .line 44
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p2, v0}, Lir/cafebazaar/poolakey/callback/ConnectionCallback;->connectionSucceed(Lkotlin/jvm/functions/Function0;)V

    .line 48
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda2;-><init>(Landroidx/lifecycle/MutableLiveData;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lir/cafebazaar/poolakey/callback/ConnectionCallback;->connectionFailed(Lkotlin/jvm/functions/Function1;)V

    .line 56
    new-instance p1, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda3;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p2, p1}, Lir/cafebazaar/poolakey/callback/ConnectionCallback;->disconnected(Lkotlin/jvm/functions/Function0;)V

    .line 60
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$0(Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;
    .locals 2

    const/4 v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CafeBazaar connectionSucceed called"

    invoke-virtual {p0, v1, v0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$1(Landroidx/lifecycle/MutableLiveData;Landroid/content/Context;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 4

    .line 49
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CafeBazaar connectionFailed called "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/CharSequence;

    const-string p2, "Bazaar is not installed"

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p2, v2, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    .line 53
    sget-object p0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0, p1}, Lfast/dic/dict/utils/FDAlertManger;->showCafeBazaarNotInstalledErrorAlert(Landroid/content/Context;)V

    .line 55
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$2(Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;
    .locals 2

    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 58
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const-string v1, "disconnected connectionFailed called"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance p1, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;

    iget-object v0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->this$0:Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    iget-object v1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v0, v1, p0, p2}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;-><init>(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 38
    iget v0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    new-instance p1, Lir/cafebazaar/poolakey/config/SecurityCheck$Enable;

    const-string v0, "MIHNMA0GCSqGSIb3DQEBAQUAA4G7ADCBtwKBrwCm+BfmJw4SNGgDkmrTXhBu0Eo3WpZ1dtLvyVDRfoVVT6i1m18mL8gJoTsAKaRCBbrRSZehbpjXcsaOrHScmrlO/7rY7NcFm3Vn0qqNHxVi8SPdxF3V6x/15WA5/UzqPL2pEg1GD/FfyFNXMo7F8jEbd6s/OwEIwxYIZB/vILffxqc4bSRdep6wW3/nbNMSmIO4S5QsuYrRpEeNxDYW9H26nIOxQUgo1tdjG1hoLxsCAwEAAQ=="

    invoke-direct {p1, v0}, Lir/cafebazaar/poolakey/config/SecurityCheck$Enable;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lir/cafebazaar/poolakey/config/PaymentConfiguration;

    check-cast p1, Lir/cafebazaar/poolakey/config/SecurityCheck;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lir/cafebazaar/poolakey/config/PaymentConfiguration;-><init>(Lir/cafebazaar/poolakey/config/SecurityCheck;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    iget-object p1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->this$0:Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    new-instance v1, Lir/cafebazaar/poolakey/Payment;

    iget-object v2, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->$context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lir/cafebazaar/poolakey/Payment;-><init>(Landroid/content/Context;Lir/cafebazaar/poolakey/config/PaymentConfiguration;)V

    invoke-static {p1, v1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->access$setCafeBazaarPayment$p(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;Lir/cafebazaar/poolakey/Payment;)V

    .line 43
    iget-object p1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->this$0:Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    invoke-static {p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->access$getCafeBazaarPayment$p(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;)Lir/cafebazaar/poolakey/Payment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->$context:Landroid/content/Context;

    new-instance v2, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/MutableLiveData;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lir/cafebazaar/poolakey/Payment;->connect(Lkotlin/jvm/functions/Function1;)Lir/cafebazaar/poolakey/Connection;

    move-result-object v3

    :cond_0
    invoke-static {p1, v3}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->access$setCafeBazaarPaymentConnection$p(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;Lir/cafebazaar/poolakey/Connection;)V

    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
