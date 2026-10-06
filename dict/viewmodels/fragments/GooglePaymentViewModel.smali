.class public final Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "GooglePaymentViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0011J9\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00082)\u0010\u0017\u001a%\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00110\u0018JI\u0010\u0015\u001a\u00020\u00112\u0016\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u001fj\u0008\u0012\u0004\u0012\u00020\u0008` 2)\u0010\u0017\u001a%\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u00110\u0018J\u0016\u0010!\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020#J$\u0010$\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00082\u0014\u0010%\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020\u00110\u0018J\u000e\u0010\'\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00ca\u0001\u0002\u0008)\u00a8\u0006("
    }
    d2 = {
        "Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "billingRepository",
        "Lfast/dic/dict/data/billing/PlayBillingRepository;",
        "<init>",
        "(Lfast/dic/dict/data/billing/PlayBillingRepository;)V",
        "Ljavax/inject/Inject;",
        "selectedProductForGoogle",
        "",
        "_googlePlayState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;",
        "googlePlayState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getGooglePlayState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "destroyGoogleConnection",
        "",
        "isIabServiceAvailable",
        "",
        "initializeGooglePlayConnection",
        "getGoogleProducts",
        "productId",
        "onCompletion",
        "Lkotlin/Function1;",
        "",
        "Lfast/dic/dict/domain/billing/PurchaseListingDetails;",
        "Lkotlin/ParameterName;",
        "name",
        "products",
        "productIds",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "purchaseFromGooglePlay",
        "context",
        "Landroid/app/Activity;",
        "restorePurchaseFromGooglePlay",
        "onSuccess",
        "Lfast/dic/dict/domain/billing/PurchasedItem;",
        "consumeGooglePlayProduct",
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
.field private _googlePlayState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;",
            ">;"
        }
    .end annotation
.end field

.field private final billingRepository:Lfast/dic/dict/data/billing/PlayBillingRepository;

.field private final googlePlayState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;",
            ">;"
        }
    .end annotation
.end field

.field private selectedProductForGoogle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfast/dic/dict/data/billing/PlayBillingRepository;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "billingRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 19
    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->billingRepository:Lfast/dic/dict/data/billing/PlayBillingRepository;

    .line 25
    sget-object p1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initializing;->INSTANCE:Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initializing;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->_googlePlayState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 26
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->googlePlayState:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$getBillingRepository$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lfast/dic/dict/data/billing/PlayBillingRepository;
    .locals 0

    .line 17
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->billingRepository:Lfast/dic/dict/data/billing/PlayBillingRepository;

    return-object p0
.end method

.method public static final synthetic access$getSelectedProductForGoogle$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->selectedProductForGoogle:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$get_googlePlayState$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 17
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->_googlePlayState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method


# virtual methods
.method public final consumeGooglePlayProduct(Ljava/lang/String;)V
    .locals 7

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;-><init>(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final destroyGoogleConnection()V
    .locals 7

    .line 29
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$destroyGoogleConnection$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$destroyGoogleConnection$1;-><init>(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getGooglePlayState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->googlePlayState:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getGoogleProducts(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/domain/billing/PurchaseListingDetails;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompletion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 134
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->getGoogleProducts(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getGoogleProducts(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/domain/billing/PurchaseListingDetails;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "productIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCompletion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$getGoogleProducts$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$getGoogleProducts$1;-><init>(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final initializeGooglePlayConnection()V
    .locals 7

    .line 37
    invoke-virtual {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->isIabServiceAvailable()Z

    move-result v0

    .line 45
    iget-object v1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->_googlePlayState:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-nez v0, :cond_0

    .line 38
    new-instance p0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;

    .line 39
    const-string v0, "Google Play has not found"

    const/16 v2, 0x194

    .line 38
    invoke-direct {p0, v0, v2}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 45
    :cond_0
    sget-object v0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initializing;->INSTANCE:Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initializing;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 47
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$initializeGooglePlayConnection$1;-><init>(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final isIabServiceAvailable()Z
    .locals 0

    .line 34
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->billingRepository:Lfast/dic/dict/data/billing/PlayBillingRepository;

    invoke-virtual {p0}, Lfast/dic/dict/data/billing/PlayBillingRepository;->isIabServiceAvailable()Z

    move-result p0

    return p0
.end method

.method public final purchaseFromGooglePlay(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 7

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->selectedProductForGoogle:Ljava/lang/String;

    .line 155
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$purchaseFromGooglePlay$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, p1, v2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$purchaseFromGooglePlay$1;-><init>(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p0, 0x1

    return p0
.end method

.method public final restorePurchaseFromGooglePlay(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/domain/billing/PurchasedItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSuccess"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;-><init>(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
