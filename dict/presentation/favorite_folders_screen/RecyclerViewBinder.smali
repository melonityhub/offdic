.class public final Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder;
.super Ljava/lang/Object;
.source "RecyclerViewBinder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JG\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\u00100\u000b2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder;",
        "",
        "<init>",
        "()V",
        "bind",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "context",
        "Landroid/content/Context;",
        "onSwiped",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "position",
        "",
        "onLoadMore",
        "Lkotlin/Function0;",
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


# static fields
.field public static final INSTANCE:Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder;

    invoke-direct {v0}, Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder;-><init>()V

    sput-object v0, Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder;->INSTANCE:Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/recyclerview/widget/ItemTouchHelper;"
        }
    .end annotation

    const-string p0, "recyclerView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onSwiped"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onLoadMore"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lfast/dic/dict/utils/ViewExtKt;->addDivider(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p0, 0x1

    .line 26
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 28
    new-instance p0, Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder$bind$swipeCallback$1;

    invoke-direct {p0, p2, p3}, Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder$bind$swipeCallback$1;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 37
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    check-cast p0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 38
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 40
    new-instance p0, Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder$bind$1;

    invoke-direct {p0, p4}, Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder$bind$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-object p2
.end method
