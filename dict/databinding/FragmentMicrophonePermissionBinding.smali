.class public final Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;
.super Ljava/lang/Object;
.source "FragmentMicrophonePermissionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final continueButton:Landroid/widget/Button;

.field public final descriptionLabel:Landroid/widget/TextView;

.field public final notLoggedInView:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final titleLabel:Landroid/widget/TextView;

.field public final toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 44
    iput-object p2, p0, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->continueButton:Landroid/widget/Button;

    .line 45
    iput-object p3, p0, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->descriptionLabel:Landroid/widget/TextView;

    .line 46
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->notLoggedInView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->titleLabel:Landroid/widget/TextView;

    .line 48
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;
    .locals 9

    .line 78
    sget v0, Lfast/dic/dict/R$id;->continue_button:I

    .line 79
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 84
    sget v0, Lfast/dic/dict/R$id;->description_label:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 90
    sget v0, Lfast/dic/dict/R$id;->not_logged_in_view:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 96
    sget v0, Lfast/dic/dict/R$id;->title_label:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 102
    sget v0, Lfast/dic/dict/R$id;->toolbar_view:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {v1}, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    move-result-object v8

    .line 109
    new-instance v2, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v8}, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;)V

    return-object v2

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;
    .locals 2

    .line 65
    sget v0, Lfast/dic/dict/R$layout;->fragment_microphone_permission:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 54
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
