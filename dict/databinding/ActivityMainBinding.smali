.class public abstract Lfast/dic/dict/databinding/ActivityMainBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityMainBinding.java"


# instance fields
.field public final appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field public final bannerView:Lcom/appodeal/ads/BannerView;

.field public final bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public final cameraButtonFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final floatingButtonsContainer:Landroid/widget/LinearLayout;

.field public final micButtonFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final toolbarTitle:Landroid/widget/TextView;

.field public final toolbarTop:Lcom/google/android/material/appbar/MaterialToolbar;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Lcom/appodeal/ads/BannerView;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/LinearLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/TextView;Lcom/google/android/material/appbar/MaterialToolbar;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 52
    iput-object p4, p0, Lfast/dic/dict/databinding/ActivityMainBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 53
    iput-object p5, p0, Lfast/dic/dict/databinding/ActivityMainBinding;->bannerView:Lcom/appodeal/ads/BannerView;

    .line 54
    iput-object p6, p0, Lfast/dic/dict/databinding/ActivityMainBinding;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 55
    iput-object p7, p0, Lfast/dic/dict/databinding/ActivityMainBinding;->cameraButtonFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 56
    iput-object p8, p0, Lfast/dic/dict/databinding/ActivityMainBinding;->floatingButtonsContainer:Landroid/widget/LinearLayout;

    .line 57
    iput-object p9, p0, Lfast/dic/dict/databinding/ActivityMainBinding;->micButtonFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 58
    iput-object p10, p0, Lfast/dic/dict/databinding/ActivityMainBinding;->toolbarTitle:Landroid/widget/TextView;

    .line 59
    iput-object p11, p0, Lfast/dic/dict/databinding/ActivityMainBinding;->toolbarTop:Lcom/google/android/material/appbar/MaterialToolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/ActivityMainBinding;
    .locals 1

    .line 102
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/ActivityMainBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/ActivityMainBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    sget v0, Lfast/dic/dict/R$layout;->activity_main:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/ActivityMainBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/ActivityMainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/ActivityMainBinding;
    .locals 1

    .line 84
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/ActivityMainBinding;
    .locals 1

    .line 65
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/ActivityMainBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    sget v0, Lfast/dic/dict/R$layout;->activity_main:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/ActivityMainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/ActivityMainBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    sget v0, Lfast/dic/dict/R$layout;->activity_main:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/ActivityMainBinding;

    return-object p0
.end method
