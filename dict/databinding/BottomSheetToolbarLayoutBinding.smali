.class public final Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;
.super Ljava/lang/Object;
.source "BottomSheetToolbarLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final leftToolbarButton:Landroid/widget/Button;

.field public final rightToolbarButton:Landroid/widget/ImageButton;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final toolbarTitle:Landroid/widget/TextView;

.field public final toolbarTop:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    .line 41
    iput-object p2, p0, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->leftToolbarButton:Landroid/widget/Button;

    .line 42
    iput-object p3, p0, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->rightToolbarButton:Landroid/widget/ImageButton;

    .line 43
    iput-object p4, p0, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->toolbarTitle:Landroid/widget/TextView;

    .line 44
    iput-object p5, p0, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->toolbarTop:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;
    .locals 8

    .line 74
    sget v0, Lfast/dic/dict/R$id;->left_toolbar_button:I

    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 80
    sget v0, Lfast/dic/dict/R$id;->right_toolbar_button:I

    .line 81
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    .line 86
    sget v0, Lfast/dic/dict/R$id;->toolbar_title:I

    .line 87
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 92
    sget v0, Lfast/dic/dict/R$id;->toolbar_top:I

    .line 93
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/Toolbar;

    if-eqz v7, :cond_0

    .line 98
    new-instance v2, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-direct/range {v2 .. v7}, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;)V

    return-object v2

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;
    .locals 2

    .line 61
    sget v0, Lfast/dic/dict/R$layout;->bottom_sheet_toolbar_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
