.class public final Lfast/dic/dict/adapters/LanguageLayoutViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LanguageLayoutAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0013J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lfast/dic/dict/adapters/LanguageLayoutViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "view",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "selectedImage",
        "Landroid/widget/ImageView;",
        "subtitleLabel",
        "Landroid/widget/TextView;",
        "languageLabel",
        "cardView",
        "Lcom/google/android/material/card/MaterialCardView;",
        "selected",
        "",
        "select",
        "",
        "setTitle",
        "title",
        "",
        "setSubtitle",
        "subtitle",
        "setOnSelectedListener",
        "listener",
        "Landroid/view/View$OnClickListener;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cardView:Lcom/google/android/material/card/MaterialCardView;

.field private final languageLabel:Landroid/widget/TextView;

.field private final selectedImage:Landroid/widget/ImageView;

.field private final subtitleLabel:Landroid/widget/TextView;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->view:Landroid/view/View;

    .line 16
    sget v0, Lfast/dic/dict/R$id;->selection_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->selectedImage:Landroid/widget/ImageView;

    .line 17
    sget v0, Lfast/dic/dict/R$id;->language_subtitle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->subtitleLabel:Landroid/widget/TextView;

    .line 18
    sget v0, Lfast/dic/dict/R$id;->language_title_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->languageLabel:Landroid/widget/TextView;

    .line 19
    sget v0, Lfast/dic/dict/R$id;->row_container_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    iput-object p1, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->cardView:Lcom/google/android/material/card/MaterialCardView;

    return-void
.end method


# virtual methods
.method public final selected(Z)V
    .locals 8

    .line 27
    iget-object v0, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->cardView:Lcom/google/android/material/card/MaterialCardView;

    .line 22
    const-string v1, "getContext(...)"

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 24
    iget-object p1, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->selectedImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->cardView:Lcom/google/android/material/card/MaterialCardView;

    iget-object p0, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lfast/dic/dict/R$attr;->tableViewSelectedBackground:I

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 28
    iget-object p1, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->selectedImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->cardView:Lcom/google/android/material/card/MaterialCardView;

    iget-object p0, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lfast/dic/dict/R$attr;->tableViewBorder:I

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    return-void
.end method

.method public final setOnSelectedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "subtitle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->subtitleLabel:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->languageLabel:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
