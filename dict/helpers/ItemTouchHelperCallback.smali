.class public final Lfast/dic/dict/helpers/ItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "ItemTouchHelperCallback.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J \u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0013H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u000fH\u0016J\u001a\u0010\u001a\u001a\u00020\u00182\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001b\u001a\u00020\u000fH\u0016J\u0018\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lfast/dic/dict/helpers/ItemTouchHelperCallback;",
        "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;",
        "adapter",
        "Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;",
        "enableEditing",
        "",
        "changeAllPositions",
        "disableSelection",
        "disableSlideAnimation",
        "<init>",
        "(Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;ZZZZ)V",
        "mAdapter",
        "isLongPressDragEnabled",
        "isItemViewSwipeEnabled",
        "getMovementFlags",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onMove",
        "source",
        "target",
        "onSwiped",
        "",
        "i",
        "onSelectedChanged",
        "actionState",
        "clearView",
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
.field private final changeAllPositions:Z

.field private final disableSelection:Z

.field private final disableSlideAnimation:Z

.field private final enableEditing:Z

.field private final mAdapter:Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;ZZZZ)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 21
    iput-boolean p2, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->enableEditing:Z

    .line 22
    iput-boolean p3, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->changeAllPositions:Z

    .line 23
    iput-boolean p4, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->disableSelection:Z

    .line 24
    iput-boolean p5, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->disableSlideAnimation:Z

    .line 27
    iput-object p1, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->mAdapter:Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;

    return-void
.end method

.method public synthetic constructor <init>(Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_2

    move p4, v0

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    move p5, v0

    .line 19
    :cond_3
    invoke-direct/range {p0 .. p5}, Lfast/dic/dict/helpers/ItemTouchHelperCallback;-><init>(Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;ZZZZ)V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 87
    instance-of p0, p2, Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;

    if-eqz p0, :cond_0

    check-cast p2, Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 88
    invoke-interface {p2}, Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;->onItemClear()V

    :cond_1
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-boolean p1, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->enableEditing:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 46
    :cond_0
    iget-boolean p0, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->disableSlideAnimation:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x30

    :goto_0
    const/4 p0, 0x3

    .line 48
    invoke-static {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->enableEditing:Z

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->enableEditing:Z

    return p0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-boolean p1, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->changeAllPositions:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 59
    :cond_1
    iget-object p0, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->mAdapter:Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;->onItemMove(II)V

    return v0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->disableSelection:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 79
    instance-of v0, p1, Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0}, Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;->onItemSelected()V

    .line 82
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string/jumbo p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-boolean p2, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->disableSlideAnimation:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_1

    .line 70
    iget-object p2, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->mAdapter:Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;

    invoke-interface {p2, p1}, Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;->onItemDismiss(I)V

    .line 72
    iget-object p0, p0, Lfast/dic/dict/helpers/ItemTouchHelperCallback;->mAdapter:Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;

    invoke-interface {p0, p1}, Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;->onSwiped(I)V

    :cond_1
    :goto_0
    return-void
.end method
