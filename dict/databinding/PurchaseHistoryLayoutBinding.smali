.class public final Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;
.super Ljava/lang/Object;
.source "PurchaseHistoryLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dividerView:Landroid/view/View;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final topHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final transactionDescLabel:Landroid/widget/TextView;

.field public final transactionIdLabel:Landroid/widget/TextView;

.field public final transactionMoneyLabel:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    iput-object p2, p0, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;->dividerView:Landroid/view/View;

    .line 43
    iput-object p3, p0, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;->topHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    iput-object p4, p0, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;->transactionDescLabel:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;->transactionIdLabel:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;->transactionMoneyLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;
    .locals 8

    .line 76
    sget v0, Lfast/dic/dict/R$id;->divider_view:I

    .line 77
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 82
    sget v0, Lfast/dic/dict/R$id;->top_header:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Lfast/dic/dict/R$id;->transaction_desc_label:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Lfast/dic/dict/R$id;->transaction_id_label:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 100
    sget v0, Lfast/dic/dict/R$id;->transaction_money_label:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 106
    new-instance v1, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;

    move-object v2, p0

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v1 .. v7}, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;
    .locals 2

    .line 63
    sget v0, Lfast/dic/dict/R$layout;->purchase_history_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 52
    iget-object p0, p0, Lfast/dic/dict/databinding/PurchaseHistoryLayoutBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
