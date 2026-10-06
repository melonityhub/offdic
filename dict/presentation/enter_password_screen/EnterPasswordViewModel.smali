.class public final Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "EnterPasswordViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\u0008\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00ca\u0001\u0002\u0008\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "connectivityHelper",
        "Lfast/dic/dict/helpers/FDConnectivityHelper;",
        "firebaseUserPropertiesManager",
        "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "<init>",
        "(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V",
        "Ljavax/inject/Inject;",
        "_uiState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState;",
        "uiState",
        "Landroidx/lifecycle/LiveData;",
        "getUiState",
        "()Landroidx/lifecycle/LiveData;",
        "loginWithPassword",
        "",
        "email",
        "",
        "password",
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
            "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

.field private final firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

.field private final uiState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "connectivityHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseUserPropertiesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 21
    iput-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;->connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

    .line 22
    iput-object p2, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    .line 25
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    .line 26
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;->uiState:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-object p0
.end method

.method public static final synthetic access$get_uiState$p(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final getUiState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;->uiState:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final loginWithPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;->connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDConnectivityHelper;->isInternetAvailable()Z

    move-result v0

    .line 35
    iget-object v1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 30
    sget-object p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$NoInternetError;->INSTANCE:Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$NoInternetError;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 35
    :cond_0
    sget-object v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$Loading;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 37
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel$loginWithPassword$1;

    const/4 v3, 0x0

    invoke-direct {v0, p1, p2, p0, v3}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel$loginWithPassword$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
