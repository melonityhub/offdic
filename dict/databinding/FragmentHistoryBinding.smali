.class public abstract Lfast/dic/dict/databinding/FragmentHistoryBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentHistoryBinding.java"


# instance fields
.field public final historyRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final historySegmentedView:Lcom/creageek/segmentedbutton/SegmentedButton;

.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field protected mAdapter:Lfast/dic/dict/presentation/history_screen/HistoryAdapter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final placeholderLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;Lcom/creageek/segmentedbutton/SegmentedButton;Lfast/dic/dict/views/CustomProgressbar;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 41
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentHistoryBinding;->historyRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentHistoryBinding;->historySegmentedView:Lcom/creageek/segmentedbutton/SegmentedButton;

    .line 43
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentHistoryBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 44
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentHistoryBinding;->placeholderLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentHistoryBinding;
    .locals 1

    .line 94
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentHistoryBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentHistoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentHistoryBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    sget v0, Lfast/dic/dict/R$layout;->fragment_history:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentHistoryBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentHistoryBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentHistoryBinding;
    .locals 1

    .line 76
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentHistoryBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentHistoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentHistoryBinding;
    .locals 1

    .line 57
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentHistoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentHistoryBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    sget v0, Lfast/dic/dict/R$layout;->fragment_history:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentHistoryBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentHistoryBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    sget v0, Lfast/dic/dict/R$layout;->fragment_history:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentHistoryBinding;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lfast/dic/dict/presentation/history_screen/HistoryAdapter;
    .locals 0

    .line 51
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentHistoryBinding;->mAdapter:Lfast/dic/dict/presentation/history_screen/HistoryAdapter;

    return-object p0
.end method

.method public abstract setAdapter(Lfast/dic/dict/presentation/history_screen/HistoryAdapter;)V
.end method
