.class public Lfast/dic/dict/utils/RecyclerItemClickListener;
.super Ljava/lang/Object;
.source "RecyclerItemClickListener.kt"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0010H\u0016J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\rH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lfast/dic/dict/utils/RecyclerItemClickListener;",
        "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
        "context",
        "Landroid/content/Context;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "mListener",
        "Lfast/dic/dict/utils/OnItemClickListener;",
        "<init>",
        "(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lfast/dic/dict/utils/OnItemClickListener;)V",
        "mGestureDetector",
        "Landroid/view/GestureDetector;",
        "onInterceptTouchEvent",
        "",
        "view",
        "e",
        "Landroid/view/MotionEvent;",
        "onTouchEvent",
        "",
        "motionEvent",
        "onRequestDisallowInterceptTouchEvent",
        "disallowIntercept",
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
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mListener:Lfast/dic/dict/utils/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lfast/dic/dict/utils/OnItemClickListener;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p3, p0, Lfast/dic/dict/utils/RecyclerItemClickListener;->mListener:Lfast/dic/dict/utils/OnItemClickListener;

    .line 22
    new-instance p3, Landroid/view/GestureDetector;

    new-instance v0, Lfast/dic/dict/utils/RecyclerItemClickListener$mGestureDetector$1;

    invoke-direct {v0, p2, p0}, Lfast/dic/dict/utils/RecyclerItemClickListener$mGestureDetector$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lfast/dic/dict/utils/RecyclerItemClickListener;)V

    check-cast v0, Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lfast/dic/dict/utils/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static final synthetic access$getMListener$p(Lfast/dic/dict/utils/RecyclerItemClickListener;)Lfast/dic/dict/utils/OnItemClickListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lfast/dic/dict/utils/RecyclerItemClickListener;->mListener:Lfast/dic/dict/utils/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lfast/dic/dict/utils/RecyclerItemClickListener;->mListener:Lfast/dic/dict/utils/OnItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfast/dic/dict/utils/RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 39
    iget-object p0, p0, Lfast/dic/dict/utils/RecyclerItemClickListener;->mListener:Lfast/dic/dict/utils/OnItemClickListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lfast/dic/dict/utils/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "motionEvent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
