.class public final Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;
.super Ljava/lang/Object;
.source "FragmentForgetPasswordBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final backButton:Landroid/widget/ImageButton;

.field public final descriptionLabel:Landroid/widget/TextView;

.field public final emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final sendRestPasswordButton:Lcom/google/android/material/button/MaterialButton;

.field public final titleLabel:Landroid/widget/TextView;

.field public final topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/views/CustomProgressbar;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->rootView:Landroid/widget/FrameLayout;

    .line 54
    iput-object p2, p0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->backButton:Landroid/widget/ImageButton;

    .line 55
    iput-object p3, p0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->descriptionLabel:Landroid/widget/TextView;

    .line 56
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 57
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 58
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->sendRestPasswordButton:Lcom/google/android/material/button/MaterialButton;

    .line 59
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->titleLabel:Landroid/widget/TextView;

    .line 60
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;
    .locals 11

    .line 90
    sget v0, Lfast/dic/dict/R$id;->back_button:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 96
    sget v0, Lfast/dic/dict/R$id;->description_label:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 102
    sget v0, Lfast/dic/dict/R$id;->email_address_input:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v6, :cond_0

    .line 108
    sget v0, Lfast/dic/dict/R$id;->loading_spinner:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lfast/dic/dict/views/CustomProgressbar;

    if-eqz v7, :cond_0

    .line 114
    sget v0, Lfast/dic/dict/R$id;->send_rest_password_button:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    if-eqz v8, :cond_0

    .line 120
    sget v0, Lfast/dic/dict/R$id;->title_label:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 126
    sget v0, Lfast/dic/dict/R$id;->top_toolbar_container:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v10, :cond_0

    .line 132
    new-instance v2, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v10}, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/views/CustomProgressbar;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-object v2

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;
    .locals 2

    .line 77
    sget v0, Lfast/dic/dict/R$layout;->fragment_forget_password:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
