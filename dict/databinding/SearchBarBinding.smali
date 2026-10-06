.class public final Lfast/dic/dict/databinding/SearchBarBinding;
.super Ljava/lang/Object;
.source "SearchBarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clearButton:Landroid/widget/ImageView;

.field public final clearButtonContainer:Landroid/widget/RelativeLayout;

.field public final parentCardView:Landroidx/cardview/widget/CardView;

.field private final rootView:Landroidx/cardview/widget/CardView;

.field public final searchIcon:Landroid/widget/ImageView;

.field public final searchInput:Landroid/widget/EditText;

.field public final searchInputContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final wordCountView:Landroid/widget/LinearLayout;

.field public final wordsCountLabel:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/EditText;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lfast/dic/dict/databinding/SearchBarBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 57
    iput-object p2, p0, Lfast/dic/dict/databinding/SearchBarBinding;->clearButton:Landroid/widget/ImageView;

    .line 58
    iput-object p3, p0, Lfast/dic/dict/databinding/SearchBarBinding;->clearButtonContainer:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p4, p0, Lfast/dic/dict/databinding/SearchBarBinding;->parentCardView:Landroidx/cardview/widget/CardView;

    .line 60
    iput-object p5, p0, Lfast/dic/dict/databinding/SearchBarBinding;->searchIcon:Landroid/widget/ImageView;

    .line 61
    iput-object p6, p0, Lfast/dic/dict/databinding/SearchBarBinding;->searchInput:Landroid/widget/EditText;

    .line 62
    iput-object p7, p0, Lfast/dic/dict/databinding/SearchBarBinding;->searchInputContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    iput-object p8, p0, Lfast/dic/dict/databinding/SearchBarBinding;->wordCountView:Landroid/widget/LinearLayout;

    .line 64
    iput-object p9, p0, Lfast/dic/dict/databinding/SearchBarBinding;->wordsCountLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/SearchBarBinding;
    .locals 12

    .line 94
    sget v0, Lfast/dic/dict/R$id;->clear_button:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 100
    sget v0, Lfast/dic/dict/R$id;->clear_button_container:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    .line 106
    move-object v3, p0

    check-cast v3, Landroidx/cardview/widget/CardView;

    .line 108
    sget v0, Lfast/dic/dict/R$id;->search_icon:I

    .line 109
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 114
    sget v0, Lfast/dic/dict/R$id;->search_input:I

    .line 115
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 120
    sget v0, Lfast/dic/dict/R$id;->search_input_container:I

    .line 121
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v9, :cond_0

    .line 126
    sget v0, Lfast/dic/dict/R$id;->word_count_view:I

    .line 127
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 132
    sget v0, Lfast/dic/dict/R$id;->words_count_label:I

    .line 133
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 138
    new-instance v2, Lfast/dic/dict/databinding/SearchBarBinding;

    move-object v6, v3

    invoke-direct/range {v2 .. v11}, Lfast/dic/dict/databinding/SearchBarBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/EditText;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v2

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/SearchBarBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/SearchBarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/SearchBarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/SearchBarBinding;
    .locals 2

    .line 81
    sget v0, Lfast/dic/dict/R$layout;->search_bar:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/SearchBarBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/SearchBarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lfast/dic/dict/databinding/SearchBarBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 0

    .line 70
    iget-object p0, p0, Lfast/dic/dict/databinding/SearchBarBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object p0
.end method
