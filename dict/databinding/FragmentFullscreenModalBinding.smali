.class public abstract Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentFullscreenModalBinding.java"


# instance fields
.field public final continueButton:Landroid/widget/Button;

.field public final descriptionLabel:Landroid/widget/TextView;

.field public final divider:Lcom/google/android/material/divider/MaterialDivider;

.field protected mRewardedAdsLoading:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final notLoggedInView:Landroid/widget/LinearLayout;

.field public final secondButton:Lcom/google/android/material/button/MaterialButton;

.field public final thirdBtn:Landroid/widget/Button;

.field public final titleLabel:Landroid/widget/TextView;

.field public final toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/TextView;Lcom/google/android/material/divider/MaterialDivider;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/Button;Landroid/widget/TextView;Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 54
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->continueButton:Landroid/widget/Button;

    .line 55
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->descriptionLabel:Landroid/widget/TextView;

    .line 56
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->divider:Lcom/google/android/material/divider/MaterialDivider;

    .line 57
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->notLoggedInView:Landroid/widget/LinearLayout;

    .line 58
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->secondButton:Lcom/google/android/material/button/MaterialButton;

    .line 59
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->thirdBtn:Landroid/widget/Button;

    .line 60
    iput-object p10, p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->titleLabel:Landroid/widget/TextView;

    .line 61
    iput-object p11, p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;
    .locals 1

    .line 111
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    sget v0, Lfast/dic/dict/R$layout;->fragment_fullscreen_modal:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;
    .locals 1

    .line 93
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;
    .locals 1

    .line 74
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    sget v0, Lfast/dic/dict/R$layout;->fragment_fullscreen_modal:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    sget v0, Lfast/dic/dict/R$layout;->fragment_fullscreen_modal:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;

    return-object p0
.end method


# virtual methods
.method public getRewardedAdsLoading()Ljava/lang/Boolean;
    .locals 0

    .line 68
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;->mRewardedAdsLoading:Ljava/lang/Boolean;

    return-object p0
.end method

.method public abstract setRewardedAdsLoading(Ljava/lang/Boolean;)V
.end method
