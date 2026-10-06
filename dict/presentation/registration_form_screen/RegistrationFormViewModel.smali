.class public final Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "RegistrationFormViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0002\u0008\n\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00ca\u0001\u0002\u0008\u001c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "connectivityHelper",
        "Lfast/dic/dict/helpers/FDConnectivityHelper;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "firebaseUserPropertiesManager",
        "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "<init>",
        "(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V",
        "Ljavax/inject/Inject;",
        "isCurrentLanguagePersian",
        "",
        "()Z",
        "_uiState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState;",
        "uiState",
        "Landroidx/lifecycle/LiveData;",
        "getUiState",
        "()Landroidx/lifecycle/LiveData;",
        "submitRegistrationForm",
        "",
        "email",
        "",
        "password",
        "name",
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
.field private final _uiState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

.field private final firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

.field private final isCurrentLanguagePersian:Z

.field private final localStorage:Lfast/dic/dict/database/LocalStorage;

.field private final uiState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "connectivityHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseUserPropertiesManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 22
    iput-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

    .line 23
    iput-object p2, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 24
    iput-object p3, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    .line 27
    invoke-virtual {p2}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result p1

    iput-boolean p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->isCurrentLanguagePersian:Z

    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    .line 29
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->uiState:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-object p0
.end method

.method public static final synthetic access$get_uiState$p(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 20
    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final getUiState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->uiState:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final isCurrentLanguagePersian()Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->isCurrentLanguagePersian:Z

    return p0
.end method

.method public final submitRegistrationForm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDConnectivityHelper;->isInternetAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object p2, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    .line 36
    const-string p3, "network_error"

    .line 37
    const-string v0, "email_password"

    .line 34
    invoke-virtual {p2, p1, p3, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserRegisterFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$NoInternetError;->INSTANCE:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$NoInternetError;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Loading;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 46
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;

    const/4 v8, 0x0

    move-object v7, p0

    move-object v4, p1

    move-object v6, p2

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
