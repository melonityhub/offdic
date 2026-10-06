.class public abstract Lfast/dic/dict/databinding/FragmentSearchBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentSearchBinding.java"


# instance fields
.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field protected mAdapter:Lfast/dic/dict/adapters/WordSuggestionAdapter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final placeholderLabel:Landroid/widget/TextView;

.field public final placeholderLabelEn:Landroid/widget/TextView;

.field public final placeholderNoResult:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final searchBarView:Lfast/dic/dict/views/SearchBarView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILfast/dic/dict/views/CustomProgressbar;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Lfast/dic/dict/views/SearchBarView;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 49
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentSearchBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 50
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentSearchBinding;->placeholderLabel:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentSearchBinding;->placeholderLabelEn:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentSearchBinding;->placeholderNoResult:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentSearchBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentSearchBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentSearchBinding;
    .locals 1

    .line 104
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentSearchBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentSearchBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentSearchBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    sget v0, Lfast/dic/dict/R$layout;->fragment_search:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentSearchBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentSearchBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentSearchBinding;
    .locals 1

    .line 86
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentSearchBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentSearchBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentSearchBinding;
    .locals 1

    .line 67
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentSearchBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentSearchBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentSearchBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    sget v0, Lfast/dic/dict/R$layout;->fragment_search:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentSearchBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentSearchBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    sget v0, Lfast/dic/dict/R$layout;->fragment_search:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentSearchBinding;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lfast/dic/dict/adapters/WordSuggestionAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentSearchBinding;->mAdapter:Lfast/dic/dict/adapters/WordSuggestionAdapter;

    return-object p0
.end method

.method public abstract setAdapter(Lfast/dic/dict/adapters/WordSuggestionAdapter;)V
.end method
