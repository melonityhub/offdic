.class public final Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "BazaarPaymentViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0008\u0007\u001a\u0002\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\t\u001a\u00020\nJ\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000c2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013J\u001c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000c2\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\nJ4\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u000e\u001a\u00020\u000fR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008#\u00a8\u0006\""
    }
    d2 = {
        "Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "cafeBazaarPayment",
        "Lir/cafebazaar/poolakey/Payment;",
        "cafeBazaarPaymentConnection",
        "Lir/cafebazaar/poolakey/Connection;",
        "destroyBazaarConnection",
        "",
        "initializeCafeBazaarBillingService",
        "Landroidx/lifecycle/LiveData;",
        "",
        "context",
        "Landroid/content/Context;",
        "getBazaarProducts",
        "Lfast/dic/dict/viewmodels/BazaarPaymentMethodState;",
        "productIds",
        "",
        "",
        "purchasePackageFromCafeBazaar",
        "Lfast/dic/dict/viewmodels/BazaarPurchaseState;",
        "productId",
        "activityResultRegistry",
        "Landroidx/activity/result/ActivityResultRegistry;",
        "disconnectCafeBazaar",
        "consumeCafeBazaarProduct",
        "consumeToken",
        "message",
        "fdPurchased",
        "Lfast/dic/dict/services/parse/FDPurchased;",
        "planType",
        "Lfast/dic/dict/models/PlanType;",
        "app",
        "Ldagger/hilt/android/lifecycle/HiltViewModel;"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cafeBazaarPayment:Lir/cafebazaar/poolakey/Payment;

.field private cafeBazaarPaymentConnection:Lir/cafebazaar/poolakey/Connection;


# direct methods
.method public static synthetic $r8$lambda$KxwcVjC6HdiN_SBd_z7HYAhUfg8(Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->consumeCafeBazaarProduct$lambda$0$1(Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OwNhgOk47k5ZjAA0fO4oeHBxx_o(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->purchasePackageFromCafeBazaar$lambda$0$2(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bx0g4ryvJE8ay2K5YiPEnZLL9Rc()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->purchasePackageFromCafeBazaar$lambda$0$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$dzjJou6Y3rCpjxx6drQsG7l2dO0(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->purchasePackageFromCafeBazaar$lambda$0$1(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ej9-tvgUQo0vmA_6o86QsDUB_fw(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lir/cafebazaar/poolakey/entity/PurchaseInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->purchasePackageFromCafeBazaar$lambda$0$3(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lir/cafebazaar/poolakey/entity/PurchaseInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ga2lDEZuL36u5HPIn1-gS-8sL6Q(Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->purchasePackageFromCafeBazaar$lambda$0$4(Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hlo6xX621plnlQKaeXX_LXXchIo(Lfast/dic/dict/models/PlanType;Lfast/dic/dict/services/parse/FDPurchased;Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->consumeCafeBazaarProduct$lambda$0$0(Lfast/dic/dict/models/PlanType;Lfast/dic/dict/services/parse/FDPurchased;Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCafeBazaarPayment$p(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;)Lir/cafebazaar/poolakey/Payment;
    .locals 0

    .line 25
    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->cafeBazaarPayment:Lir/cafebazaar/poolakey/Payment;

    return-object p0
.end method

.method public static final synthetic access$setCafeBazaarPayment$p(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;Lir/cafebazaar/poolakey/Payment;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->cafeBazaarPayment:Lir/cafebazaar/poolakey/Payment;

    return-void
.end method

.method public static final synthetic access$setCafeBazaarPaymentConnection$p(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;Lir/cafebazaar/poolakey/Connection;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->cafeBazaarPaymentConnection:Lir/cafebazaar/poolakey/Connection;

    return-void
.end method

.method static final consumeCafeBazaarProduct$lambda$0(Lfast/dic/dict/models/PlanType;Lfast/dic/dict/services/parse/FDPurchased;Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;Lir/cafebazaar/poolakey/callback/ConsumeCallback;)Lkotlin/Unit;
    .locals 7

    const-string v0, "$this$consumeProduct"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v1, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda6;-><init>(Lfast/dic/dict/models/PlanType;Lfast/dic/dict/services/parse/FDPurchased;Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p5, v1}, Lir/cafebazaar/poolakey/callback/ConsumeCallback;->consumeSucceed(Lkotlin/jvm/functions/Function0;)V

    .line 159
    new-instance p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda7;

    invoke-direct {p0, v4, v6}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p5, p0}, Lir/cafebazaar/poolakey/callback/ConsumeCallback;->consumeFailed(Lkotlin/jvm/functions/Function1;)V

    .line 164
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final consumeCafeBazaarProduct$lambda$0$0(Lfast/dic/dict/models/PlanType;Lfast/dic/dict/services/parse/FDPurchased;Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;
    .locals 3

    .line 143
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cafe bazaar PurchasedPlan2 successfully done!"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sget-object v0, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    if-ne p0, v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDPurchased;->PurchasedPlan2()V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDPurchased;->PurchasedPlan3()V

    .line 150
    :goto_0
    sget-object p0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 151
    sget p1, Lfast/dic/dict/R$string;->thanks:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget v1, Lfast/dic/dict/R$string;->close:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1, p3, v1, p2}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOutForeCloseApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 156
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 157
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final consumeCafeBazaarProduct$lambda$0$1(Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown error happen for consume product: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    sget-object p2, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p2, p0}, Lfast/dic/dict/utils/FDAlertManger;->showCouldNotPurchaseAlert(Landroid/content/Context;)V

    .line 162
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 163
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final purchasePackageFromCafeBazaar$lambda$0(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lir/cafebazaar/poolakey/callback/PurchaseCallback;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$purchaseProduct"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, v0}, Lir/cafebazaar/poolakey/callback/PurchaseCallback;->purchaseFlowBegan(Lkotlin/jvm/functions/Function0;)V

    .line 99
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p2, v0}, Lir/cafebazaar/poolakey/callback/PurchaseCallback;->failedToBeginFlow(Lkotlin/jvm/functions/Function1;)V

    .line 106
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda2;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p2, v0}, Lir/cafebazaar/poolakey/callback/PurchaseCallback;->purchaseFailed(Lkotlin/jvm/functions/Function1;)V

    .line 114
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda3;-><init>(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lir/cafebazaar/poolakey/callback/PurchaseCallback;->purchaseSucceed(Lkotlin/jvm/functions/Function1;)V

    .line 122
    new-instance p1, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda4;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p2, p1}, Lir/cafebazaar/poolakey/callback/PurchaseCallback;->purchaseCanceled(Lkotlin/jvm/functions/Function0;)V

    .line 129
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final purchasePackageFromCafeBazaar$lambda$0$0()Lkotlin/Unit;
    .locals 3

    .line 97
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Bazaar\'s billing screen has opened successfully"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final purchasePackageFromCafeBazaar$lambda$0$1(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 4

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to open Bazaar\'s billing screen "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {v0, v1}, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Error;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 105
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final purchasePackageFromCafeBazaar$lambda$0$2(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 3

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPurchasedProducts: purchaseFailed called "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to purchase Bazaar\'s billing screen "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-direct {v0, v1}, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Error;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 112
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final purchasePackageFromCafeBazaar$lambda$0$3(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lir/cafebazaar/poolakey/entity/PurchaseInfo;)Lkotlin/Unit;
    .locals 3

    const-string v0, "purchaseInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bazaar\'s billing purchaseSucceed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Purchased;

    invoke-virtual {p2}, Lir/cafebazaar/poolakey/entity/PurchaseInfo;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Purchased;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 120
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final purchasePackageFromCafeBazaar$lambda$0$4(Landroidx/lifecycle/MutableLiveData;)Lkotlin/Unit;
    .locals 3

    .line 123
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Bazaar\'s billing purchaseCanceled"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Error;

    const-string v1, "Bazaar\'s billing has been canceled"

    invoke-direct {v0, v1}, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Error;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 128
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final consumeCafeBazaarProduct(Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/models/PlanType;Landroid/content/Context;)Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lfast/dic/dict/services/parse/FDPurchased;",
            "Lfast/dic/dict/models/PlanType;",
            "Landroid/content/Context;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "consumeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fdPurchased"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v6}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 139
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cafe bazaar consumeCafeBazaarProduct called!"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->cafeBazaarPayment:Lir/cafebazaar/poolakey/Payment;

    if-eqz p0, :cond_0

    new-instance v1, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;

    move-object v5, p2

    move-object v3, p3

    move-object v2, p4

    move-object v4, p5

    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;-><init>(Lfast/dic/dict/models/PlanType;Lfast/dic/dict/services/parse/FDPurchased;Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p0, p1, v1}, Lir/cafebazaar/poolakey/Payment;->consumeProduct(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 166
    :cond_0
    check-cast v6, Landroidx/lifecycle/LiveData;

    return-object v6
.end method

.method public final destroyBazaarConnection()V
    .locals 0

    .line 32
    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->cafeBazaarPaymentConnection:Lir/cafebazaar/poolakey/Connection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lir/cafebazaar/poolakey/Connection;->disconnect()V

    :cond_0
    return-void
.end method

.method public final disconnectCafeBazaar()V
    .locals 0

    .line 134
    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->cafeBazaarPaymentConnection:Lir/cafebazaar/poolakey/Connection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lir/cafebazaar/poolakey/Connection;->disconnect()V

    :cond_0
    return-void
.end method

.method public final getBazaarProducts(Ljava/util/List;)Landroidx/lifecycle/LiveData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/viewmodels/BazaarPaymentMethodState;",
            ">;"
        }
    .end annotation

    const-string v0, "productIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 69
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v0, v3}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;-><init>(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;Ljava/util/List;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 85
    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final initializeCafeBazaarBillingService(Landroid/content/Context;)Landroidx/lifecycle/LiveData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 38
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v0, v3}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;-><init>(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;Landroid/content/Context;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 63
    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final purchasePackageFromCafeBazaar(Ljava/lang/String;Landroidx/activity/result/ActivityResultRegistry;)Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/activity/result/ActivityResultRegistry;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/viewmodels/BazaarPurchaseState;",
            ">;"
        }
    .end annotation

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityResultRegistry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 91
    new-instance v1, Lir/cafebazaar/poolakey/request/PurchaseRequest;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lir/cafebazaar/poolakey/request/PurchaseRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->cafeBazaarPayment:Lir/cafebazaar/poolakey/Payment;

    if-eqz p0, :cond_0

    new-instance p1, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0, v2}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda5;-><init>(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v1, p1}, Lir/cafebazaar/poolakey/Payment;->purchaseProduct(Landroidx/activity/result/ActivityResultRegistry;Lir/cafebazaar/poolakey/request/PurchaseRequest;Lkotlin/jvm/functions/Function1;)V

    .line 130
    :cond_0
    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method
