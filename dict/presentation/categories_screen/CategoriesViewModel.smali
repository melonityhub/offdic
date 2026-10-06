.class public final Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "CategoriesViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\u0008\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00ca\u0001\u0002\u0008\u0015\u00a8\u0006\u0014"
    }
    d2 = {
        "Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "category",
        "Lfast/dic/dict/helpers/FDWordCategory;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "<init>",
        "(Lfast/dic/dict/helpers/FDWordCategory;Lfast/dic/dict/database/LocalStorage;)V",
        "Ljavax/inject/Inject;",
        "_state",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/presentation/categories_screen/CategoriesUIState;",
        "state",
        "Landroidx/lifecycle/LiveData;",
        "getState",
        "()Landroidx/lifecycle/LiveData;",
        "isCurrentLanguagePersian",
        "",
        "getCategories",
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
.field private _state:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/presentation/categories_screen/CategoriesUIState;",
            ">;"
        }
    .end annotation
.end field

.field private final category:Lfast/dic/dict/helpers/FDWordCategory;

.field private final localStorage:Lfast/dic/dict/database/LocalStorage;

.field private final state:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/categories_screen/CategoriesUIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfast/dic/dict/helpers/FDWordCategory;Lfast/dic/dict/database/LocalStorage;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 18
    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->category:Lfast/dic/dict/helpers/FDWordCategory;

    .line 19
    iput-object p2, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 22
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Loading;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    .line 23
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->state:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getCategory$p(Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;)Lfast/dic/dict/helpers/FDWordCategory;
    .locals 0

    .line 16
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->category:Lfast/dic/dict/helpers/FDWordCategory;

    return-object p0
.end method

.method public static final synthetic access$get_state$p(Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 16
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public final getCategories()V
    .locals 7

    .line 28
    iget-object v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Loading;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 30
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel$getCategories$1;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/categories_screen/CategoriesUIState;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->state:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final isCurrentLanguagePersian()Z
    .locals 0

    .line 25
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result p0

    return p0
.end method
