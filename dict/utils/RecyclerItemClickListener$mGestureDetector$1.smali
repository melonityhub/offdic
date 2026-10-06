.class public final Lfast/dic/dict/utils/RecyclerItemClickListener$mGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RecyclerItemClickListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/utils/RecyclerItemClickListener;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lfast/dic/dict/utils/OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "fast/dic/dict/utils/RecyclerItemClickListener$mGestureDetector$1",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "onSingleTapUp",
        "",
        "e",
        "Landroid/view/MotionEvent;",
        "onLongPress",
        "",
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
.field final synthetic $recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lfast/dic/dict/utils/RecyclerItemClickListener;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lfast/dic/dict/utils/RecyclerItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/utils/RecyclerItemClickListener$mGestureDetector$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lfast/dic/dict/utils/RecyclerItemClickListener$mGestureDetector$1;->this$0:Lfast/dic/dict/utils/RecyclerItemClickListener;

    .line 22
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lfast/dic/dict/utils/RecyclerItemClickListener$mGestureDetector$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lfast/dic/dict/utils/RecyclerItemClickListener$mGestureDetector$1;->this$0:Lfast/dic/dict/utils/RecyclerItemClickListener;

    invoke-static {v0}, Lfast/dic/dict/utils/RecyclerItemClickListener;->access$getMListener$p(Lfast/dic/dict/utils/RecyclerItemClickListener;)Lfast/dic/dict/utils/OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lfast/dic/dict/utils/RecyclerItemClickListener$mGestureDetector$1;->this$0:Lfast/dic/dict/utils/RecyclerItemClickListener;

    invoke-static {v0}, Lfast/dic/dict/utils/RecyclerItemClickListener;->access$getMListener$p(Lfast/dic/dict/utils/RecyclerItemClickListener;)Lfast/dic/dict/utils/OnItemClickListener;

    move-result-object v0

    .line 31
    iget-object p0, p0, Lfast/dic/dict/utils/RecyclerItemClickListener$mGestureDetector$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    .line 30
    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/utils/OnItemClickListener;->onItemLongClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p0, "e"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
