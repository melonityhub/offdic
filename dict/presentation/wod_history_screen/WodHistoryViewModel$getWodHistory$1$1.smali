.class public final Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1$1;
.super Ljava/lang/Object;
.source "WodHistoryViewModel.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lfast/dic/dict/models/WodHistoryMonthDto;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWodHistoryViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WodHistoryViewModel.kt\nfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,95:1\n221#2,2:96\n*S KotlinDebug\n*F\n+ 1 WodHistoryViewModel.kt\nfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1$1\n*L\n70#1:96,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00020\u0001JH\u0010\u0006\u001a\u00020\u00072\u001e\u0010\u0008\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00020\t2\u001e\u0010\n\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00020\u000bH\u0016J0\u0010\u000c\u001a\u00020\u00072\u001e\u0010\u0008\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00020\t2\u0006\u0010\n\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "fast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1$1",
        "Lretrofit2/Callback;",
        "",
        "",
        "",
        "Lfast/dic/dict/models/WodHistoryMonthDto;",
        "onResponse",
        "",
        "p0",
        "Lretrofit2/Call;",
        "p1",
        "Lretrofit2/Response;",
        "onFailure",
        "",
        "app"
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
.field final synthetic this$0:Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1$1;->this$0:Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WodHistoryMonthDto;",
            ">;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1$1;->this$0:Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    invoke-static {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->access$get_state$p(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Error;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Unknown error."

    :cond_0
    invoke-direct {p1, p2}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WodHistoryMonthDto;",
            ">;>;>;",
            "Lretrofit2/Response<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WodHistoryMonthDto;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "p1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 68
    iget-object v0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1$1;->this$0:Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->isCurrentLanguagePersian()Z

    move-result v0

    .line 70
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 96
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    new-instance v3, Lfast/dic/dict/models/WodHistoryMonthDto;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v0}, Lfast/dic/dict/utils/IntExtKt;->getMonthName(IZ)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v3, v5, v5, v5, v4}, Lfast/dic/dict/models/WodHistoryMonthDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 75
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1$1;->this$0:Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    invoke-static {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->access$get_state$p(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p2, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Data;

    invoke-direct {p2, p1}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Data;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void

    .line 77
    :cond_1
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel$getWodHistory$1$1;->this$0:Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    invoke-static {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->access$get_state$p(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Error;

    const-string p2, "Fail to load history."

    invoke-direct {p1, p2}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
