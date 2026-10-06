.class public abstract Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentResultOrderModalBinding.java"


# instance fields
.field public final appBar:Lcom/google/android/material/appbar/AppBarLayout;

.field public final backToolbarButton:Landroid/widget/Button;

.field public final ctaLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field protected mAdapter:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mDismissClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mRestoreClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSaveClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final orderRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final primaryBtn:Landroid/widget/Button;

.field public final secondaryBtn:Landroid/widget/Button;

.field public final subtitleTv:Landroid/widget/TextView;

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;

.field public final toolbarTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroid/widget/Button;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;Landroid/widget/TextView;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 68
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->appBar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 69
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->backToolbarButton:Landroid/widget/Button;

    .line 70
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->ctaLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 71
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->orderRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->primaryBtn:Landroid/widget/Button;

    .line 73
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->secondaryBtn:Landroid/widget/Button;

    .line 74
    iput-object p10, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->subtitleTv:Landroid/widget/TextView;

    .line 75
    iput-object p11, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 76
    iput-object p12, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->toolbarTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;
    .locals 1

    .line 147
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    sget v0, Lfast/dic/dict/R$layout;->fragment_result_order_modal:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;
    .locals 1

    .line 129
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;
    .locals 1

    .line 110
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    sget v0, Lfast/dic/dict/R$layout;->fragment_result_order_modal:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    sget v0, Lfast/dic/dict/R$layout;->fragment_result_order_modal:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;
    .locals 0

    .line 104
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->mAdapter:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    return-object p0
.end method

.method public getDismissClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 83
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->mDismissClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getRestoreClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 90
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->mRestoreClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getSaveClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 97
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->mSaveClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public abstract setAdapter(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;)V
.end method

.method public abstract setDismissClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setRestoreClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setSaveClickListener(Landroid/view/View$OnClickListener;)V
.end method
