.class public final Lfast/dic/dict/databinding/DialogLoadingProgressBinding;
.super Ljava/lang/Object;
.source "DialogLoadingProgressBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final progressBar:Landroid/widget/ProgressBar;

.field public final progressMessage:Landroid/widget/TextView;

.field public final progressTitle:Landroid/widget/TextView;

.field private final rootView:Landroidx/cardview/widget/CardView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfast/dic/dict/databinding/DialogLoadingProgressBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 35
    iput-object p2, p0, Lfast/dic/dict/databinding/DialogLoadingProgressBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 36
    iput-object p3, p0, Lfast/dic/dict/databinding/DialogLoadingProgressBinding;->progressMessage:Landroid/widget/TextView;

    .line 37
    iput-object p4, p0, Lfast/dic/dict/databinding/DialogLoadingProgressBinding;->progressTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/DialogLoadingProgressBinding;
    .locals 4

    .line 67
    sget v0, Lfast/dic/dict/R$id;->progress_bar:I

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 73
    sget v0, Lfast/dic/dict/R$id;->progress_message:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 79
    sget v0, Lfast/dic/dict/R$id;->progress_title:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 85
    new-instance v0, Lfast/dic/dict/databinding/DialogLoadingProgressBinding;

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-direct {v0, p0, v1, v2, v3}, Lfast/dic/dict/databinding/DialogLoadingProgressBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/DialogLoadingProgressBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/DialogLoadingProgressBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/DialogLoadingProgressBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/DialogLoadingProgressBinding;
    .locals 2

    .line 54
    sget v0, Lfast/dic/dict/R$layout;->dialog_loading_progress:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/DialogLoadingProgressBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/DialogLoadingProgressBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lfast/dic/dict/databinding/DialogLoadingProgressBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 0

    .line 43
    iget-object p0, p0, Lfast/dic/dict/databinding/DialogLoadingProgressBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object p0
.end method
