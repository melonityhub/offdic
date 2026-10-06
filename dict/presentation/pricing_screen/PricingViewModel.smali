.class public final Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "PricingViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0002\u0008\n\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000f2\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00ca\u0001\u0002\u0008\u001b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "webService",
        "Lfast/dic/dict/services/WebService;",
        "firebaseUserPropertiesManager",
        "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "<init>",
        "(Lfast/dic/dict/services/WebService;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/database/LocalStorage;)V",
        "Ljavax/inject/Inject;",
        "isCurrentLanguagePersian",
        "",
        "()Z",
        "_emailVerificationState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState;",
        "emailVerificationState",
        "getEmailVerificationState",
        "()Landroidx/lifecycle/MutableLiveData;",
        "getPricingList",
        "Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState;",
        "language",
        "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
        "sendEmailVerification",
        "",
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
.field private final _emailVerificationState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState;",
            ">;"
        }
    .end annotation
.end field

.field private final emailVerificationState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

.field private final isCurrentLanguagePersian:Z

.field private final webService:Lfast/dic/dict/services/WebService;


# direct methods
.method public constructor <init>(Lfast/dic/dict/services/WebService;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/database/LocalStorage;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string/jumbo v0, "webService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseUserPropertiesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localStorage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 21
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->webService:Lfast/dic/dict/services/WebService;

    .line 22
    iput-object p2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    .line 26
    invoke-virtual {p3}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result p1

    iput-boolean p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian:Z

    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->_emailVerificationState:Landroidx/lifecycle/MutableLiveData;

    .line 29
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->emailVerificationState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-object p0
.end method

.method public static final synthetic access$getWebService$p(Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;)Lfast/dic/dict/services/WebService;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->webService:Lfast/dic/dict/services/WebService;

    return-object p0
.end method

.method public static final synthetic access$get_emailVerificationState$p(Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->_emailVerificationState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final getEmailVerificationState()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->emailVerificationState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPricingList(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;)Landroidx/lifecycle/MutableLiveData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState;",
            ">;"
        }
    .end annotation

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 34
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;

    const/4 v3, 0x0

    invoke-direct {v1, p1, p0, v0, v3}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$getPricingList$1;-><init>(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-object v0
.end method

.method public final isCurrentLanguagePersian()Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian:Z

    return p0
.end method

.method public final sendEmailVerification()V
    .locals 9

    .line 61
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v1, v0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 68
    :goto_1
    iget-object v3, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->_emailVerificationState:Landroidx/lifecycle/MutableLiveData;

    if-nez v1, :cond_2

    .line 64
    new-instance p0, Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState$Error;

    const-string v0, "User email not found"

    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 68
    :cond_2
    sget-object v1, Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState$Loading;->INSTANCE:Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState$Loading;

    invoke-virtual {v3, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 70
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$sendEmailVerification$1;

    invoke-direct {v1, p0, v0, v2}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel$sendEmailVerification$1;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;Lfast/dic/dict/services/parse/FDParseUser;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
