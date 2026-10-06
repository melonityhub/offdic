.class public final Lfast/dic/dict/databinding/WordOfTheDayBinding;
.super Ljava/lang/Object;
.source "WordOfTheDayBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final calendarIconView:Landroid/widget/ImageView;

.field private final rootView:Landroidx/cardview/widget/CardView;

.field public final todayView:Landroid/widget/TextView;

.field public final wodArrowIcon:Landroid/widget/ImageView;

.field public final wodHeaderContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final wodTitleView:Landroid/widget/TextView;

.field public final wodWordView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lfast/dic/dict/databinding/WordOfTheDayBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 47
    iput-object p2, p0, Lfast/dic/dict/databinding/WordOfTheDayBinding;->calendarIconView:Landroid/widget/ImageView;

    .line 48
    iput-object p3, p0, Lfast/dic/dict/databinding/WordOfTheDayBinding;->todayView:Landroid/widget/TextView;

    .line 49
    iput-object p4, p0, Lfast/dic/dict/databinding/WordOfTheDayBinding;->wodArrowIcon:Landroid/widget/ImageView;

    .line 50
    iput-object p5, p0, Lfast/dic/dict/databinding/WordOfTheDayBinding;->wodHeaderContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    iput-object p6, p0, Lfast/dic/dict/databinding/WordOfTheDayBinding;->wodTitleView:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lfast/dic/dict/databinding/WordOfTheDayBinding;->wodWordView:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/WordOfTheDayBinding;
    .locals 10

    .line 82
    sget v0, Lfast/dic/dict/R$id;->calendar_icon_view:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 88
    sget v0, Lfast/dic/dict/R$id;->today_view:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 94
    sget v0, Lfast/dic/dict/R$id;->wod_arrow_icon:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 100
    sget v0, Lfast/dic/dict/R$id;->wod_header_container:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    .line 106
    sget v0, Lfast/dic/dict/R$id;->wod_title_view:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 112
    sget v0, Lfast/dic/dict/R$id;->wod_word_view:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 118
    new-instance v2, Lfast/dic/dict/databinding/WordOfTheDayBinding;

    move-object v3, p0

    check-cast v3, Landroidx/cardview/widget/CardView;

    invoke-direct/range {v2 .. v9}, Lfast/dic/dict/databinding/WordOfTheDayBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v2

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/WordOfTheDayBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/WordOfTheDayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WordOfTheDayBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WordOfTheDayBinding;
    .locals 2

    .line 69
    sget v0, Lfast/dic/dict/R$layout;->word_of_the_day:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/WordOfTheDayBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/WordOfTheDayBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lfast/dic/dict/databinding/WordOfTheDayBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 0

    .line 58
    iget-object p0, p0, Lfast/dic/dict/databinding/WordOfTheDayBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object p0
.end method
