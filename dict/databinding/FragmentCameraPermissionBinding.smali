.class public abstract Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentCameraPermissionBinding.java"


# instance fields
.field public final continueButton:Landroid/widget/Button;

.field public final descriptionLabel:Landroid/widget/TextView;

.field protected mOnBackListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final notLoggedInView:Landroid/widget/LinearLayout;

.field public final titleLabel:Landroid/widget/TextView;

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;

.field public final toolbarView:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 48
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->continueButton:Landroid/widget/Button;

    .line 49
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->descriptionLabel:Landroid/widget/TextView;

    .line 50
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->notLoggedInView:Landroid/widget/LinearLayout;

    .line 51
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->titleLabel:Landroid/widget/TextView;

    .line 52
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 53
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->toolbarView:Lcom/google/android/material/appbar/AppBarLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;
    .locals 1

    .line 103
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    sget v0, Lfast/dic/dict/R$layout;->fragment_camera_permission:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;
    .locals 1

    .line 85
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;
    .locals 1

    .line 66
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    sget v0, Lfast/dic/dict/R$layout;->fragment_camera_permission:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    sget v0, Lfast/dic/dict/R$layout;->fragment_camera_permission:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;

    return-object p0
.end method


# virtual methods
.method public getOnBackListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->mOnBackListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public abstract setOnBackListener(Landroid/view/View$OnClickListener;)V
.end method
