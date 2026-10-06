.class public abstract Lfast/dic/dict/databinding/FragmentWordResultBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentWordResultBinding.java"


# instance fields
.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field protected mEnableSearchBar:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mEnableToolbar:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mLoading:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final searchBarView:Lfast/dic/dict/views/SearchBarView;

.field public final toolbarTitle:Landroid/widget/TextView;

.field public final toolbarTop:Landroidx/appcompat/widget/Toolbar;

.field public final webViewContainer:Landroid/widget/FrameLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILfast/dic/dict/views/CustomProgressbar;Lfast/dic/dict/views/SearchBarView;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 50
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentWordResultBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 51
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentWordResultBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    .line 52
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentWordResultBinding;->toolbarTitle:Landroid/widget/TextView;

    .line 53
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentWordResultBinding;->toolbarTop:Landroidx/appcompat/widget/Toolbar;

    .line 54
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentWordResultBinding;->webViewContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentWordResultBinding;
    .locals 1

    .line 118
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordResultBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    sget v0, Lfast/dic/dict/R$layout;->fragment_word_result:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentWordResultBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentWordResultBinding;
    .locals 1

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentWordResultBinding;
    .locals 1

    .line 81
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordResultBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    sget v0, Lfast/dic/dict/R$layout;->fragment_word_result:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentWordResultBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordResultBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    sget v0, Lfast/dic/dict/R$layout;->fragment_word_result:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentWordResultBinding;

    return-object p0
.end method


# virtual methods
.method public getEnableSearchBar()Ljava/lang/Boolean;
    .locals 0

    .line 75
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentWordResultBinding;->mEnableSearchBar:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getEnableToolbar()Ljava/lang/Boolean;
    .locals 0

    .line 68
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentWordResultBinding;->mEnableToolbar:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getLoading()Ljava/lang/Boolean;
    .locals 0

    .line 61
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentWordResultBinding;->mLoading:Ljava/lang/Boolean;

    return-object p0
.end method

.method public abstract setEnableSearchBar(Ljava/lang/Boolean;)V
.end method

.method public abstract setEnableToolbar(Ljava/lang/Boolean;)V
.end method

.method public abstract setLoading(Ljava/lang/Boolean;)V
.end method
