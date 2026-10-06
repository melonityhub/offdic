.class public abstract Lfast/dic/dict/databinding/FragmentPricingBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentPricingBinding.java"


# instance fields
.field public final featuresLayout:Landroid/widget/LinearLayout;

.field public final featuresRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field protected mFeatureAdapter:Lfast/dic/dict/adapters/PricingFeatureListAdapter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mModel:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mPlanAdapter:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final planRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

.field public final pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

.field public final restorePurchaseButton:Landroid/widget/Button;

.field public final scrollview:Landroidx/core/widget/NestedScrollView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lfast/dic/dict/views/CustomProgressbar;Landroidx/recyclerview/widget/RecyclerView;Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;Landroid/widget/Button;Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 64
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->featuresLayout:Landroid/widget/LinearLayout;

    .line 65
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->featuresRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 67
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->planRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    .line 69
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    .line 70
    iput-object p10, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->restorePurchaseButton:Landroid/widget/Button;

    .line 71
    iput-object p11, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->scrollview:Landroidx/core/widget/NestedScrollView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentPricingBinding;
    .locals 1

    .line 135
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentPricingBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentPricingBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    sget v0, Lfast/dic/dict/R$layout;->fragment_pricing:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentPricingBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentPricingBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentPricingBinding;
    .locals 1

    .line 117
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentPricingBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentPricingBinding;
    .locals 1

    .line 98
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentPricingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentPricingBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    sget v0, Lfast/dic/dict/R$layout;->fragment_pricing:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentPricingBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentPricingBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    sget v0, Lfast/dic/dict/R$layout;->fragment_pricing:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentPricingBinding;

    return-object p0
.end method


# virtual methods
.method public getFeatureAdapter()Lfast/dic/dict/adapters/PricingFeatureListAdapter;
    .locals 0

    .line 85
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->mFeatureAdapter:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    return-object p0
.end method

.method public getModel()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;
    .locals 0

    .line 78
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->mModel:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    return-object p0
.end method

.method public getPlanAdapter()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;
    .locals 0

    .line 92
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->mPlanAdapter:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    return-object p0
.end method

.method public abstract setFeatureAdapter(Lfast/dic/dict/adapters/PricingFeatureListAdapter;)V
.end method

.method public abstract setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;)V
.end method

.method public abstract setPlanAdapter(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V
.end method
