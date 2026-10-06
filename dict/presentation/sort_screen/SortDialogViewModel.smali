.class public final Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SortDialogViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00ca\u0001\u0002\u0008\u000f\u00a8\u0006\u000e"
    }
    d2 = {
        "Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "<init>",
        "(Lfast/dic/dict/database/LocalStorage;)V",
        "Ljavax/inject/Inject;",
        "selectedSort",
        "Lfast/dic/dict/domain/entity/WordSortEnum;",
        "getSelectedSort",
        "()Lfast/dic/dict/domain/entity/WordSortEnum;",
        "updateSelectedSort",
        "",
        "sort",
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

.field private final selectedSort:Lfast/dic/dict/domain/entity/WordSortEnum;


# direct methods
.method public constructor <init>(Lfast/dic/dict/database/LocalStorage;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "localStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 11
    iput-object p1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 14
    invoke-virtual {p1}, Lfast/dic/dict/database/LocalStorage;->getSelectedSort()Lfast/dic/dict/domain/entity/WordSortEnum;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel;->selectedSort:Lfast/dic/dict/domain/entity/WordSortEnum;

    return-void
.end method


# virtual methods
.method public final getSelectedSort()Lfast/dic/dict/domain/entity/WordSortEnum;
    .locals 0

    .line 14
    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel;->selectedSort:Lfast/dic/dict/domain/entity/WordSortEnum;

    return-object p0
.end method

.method public final updateSelectedSort(Lfast/dic/dict/domain/entity/WordSortEnum;)V
    .locals 1

    const-string v0, "sort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0, p1}, Lfast/dic/dict/database/LocalStorage;->setSelectedSort(Lfast/dic/dict/domain/entity/WordSortEnum;)V

    return-void
.end method
