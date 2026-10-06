.class public final Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;
.super Ljava/lang/Object;
.source "WordOfTheDayWidgetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final calendarIconView:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final todayView:Landroid/widget/TextView;

.field public final todayViewCenter:Landroid/widget/TextView;

.field public final wodContainer:Landroid/widget/RelativeLayout;

.field public final wodHeaderContainer:Landroid/widget/RelativeLayout;

.field public final wodMeaningsView:Landroid/widget/TextView;

.field public final wodTitleView:Landroid/widget/TextView;

.field public final wodWordContainer:Landroid/widget/RelativeLayout;

.field public final wodWordView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 57
    iput-object p2, p0, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->calendarIconView:Landroid/widget/ImageView;

    .line 58
    iput-object p3, p0, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->todayView:Landroid/widget/TextView;

    .line 59
    iput-object p4, p0, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->todayViewCenter:Landroid/widget/TextView;

    .line 60
    iput-object p5, p0, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->wodContainer:Landroid/widget/RelativeLayout;

    .line 61
    iput-object p6, p0, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->wodHeaderContainer:Landroid/widget/RelativeLayout;

    .line 62
    iput-object p7, p0, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->wodMeaningsView:Landroid/widget/TextView;

    .line 63
    iput-object p8, p0, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->wodTitleView:Landroid/widget/TextView;

    .line 64
    iput-object p9, p0, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->wodWordContainer:Landroid/widget/RelativeLayout;

    .line 65
    iput-object p10, p0, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->wodWordView:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;
    .locals 13

    .line 95
    sget v0, Lfast/dic/dict/R$id;->calendar_icon_view:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 101
    sget v0, Lfast/dic/dict/R$id;->today_view:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 107
    sget v0, Lfast/dic/dict/R$id;->today_view_center:I

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
    sget v0, Lfast/dic/dict/R$id;->wod_header_container:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    .line 121
    sget v0, Lfast/dic/dict/R$id;->wod_meanings_view:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 127
    sget v0, Lfast/dic/dict/R$id;->wod_title_view:I

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 133
    sget v0, Lfast/dic/dict/R$id;->wod_word_container:I

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    .line 139
    sget v0, Lfast/dic/dict/R$id;->wod_word_view:I

    .line 140
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 145
    new-instance v2, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;

    move-object v7, v3

    invoke-direct/range {v2 .. v12}, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    return-object v2

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;
    .locals 2

    .line 82
    sget v0, Lfast/dic/dict/R$layout;->word_of_the_day_widget:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lfast/dic/dict/databinding/WordOfTheDayWidgetBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
