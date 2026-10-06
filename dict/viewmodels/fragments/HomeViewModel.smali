.class public final Lfast/dic/dict/viewmodels/fragments/HomeViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "HomeViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\u0008\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00ca\u0001\u0002\u0008\u0013\u00a8\u0006\u0012"
    }
    d2 = {
        "Lfast/dic/dict/viewmodels/fragments/HomeViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "webService",
        "Lfast/dic/dict/services/WebService;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "<init>",
        "(Lfast/dic/dict/services/WebService;Lfast/dic/dict/database/LocalStorage;)V",
        "Ljavax/inject/Inject;",
        "viewModelState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/viewmodels/fragments/HomeViewModelState;",
        "data",
        "Landroidx/lifecycle/LiveData;",
        "getData",
        "()Landroidx/lifecycle/LiveData;",
        "getWordOfDayData",
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
.field private final localStorage:Lfast/dic/dict/database/LocalStorage;

.field private viewModelState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/viewmodels/fragments/HomeViewModelState;",
            ">;"
        }
    .end annotation
.end field

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

    .line 18
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 20
    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->webService:Lfast/dic/dict/services/WebService;

    .line 21
    iput-object p2, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 24
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->viewModelState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$getLocalStorage$p(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;)Lfast/dic/dict/database/LocalStorage;
    .locals 0

    .line 18
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    return-object p0
.end method

.method public static final synthetic access$getViewModelState$p(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 18
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->viewModelState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getWebService$p(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;)Lfast/dic/dict/services/WebService;
    .locals 0

    .line 18
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->webService:Lfast/dic/dict/services/WebService;

    return-object p0
.end method

.method static final getWordOfDayData$lambda$0(Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 3

    .line 58
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FINISHED with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/viewmodels/fragments/HomeViewModelState;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->viewModelState:Landroidx/lifecycle/MutableLiveData;

    check-cast p0, Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getWordOfDayData()V
    .locals 7

    .line 28
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$getWordOfDayData$1;-><init>(Lfast/dic/dict/viewmodels/fragments/HomeViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    .line 57
    new-instance v0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method
