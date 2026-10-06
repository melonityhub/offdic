.class public abstract Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "PricingFeatureItemLayoutBinding.java"


# instance fields
.field public final featureDescTv:Landroid/widget/TextView;

.field public final featureTitleTv:Landroid/widget/TextView;

.field public final leftView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field protected mFeatureColor:Ljava/lang/Integer;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mFeatureDescription:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mFeatureStatusIcon:Ljava/lang/Integer;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mFeatureStatusText:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mFeatureTitle:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final rightView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 50
    iput-object p4, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->featureDescTv:Landroid/widget/TextView;

    .line 51
    iput-object p5, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->featureTitleTv:Landroid/widget/TextView;

    .line 52
    iput-object p6, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->leftView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    iput-object p7, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->rightView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;
    .locals 1

    .line 131
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    sget v0, Lfast/dic/dict/R$layout;->pricing_feature_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;
    .locals 1

    .line 113
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;
    .locals 1

    .line 94
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    sget v0, Lfast/dic/dict/R$layout;->pricing_feature_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    sget v0, Lfast/dic/dict/R$layout;->pricing_feature_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getFeatureColor()Ljava/lang/Integer;
    .locals 0

    .line 81
    iget-object p0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->mFeatureColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public getFeatureDescription()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->mFeatureDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureStatusIcon()Ljava/lang/Integer;
    .locals 0

    .line 74
    iget-object p0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->mFeatureStatusIcon:Ljava/lang/Integer;

    return-object p0
.end method

.method public getFeatureStatusText()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->mFeatureStatusText:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureTitle()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->mFeatureTitle:Ljava/lang/String;

    return-object p0
.end method

.method public abstract setFeatureColor(Ljava/lang/Integer;)V
.end method

.method public abstract setFeatureDescription(Ljava/lang/String;)V
.end method

.method public abstract setFeatureStatusIcon(Ljava/lang/Integer;)V
.end method

.method public abstract setFeatureStatusText(Ljava/lang/String;)V
.end method

.method public abstract setFeatureTitle(Ljava/lang/String;)V
.end method
