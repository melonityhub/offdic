.class public final Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;
.super Ljava/lang/Object;
.source "CreateFavoriteDirectoryBottomSheetLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addDirectoryButton:Landroid/widget/Button;

.field public final closeButton:Landroid/widget/Button;

.field public final createDirectoryTitleLabel:Landroid/widget/TextView;

.field public final createNewDirectoryView:Landroid/widget/RelativeLayout;

.field public final directoryNameContainer:Lcom/google/android/material/card/MaterialCardView;

.field public final directoryNameInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final dividerView:Landroid/view/View;

.field public final headerBarView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 57
    iput-object p2, p0, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->addDirectoryButton:Landroid/widget/Button;

    .line 58
    iput-object p3, p0, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->closeButton:Landroid/widget/Button;

    .line 59
    iput-object p4, p0, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->createDirectoryTitleLabel:Landroid/widget/TextView;

    .line 60
    iput-object p5, p0, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->createNewDirectoryView:Landroid/widget/RelativeLayout;

    .line 61
    iput-object p6, p0, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->directoryNameContainer:Lcom/google/android/material/card/MaterialCardView;

    .line 62
    iput-object p7, p0, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->directoryNameInput:Lcom/google/android/material/textfield/TextInputEditText;

    .line 63
    iput-object p8, p0, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->dividerView:Landroid/view/View;

    .line 64
    iput-object p9, p0, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->headerBarView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;
    .locals 12

    .line 95
    sget v0, Lfast/dic/dict/R$id;->add_directory_button:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 101
    sget v0, Lfast/dic/dict/R$id;->close_button:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 107
    sget v0, Lfast/dic/dict/R$id;->create_directory_title_label:I

    .line 108
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 113
    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 115
    sget v0, Lfast/dic/dict/R$id;->directory_name_container:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v8, :cond_0

    .line 121
    sget v0, Lfast/dic/dict/R$id;->directory_name_input:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v9, :cond_0

    .line 127
    sget v0, Lfast/dic/dict/R$id;->divider_view:I

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 133
    sget v0, Lfast/dic/dict/R$id;->header_bar_view:I

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v11, :cond_0

    .line 139
    new-instance v2, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v11}, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-object v2

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 144
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;
    .locals 2

    .line 82
    sget v0, Lfast/dic/dict/R$layout;->create_favorite_directory_bottom_sheet_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lfast/dic/dict/databinding/CreateFavoriteDirectoryBottomSheetLayoutBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
