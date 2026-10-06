.class public final Lfast/dic/dict/viewmodels/PaymentMethodViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "PaymentMethodViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\u0008\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000b\u001a\u00020\u000cJ\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\n2\n\u0010\u0012\u001a\u00060\u0013R\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lfast/dic/dict/viewmodels/PaymentMethodViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "webService",
        "Lfast/dic/dict/services/WebService;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "<init>",
        "(Lfast/dic/dict/services/WebService;Lfast/dic/dict/database/LocalStorage;)V",
        "Ljavax/inject/Inject;",
        "mPlatform",
        "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;",
        "isCurrentLanguagePersian",
        "",
        "hideAd",
        "",
        "orderId",
        "",
        "platform",
        "validationPurchaseResponseCallback",
        "Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;",
        "Lfast/dic/dict/PaymentMethodFragment;",
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
.field private final localStorage:Lfast/dic/dict/database/LocalStorage;

.field private mPlatform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

.field private final webService:Lfast/dic/dict/services/WebService;


# direct methods
.method public constructor <init>(Lfast/dic/dict/services/WebService;Lfast/dic/dict/database/LocalStorage;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string/jumbo v0, "webService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 17
    iput-object p1, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;->webService:Lfast/dic/dict/services/WebService;

    .line 18
    iput-object p2, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    return-void
.end method

.method public static final synthetic access$getWebService$p(Lfast/dic/dict/viewmodels/PaymentMethodViewModel;)Lfast/dic/dict/services/WebService;
    .locals 0

    .line 15
    iget-object p0, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;->webService:Lfast/dic/dict/services/WebService;

    return-object p0
.end method


# virtual methods
.method public final hideAd(Ljava/lang/String;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;)V
    .locals 8

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "validationPurchaseResponseCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iput-object p2, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;->mPlatform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    .line 34
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;-><init>(Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Lfast/dic/dict/viewmodels/PaymentMethodViewModel;Ljava/lang/String;Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final isCurrentLanguagePersian()Z
    .locals 0

    .line 24
    iget-object p0, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result p0

    return p0
.end method
