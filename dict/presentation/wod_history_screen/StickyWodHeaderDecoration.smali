.class public final Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "StickyHeaderDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickyHeaderDecoration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickyHeaderDecoration.kt\nfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n1#2:116\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001!B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\tH\u0002J\u0018\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0013H\u0002J \u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0013H\u0002J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\tH\u0002J\u0018\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "adapter",
        "Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;",
        "isCurrentLangPersian",
        "",
        "<init>",
        "(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;Z)V",
        "stickyHeaderHeight",
        "",
        "onDrawOver",
        "",
        "c",
        "Landroid/graphics/Canvas;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "getHeaderViewForItem",
        "Landroid/view/View;",
        "itemPosition",
        "getMonth",
        "",
        "drawHeader",
        "header",
        "moveHeader",
        "currentHeader",
        "nextHeader",
        "getChildInContact",
        "contactPoint",
        "fixLayoutSize",
        "Landroid/view/ViewGroup;",
        "view",
        "ViewHolder",
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
.field private final adapter:Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

.field private final isCurrentLangPersian:Z

.field private stickyHeaderHeight:I


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;Z)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 12
    iput-object p1, p0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;->adapter:Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    .line 13
    iput-boolean p2, p0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;->isCurrentLangPersian:Z

    const/16 p1, 0x50

    .line 16
    iput p1, p0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;->stickyHeaderHeight:I

    return-void
.end method

.method private final drawHeader(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 p0, 0x0

    .line 62
    invoke-virtual {p1, p0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final fixLayoutSize(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 96
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    invoke-static {v0, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 99
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    invoke-static {v1, v3, p1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    .line 102
    invoke-virtual {p2, v0, p1}, Landroid/view/View;->measure(II)V

    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;->stickyHeaderHeight:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, v2, v2, p1, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private final getChildInContact(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/view/View;
    .locals 3

    .line 75
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 76
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, p2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-gt v2, p2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getHeaderViewForItem(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 3

    .line 40
    new-instance v0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;

    .line 42
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 43
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 41
    invoke-static {v1, p2, v2}, Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;

    move-result-object p2

    const-string v1, "inflate(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {v0, p2}, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;-><init>(Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;)V

    .line 47
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;->getMonth(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;->setBind(Ljava/lang/String;)V

    .line 46
    iget-object p0, v0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;->itemView:Landroid/view/View;

    .line 41
    const-string p1, "itemView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getMonth(I)Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;->adapter:Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfast/dic/dict/models/WodHistoryMonthDto;

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lfast/dic/dict/models/WodHistoryMonthDto;->getWord()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-virtual {p1}, Lfast/dic/dict/models/WodHistoryMonthDto;->getMonth()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 56
    :cond_1
    invoke-virtual {p1}, Lfast/dic/dict/models/WodHistoryMonthDto;->getMonth()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-boolean p0, p0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;->isCurrentLangPersian:Z

    invoke-static {p1, p0}, Lfast/dic/dict/utils/IntExtKt;->getMonthName(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final moveHeader(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 69
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p0, p3

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p3, 0x0

    .line 21
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-direct {p0, p3, p2}, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;->getHeaderViewForItem(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p3

    .line 27
    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p3}, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;->fixLayoutSize(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 36
    invoke-direct {p0, p1, p3}, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;->drawHeader(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method
