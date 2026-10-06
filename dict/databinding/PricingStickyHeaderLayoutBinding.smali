.class public abstract Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "PricingStickyHeaderLayoutBinding.java"


# instance fields
.field public final TabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public final actionButtonContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final containerView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final dividerView:Lcom/google/android/material/divider/MaterialDivider;

.field protected mModel:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final packagePriceTv:Landroid/widget/TextView;

.field public final packageTitleTv:Landroid/widget/TextView;

.field public final purchaseButton:Landroid/widget/Button;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/tabs/TabLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/divider/MaterialDivider;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 52
    iput-object p4, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 53
    iput-object p5, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->actionButtonContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    iput-object p6, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->containerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    iput-object p7, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->dividerView:Lcom/google/android/material/divider/MaterialDivider;

    .line 56
    iput-object p8, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->packagePriceTv:Landroid/widget/TextView;

    .line 57
    iput-object p9, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->packageTitleTv:Landroid/widget/TextView;

    .line 58
    iput-object p10, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->purchaseButton:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;
    .locals 1

    .line 108
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    sget v0, Lfast/dic/dict/R$layout;->pricing_sticky_header_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;
    .locals 1

    .line 90
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;
    .locals 1

    .line 71
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    sget v0, Lfast/dic/dict/R$layout;->pricing_sticky_header_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    sget v0, Lfast/dic/dict/R$layout;->pricing_sticky_header_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;
    .locals 0

    .line 65
    iget-object p0, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->mModel:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    return-object p0
.end method

.method public abstract setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;)V
.end method
