.class public abstract Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentRegistrationFormBinding.java"


# instance fields
.field public final backButton:Landroid/widget/ImageButton;

.field public final editEmail:Landroid/widget/Button;

.field public final emailAddressLabel:Landroid/widget/TextView;

.field public final enterPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field public final repeatEnterPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final signupButton:Landroid/widget/Button;

.field public final termsButton:Landroid/widget/Button;

.field public final titleLabel:Landroid/widget/TextView;

.field public final topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final userFullNameInput:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/Button;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/views/CustomProgressbar;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 62
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->backButton:Landroid/widget/ImageButton;

    .line 63
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->editEmail:Landroid/widget/Button;

    .line 64
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->emailAddressLabel:Landroid/widget/TextView;

    .line 65
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->enterPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 66
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 67
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->repeatEnterPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 68
    iput-object p10, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->signupButton:Landroid/widget/Button;

    .line 69
    iput-object p11, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->termsButton:Landroid/widget/Button;

    .line 70
    iput-object p12, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->titleLabel:Landroid/widget/TextView;

    .line 71
    iput-object p13, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 72
    iput-object p14, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->userFullNameInput:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;
    .locals 1

    .line 115
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    sget v0, Lfast/dic/dict/R$layout;->fragment_registration_form:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;
    .locals 1

    .line 97
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;
    .locals 1

    .line 78
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    sget v0, Lfast/dic/dict/R$layout;->fragment_registration_form:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    sget v0, Lfast/dic/dict/R$layout;->fragment_registration_form:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    return-object p0
.end method
