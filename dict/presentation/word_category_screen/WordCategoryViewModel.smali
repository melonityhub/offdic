.class public final Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "WordCategoryViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0011J\u001c\u0010\u0018\u001a\u00020\u00152\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0011J\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u0013J\u000e\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0011J\u0006\u0010\u001e\u001a\u00020\u0015J\u0006\u0010\u001f\u001a\u00020\u0011J\u0006\u0010 \u001a\u00020!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008#\u00a8\u0006\""
    }
    d2 = {
        "Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "category",
        "Lfast/dic/dict/helpers/FDWordCategory;",
        "<init>",
        "(Lfast/dic/dict/helpers/FDWordCategory;)V",
        "Ljavax/inject/Inject;",
        "_state",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState;",
        "state",
        "Landroidx/lifecycle/LiveData;",
        "getState",
        "()Landroidx/lifecycle/LiveData;",
        "_currentCategoryId",
        "",
        "_filter",
        "Lfast/dic/dict/helpers/FDWordCategory$Filter;",
        "_cefr",
        "",
        "getCategory",
        "",
        "categoryId",
        "filter",
        "getCefrWords",
        "cefr",
        "getCurrentQuery",
        "filterAdapter",
        "query",
        "applyFilterAdapter",
        "clearFilter",
        "retrieveSelectedFilter",
        "hasAnyFilter",
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
.field private _cefr:Ljava/lang/String;

.field private _currentCategoryId:I

.field private _filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

.field private _state:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState;",
            ">;"
        }
    .end annotation
.end field

.field private final category:Lfast/dic/dict/helpers/FDWordCategory;

.field private final state:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfast/dic/dict/helpers/FDWordCategory;)V
    .locals 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 17
    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->category:Lfast/dic/dict/helpers/FDWordCategory;

    .line 20
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Loading;

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    .line 21
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->state:Landroidx/lifecycle/LiveData;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_currentCategoryId:I

    .line 23
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$Filter;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/helpers/FDWordCategory$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    return-void
.end method

.method public static final synthetic access$getCategory$p(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;)Lfast/dic/dict/helpers/FDWordCategory;
    .locals 0

    .line 15
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->category:Lfast/dic/dict/helpers/FDWordCategory;

    return-object p0
.end method

.method public static final synthetic access$get_state$p(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 15
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static synthetic getCategory$default(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;ILfast/dic/dict/helpers/FDWordCategory$Filter;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 26
    iget p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_currentCategoryId:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCategory(ILfast/dic/dict/helpers/FDWordCategory$Filter;)V

    return-void
.end method

.method public static synthetic getCefrWords$default(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 44
    iget-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_cefr:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCefrWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;)V

    return-void
.end method


# virtual methods
.method public final applyFilterAdapter(Lfast/dic/dict/helpers/FDWordCategory$Filter;)V
    .locals 1

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    .line 75
    iget-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_cefr:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_cefr:Ljava/lang/String;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCefrWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;)V

    return-void

    .line 76
    :cond_1
    :goto_0
    iget p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_currentCategoryId:I

    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCategory(ILfast/dic/dict/helpers/FDWordCategory$Filter;)V

    return-void
.end method

.method public final clearFilter()V
    .locals 7

    .line 83
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$Filter;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/helpers/FDWordCategory$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    .line 85
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_cefr:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_cefr:Ljava/lang/String;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCefrWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;)V

    return-void

    .line 86
    :cond_1
    :goto_0
    iget v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_currentCategoryId:I

    iget-object v1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCategory(ILfast/dic/dict/helpers/FDWordCategory$Filter;)V

    return-void
.end method

.method public final filterAdapter(Ljava/lang/String;)V
    .locals 8

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->copy$default(Lfast/dic/dict/helpers/FDWordCategory$Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)Lfast/dic/dict/helpers/FDWordCategory$Filter;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    .line 65
    iget-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_cefr:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_cefr:Ljava/lang/String;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCefrWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;)V

    return-void

    .line 66
    :cond_1
    :goto_0
    iget p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_currentCategoryId:I

    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->getCategory(ILfast/dic/dict/helpers/FDWordCategory$Filter;)V

    return-void
.end method

.method public final getCategory(ILfast/dic/dict/helpers/FDWordCategory$Filter;)V
    .locals 7

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 28
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "ignore getCategory cause categoryId == -1"

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 31
    :cond_0
    iput p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_currentCategoryId:I

    .line 33
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Loading;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 35
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCategory$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCategory$1;-><init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getCefrWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;)V
    .locals 7

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Loading;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel$getCefrWords$1;-><init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    :goto_0
    return-void
.end method

.method public final getCurrentQuery()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getSearch()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->state:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final hasAnyFilter()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getSearch()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 96
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getCerf()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getSubCategory()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 98
    :cond_1
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getMostCommon()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final retrieveSelectedFilter()Lfast/dic/dict/helpers/FDWordCategory$Filter;
    .locals 0

    .line 92
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->_filter:Lfast/dic/dict/helpers/FDWordCategory$Filter;

    return-object p0
.end method
