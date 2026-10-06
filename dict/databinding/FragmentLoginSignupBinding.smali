.class public abstract Lfast/dic/dict/databinding/FragmentLoginSignupBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentLoginSignupBinding.java"


# instance fields
.field public final closeButton:Landroid/widget/Button;

.field public final descriptionLabel:Landroid/widget/TextView;

.field public final emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final forgetPassword:Landroid/widget/Button;

.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field public final okAndNavigateButton:Landroid/widget/Button;

.field public final titleLabel:Landroid/widget/TextView;

.field public final topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/Button;Lfast/dic/dict/views/CustomProgressbar;Landroid/widget/Button;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 50
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->closeButton:Landroid/widget/Button;

    .line 51
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->descriptionLabel:Landroid/widget/TextView;

    .line 52
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 53
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->forgetPassword:Landroid/widget/Button;

    .line 54
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 55
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->okAndNavigateButton:Landroid/widget/Button;

    .line 56
    iput-object p10, p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->titleLabel:Landroid/widget/TextView;

    .line 57
    iput-object p11, p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;
    .locals 1

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    sget v0, Lfast/dic/dict/R$layout;->fragment_login_signup:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;
    .locals 1

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;
    .locals 1

    .line 63
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    sget v0, Lfast/dic/dict/R$layout;->fragment_login_signup:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    sget v0, Lfast/dic/dict/R$layout;->fragment_login_signup:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    return-object p0
.end method
