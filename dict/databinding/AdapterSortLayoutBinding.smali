.class public abstract Lfast/dic/dict/databinding/AdapterSortLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "AdapterSortLayoutBinding.java"


# instance fields
.field public final languageTitleLabel:Landroid/widget/TextView;

.field protected mModel:Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mOnSelectListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final myWordsInsideOfContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rowContainerCard:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/card/MaterialCardView;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 40
    iput-object p4, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->languageTitleLabel:Landroid/widget/TextView;

    .line 41
    iput-object p5, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->myWordsInsideOfContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    iput-object p6, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->rowContainerCard:Lcom/google/android/material/card/MaterialCardView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/AdapterSortLayoutBinding;
    .locals 1

    .line 99
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/AdapterSortLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/AdapterSortLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    sget v0, Lfast/dic/dict/R$layout;->adapter_sort_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/AdapterSortLayoutBinding;
    .locals 1

    .line 81
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/AdapterSortLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/AdapterSortLayoutBinding;
    .locals 1

    .line 62
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/AdapterSortLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/AdapterSortLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    sget v0, Lfast/dic/dict/R$layout;->adapter_sort_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/AdapterSortLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    sget v0, Lfast/dic/dict/R$layout;->adapter_sort_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;
    .locals 0

    .line 56
    iget-object p0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->mModel:Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;

    return-object p0
.end method

.method public getOnSelectListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->mOnSelectListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public abstract setModel(Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;)V
.end method

.method public abstract setOnSelectListener(Landroid/view/View$OnClickListener;)V
.end method
