.class public abstract Lfast/dic/dict/databinding/FragmentWordCategoryBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentWordCategoryBinding.java"


# instance fields
.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field protected mAdapter:Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final placeholderLabel:Landroid/widget/TextView;

.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILfast/dic/dict/views/CustomProgressbar;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 49
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 50
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->placeholderLabel:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentWordCategoryBinding;
    .locals 1

    .line 101
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordCategoryBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    sget v0, Lfast/dic/dict/R$layout;->fragment_word_category:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentWordCategoryBinding;
    .locals 1

    .line 83
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentWordCategoryBinding;
    .locals 1

    .line 64
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordCategoryBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    sget v0, Lfast/dic/dict/R$layout;->fragment_word_category:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentWordCategoryBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    sget v0, Lfast/dic/dict/R$layout;->fragment_word_category:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentWordCategoryBinding;->mAdapter:Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;

    return-object p0
.end method

.method public abstract setAdapter(Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;)V
.end method
