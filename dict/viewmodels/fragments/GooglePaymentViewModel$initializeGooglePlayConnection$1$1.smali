.class final Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1$1;
.super Ljava/lang/Object;
.source "GooglePaymentViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lfast/dic/dict/domain/billing/BillingEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/domain/billing/BillingEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 51
    instance-of p2, p1, Lfast/dic/dict/domain/billing/BillingEvent$PurchaseCompleted;

    const/4 v0, 0x1

    const-string v1, "purchaseData is null!"

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 52
    check-cast p1, Lfast/dic/dict/domain/billing/BillingEvent$PurchaseCompleted;

    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/BillingEvent$PurchaseCompleted;->getItem()Lfast/dic/dict/domain/billing/PurchasedItem;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/PurchasedItem;->getProductId()Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Google IAP: onProductPurchased called. productId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". product = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/PurchasedItem;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 65
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    if-nez v2, :cond_0

    .line 58
    invoke-static {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$get_googlePlayState$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    new-instance p1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;

    invoke-direct {p1, v1, v0}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 62
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 65
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$get_googlePlayState$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    new-instance v0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Purchased;

    .line 66
    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/PurchasedItem;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-direct {v0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Purchased;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 70
    :cond_1
    instance-of p2, p1, Lfast/dic/dict/domain/billing/BillingEvent$PurchaseConsumed;

    if-eqz p2, :cond_2

    .line 71
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p2

    const-string v0, "Google IAP: onPurchaseConsumed called"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-static {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$get_googlePlayState$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    new-instance p2, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$PurchaseConsumed;

    .line 74
    check-cast p1, Lfast/dic/dict/domain/billing/BillingEvent$PurchaseConsumed;

    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/BillingEvent$PurchaseConsumed;->getProductId()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-direct {p2, p1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$PurchaseConsumed;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 78
    :cond_2
    instance-of p2, p1, Lfast/dic/dict/domain/billing/BillingEvent$BillingInitialized;

    if-eqz p2, :cond_3

    .line 79
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p2

    check-cast p1, Lfast/dic/dict/domain/billing/BillingEvent$BillingInitialized;

    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/BillingEvent$BillingInitialized;->getReady()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Google IAP: onBillingInitialized called "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-static {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$get_googlePlayState$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    .line 82
    new-instance p2, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;

    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/BillingEvent$BillingInitialized;->getReady()Z

    move-result p1

    invoke-direct {p2, p1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;-><init>(Z)V

    .line 81
    invoke-interface {p0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 85
    :cond_3
    instance-of p2, p1, Lfast/dic/dict/domain/billing/BillingEvent$PurchaseRestored;

    if-eqz p2, :cond_6

    .line 86
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p2

    const-string v3, "Google IAP: onPurchaseHistoryRestored called"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v3, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    check-cast p1, Lfast/dic/dict/domain/billing/BillingEvent$PurchaseRestored;

    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/BillingEvent$PurchaseRestored;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfast/dic/dict/domain/billing/PurchasedItem;

    .line 97
    iget-object p2, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    if-nez p1, :cond_4

    .line 90
    invoke-static {p2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$get_googlePlayState$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    new-instance p1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;

    invoke-direct {p1, v1, v0}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 94
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 97
    :cond_4
    invoke-static {p2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$get_googlePlayState$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Purchased;

    .line 98
    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/PurchasedItem;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-static {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$getSelectedProductForGoogle$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, ""

    .line 97
    :cond_5
    invoke-direct {v0, p1, p0}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Purchased;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 102
    :cond_6
    instance-of p2, p1, Lfast/dic/dict/domain/billing/BillingEvent$InitializeError;

    const-string v0, " code."

    const-string v1, "Unknown error with "

    const-string v3, ". Error = "

    if-eqz p2, :cond_8

    .line 103
    check-cast p1, Lfast/dic/dict/domain/billing/BillingEvent$InitializeError;

    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/BillingEvent$InitializeError;->getCode()I

    move-result p2

    .line 104
    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/BillingEvent$InitializeError;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Google IAP: onBillingError code = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-static {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$get_googlePlayState$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    new-instance v2, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;

    if-nez p1, :cond_7

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    :cond_7
    invoke-direct {v2, p1, p2}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_8
    instance-of p2, p1, Lfast/dic/dict/domain/billing/BillingEvent$Error;

    if-eqz p2, :cond_a

    .line 114
    check-cast p1, Lfast/dic/dict/domain/billing/BillingEvent$Error;

    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/BillingEvent$Error;->getCode()I

    move-result p2

    .line 115
    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/BillingEvent$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Google IAP: onError code = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-static {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$get_googlePlayState$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    new-instance v2, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;

    if-nez p1, :cond_9

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    :cond_9
    invoke-direct {v2, p1, p2}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :cond_a
    sget-object p0, Lfast/dic/dict/domain/billing/BillingEvent$Idle;->INSTANCE:Lfast/dic/dict/domain/billing/BillingEvent$Idle;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 126
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 50
    :cond_b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lfast/dic/dict/domain/billing/BillingEvent;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1$1;->emit(Lfast/dic/dict/domain/billing/BillingEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
