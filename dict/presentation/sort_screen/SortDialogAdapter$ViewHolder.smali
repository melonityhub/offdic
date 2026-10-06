.class public final Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SortDialogAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/AdapterSortLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;Lfast/dic/dict/databinding/AdapterSortLayoutBinding;)V",
        "setOnSelectListener",
        "",
        "listener",
        "Landroid/view/View$OnClickListener;",
        "setBind",
        "model",
        "Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;",
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
.field private final binding:Lfast/dic/dict/databinding/AdapterSortLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;Lfast/dic/dict/databinding/AdapterSortLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/AdapterSortLayoutBinding;

    return-void
.end method


# virtual methods
.method public final setBind(Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/AdapterSortLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->setModel(Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;)V

    return-void
.end method

.method public final setOnSelectListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/AdapterSortLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->setOnSelectListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
