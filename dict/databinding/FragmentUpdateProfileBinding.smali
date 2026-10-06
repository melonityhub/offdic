.class public final Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;
.super Ljava/lang/Object;
.source "FragmentUpdateProfileBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final editButton:Landroid/widget/Button;

.field public final editTextSettingsText:Landroid/widget/TextView;

.field public final emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final userFullNameInput:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/views/CustomProgressbar;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;->rootView:Landroid/widget/FrameLayout;

    .line 44
    iput-object p2, p0, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;->editButton:Landroid/widget/Button;

    .line 45
    iput-object p3, p0, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;->editTextSettingsText:Landroid/widget/TextView;

    .line 46
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 47
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 48
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;->userFullNameInput:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;
    .locals 9

    .line 78
    sget v0, Lfast/dic/dict/R$id;->edit_Button:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 84
    sget v0, Lfast/dic/dict/R$id;->editTextSettingsText:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 90
    sget v0, Lfast/dic/dict/R$id;->email_address_input:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v6, :cond_0

    .line 96
    sget v0, Lfast/dic/dict/R$id;->loading_spinner:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lfast/dic/dict/views/CustomProgressbar;

    if-eqz v7, :cond_0

    .line 102
    sget v0, Lfast/dic/dict/R$id;->user_full_name_input:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v8, :cond_0

    .line 108
    new-instance v2, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v8}, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/views/CustomProgressbar;Lcom/google/android/material/textfield/TextInputEditText;)V

    return-object v2

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;
    .locals 2

    .line 65
    sget v0, Lfast/dic/dict/R$layout;->fragment_update_profile:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentUpdateProfileBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
