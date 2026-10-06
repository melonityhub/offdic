.class public final Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "WodHistoryViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWodHistoryViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WodHistoryViewModel.kt\nfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1739#2:96\n1814#2,3:97\n1233#2:100\n1739#2:101\n1814#2,3:102\n1233#2:105\n*S KotlinDebug\n*F\n+ 1 WodHistoryViewModel.kt\nfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel\n*L\n47#1:96\n47#1:97,3\n47#1:100\n50#1:101\n50#1:102,3\n50#1:105\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\u0008\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0013J\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0016J\u0018\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00162\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0018H\u0002J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00ca\u0001\u0002\u0008\u001e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "webService",
        "Lfast/dic/dict/services/WebService;",
        "<init>",
        "(Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/WebService;)V",
        "Ljavax/inject/Inject;",
        "_state",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState;",
        "state",
        "Landroidx/lifecycle/LiveData;",
        "getState",
        "()Landroidx/lifecycle/LiveData;",
        "isCurrentLanguagePersian",
        "",
        "convertToJalaliYear",
        "",
        "gregorianYear",
        "getYears",
        "",
        "getJalaliYears",
        "",
        "startYear",
        "getWodHistory",
        "",
        "year",
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
            "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState;",
            ">;"
        }
    .end annotation
.end field

.field private final localStorage:Lfast/dic/dict/database/LocalStorage;

.field private final state:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState;",
            ">;"
        }
    .end annotation
.end field

.field private final webService:Lfast/dic/dict/services/WebService;


# direct methods
.method public constructor <init>(Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/WebService;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "localStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 24
    iput-object p1, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 25
    iput-object p2, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->webService:Lfast/dic/dict/services/WebService;

    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Loading;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    .line 29
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->state:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getWebService$p(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;)Lfast/dic/dict/services/WebService;
    .locals 0

    .line 22
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->webService:Lfast/dic/dict/services/WebService;

    return-object p0
.end method

.method public static final synthetic access$get_state$p(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 22
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private final getJalaliYears(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance p0, Lkotlin/ranges/IntRange;

    new-instance v0, Lfast/dic/dict/utils/PersianDate;

    invoke-direct {v0}, Lfast/dic/dict/utils/PersianDate;-><init>()V

    invoke-virtual {v0}, Lfast/dic/dict/utils/PersianDate;->getShYear()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getJalaliYears$default(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x577

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->getJalaliYears(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final convertToJalaliYear(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string p0, "gregorianYear"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Lcom/fastdic/android/modules/fdnumberstowords/utils/FDStringExtKt;->toEnglishNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "1"

    invoke-static {p0, v3, v1, v2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return-object v0

    .line 38
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit16 p0, p0, -0x26d

    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public final getState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->state:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getWodHistory(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "year"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->_state:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Loading;->INSTANCE:Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Loading;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 61
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1;-><init>(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getYears()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->isCurrentLanguagePersian()Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {p0, v4, v3, v2}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->getJalaliYears$default(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 97
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 98
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 47
    sget-object v2, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbersToFarsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 96
    check-cast v0, Ljava/lang/Iterable;

    .line 100
    new-instance p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getYears$$inlined$sortedByDescending$1;

    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getYears$$inlined$sortedByDescending$1;-><init>()V

    check-cast p0, Ljava/util/Comparator;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 50
    :cond_1
    invoke-static {p0, v4, v3, v2}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->getJalaliYears$default(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;IILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 102
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 103
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 101
    check-cast v0, Ljava/lang/Iterable;

    .line 105
    new-instance p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getYears$$inlined$sortedByDescending$2;

    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getYears$$inlined$sortedByDescending$2;-><init>()V

    check-cast p0, Ljava/util/Comparator;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isCurrentLanguagePersian()Z
    .locals 0

    .line 31
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result p0

    return p0
.end method
