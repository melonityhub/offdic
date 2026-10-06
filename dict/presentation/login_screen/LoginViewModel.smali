.class public final Lfast/dic/dict/presentation/login_screen/LoginViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LoginViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00ca\u0001\u0002\u0008\u0014\u00a8\u0006\u0013"
    }
    d2 = {
        "Lfast/dic/dict/presentation/login_screen/LoginViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "connectivityHelper",
        "Lfast/dic/dict/helpers/FDConnectivityHelper;",
        "<init>",
        "(Lfast/dic/dict/helpers/FDConnectivityHelper;)V",
        "Ljavax/inject/Inject;",
        "_uiState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState;",
        "uiState",
        "Landroidx/lifecycle/LiveData;",
        "getUiState",
        "()Landroidx/lifecycle/LiveData;",
        "checkUserEmail",
        "",
        "email",
        "",
        "resetState",
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
            "Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

.field private final uiState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfast/dic/dict/helpers/FDConnectivityHelper;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "connectivityHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 17
    iput-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

    .line 20
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    .line 21
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->uiState:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$get_uiState$p(Lfast/dic/dict/presentation/login_screen/LoginViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 15
    iget-object p0, p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static final checkUserEmail$lambda$0(Lfast/dic/dict/presentation/login_screen/LoginViewModel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_0

    .line 56
    iget-object p0, p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 58
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final checkUserEmail(Ljava/lang/String;)V
    .locals 7

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDConnectivityHelper;->isInternetAvailable()Z

    move-result v0

    .line 30
    iget-object v1, p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 25
    sget-object p0, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$NoInternetError;->INSTANCE:Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$NoInternetError;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 30
    :cond_0
    sget-object v0, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$Loading;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 32
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lfast/dic/dict/presentation/login_screen/LoginViewModel$checkUserEmail$1;

    const/4 v3, 0x0

    invoke-direct {v0, p1, p0, v3}, Lfast/dic/dict/presentation/login_screen/LoginViewModel$checkUserEmail$1;-><init>(Ljava/lang/String;Lfast/dic/dict/presentation/login_screen/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 54
    new-instance v0, Lfast/dic/dict/presentation/login_screen/LoginViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/login_screen/LoginViewModel$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/login_screen/LoginViewModel;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method public final getUiState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->uiState:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final resetState()V
    .locals 1

    .line 62
    iget-object p0, p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->_uiState:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
