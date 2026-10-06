.class public final Lfast/dic/dict/views/WordOfTheDayView;
.super Landroidx/cardview/widget/CardView;
.source "WordOfTheDayView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWordOfTheDayView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WordOfTheDayView.kt\nfast/dic/dict/views/WordOfTheDayView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,56:1\n340#2:57\n358#2:58\n367#2:59\n*S KotlinDebug\n*F\n+ 1 WordOfTheDayView.kt\nfast/dic/dict/views/WordOfTheDayView\n*L\n50#1:57\n52#1:58\n53#1:59\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0011J)\u0010\u0014\u001a\u00020\u000f2!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u00020\u000f0\u0016J\u000e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lfast/dic/dict/views/WordOfTheDayView;",
        "Landroidx/cardview/widget/CardView;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "binding",
        "Lfast/dic/dict/databinding/WordOfTheDayBinding;",
        "setDate",
        "",
        "date",
        "",
        "setTodayWord",
        "word",
        "setOnClick",
        "clicked",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "verticallyCenter",
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
.field private final binding:Lfast/dic/dict/databinding/WordOfTheDayBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0}, Lfast/dic/dict/views/WordOfTheDayView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lfast/dic/dict/databinding/WordOfTheDayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WordOfTheDayBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/views/WordOfTheDayView;->binding:Lfast/dic/dict/databinding/WordOfTheDayBinding;

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lfast/dic/dict/views/WordOfTheDayView;->setBackgroundColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p0}, Lfast/dic/dict/views/WordOfTheDayView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lfast/dic/dict/databinding/WordOfTheDayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WordOfTheDayBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/views/WordOfTheDayView;->binding:Lfast/dic/dict/databinding/WordOfTheDayBinding;

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lfast/dic/dict/views/WordOfTheDayView;->setBackgroundColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-virtual {p0}, Lfast/dic/dict/views/WordOfTheDayView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/WordOfTheDayBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WordOfTheDayBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/views/WordOfTheDayView;->binding:Lfast/dic/dict/databinding/WordOfTheDayBinding;

    const/4 p1, 0x0

    .line 28
    invoke-virtual {p0, p1}, Lfast/dic/dict/views/WordOfTheDayView;->setBackgroundColor(I)V

    return-void
.end method

.method static final setOnClick$lambda$0(Lkotlin/jvm/functions/Function1;Lfast/dic/dict/views/WordOfTheDayView;Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p1, Lfast/dic/dict/views/WordOfTheDayView;->binding:Lfast/dic/dict/databinding/WordOfTheDayBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/WordOfTheDayBinding;->wodWordView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setDate(Ljava/lang/String;)V
    .locals 0

    .line 32
    iget-object p0, p0, Lfast/dic/dict/views/WordOfTheDayView;->binding:Lfast/dic/dict/databinding/WordOfTheDayBinding;

    iget-object p0, p0, Lfast/dic/dict/databinding/WordOfTheDayBinding;->todayView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setOnClick(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clicked"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lfast/dic/dict/views/WordOfTheDayView;->binding:Lfast/dic/dict/databinding/WordOfTheDayBinding;

    invoke-virtual {v0}, Lfast/dic/dict/databinding/WordOfTheDayBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/views/WordOfTheDayView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lfast/dic/dict/views/WordOfTheDayView$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lfast/dic/dict/views/WordOfTheDayView;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setTodayWord(Ljava/lang/String;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lfast/dic/dict/views/WordOfTheDayView;->binding:Lfast/dic/dict/databinding/WordOfTheDayBinding;

    iget-object p0, p0, Lfast/dic/dict/databinding/WordOfTheDayBinding;->wodWordView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final verticallyCenter(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Lfast/dic/dict/utils/ContextExtKt;->getWindowHalfHeight(Landroid/content/Context;)I

    move-result p1

    .line 47
    invoke-virtual {p0}, Lfast/dic/dict/views/WordOfTheDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfast/dic/dict/R$dimen;->wod_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 49
    check-cast p0, Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x32

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_3
    move v0, v2

    .line 59
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_4

    move-object v3, v4

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_4
    if-eqz v3, :cond_5

    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 49
    :cond_5
    invoke-static {p0, v1, p1, v0, v2}, Lfast/dic/dict/utils/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    return-void
.end method
