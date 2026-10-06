.class public final Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "ResultOrderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$Companion;,
        Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$DiffCallback;,
        Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Ljava/lang/String;",
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u0000 \u001b2\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0003\u0019\u001a\u001bB\r\u0008\u0007\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u000c\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001c\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0010H\u0016J\u0016\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0010J\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0010R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "",
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "isEnglishWord",
        "",
        "()Z",
        "setEnglishWord",
        "(Z)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "moveItem",
        "fromPosition",
        "toPosition",
        "removeItem",
        "ViewHolder",
        "DiffCallback",
        "Companion",
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
.field public static final Companion:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$Companion;


# instance fields
.field private isEnglishWord:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->Companion:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    new-instance v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$DiffCallback;

    invoke-direct {v0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->isEnglishWord:Z

    return-void
.end method


# virtual methods
.method public final isEnglishWord()Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->isEnglishWord:Z

    return p0
.end method

.method public final moveItem(II)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-ge p1, p2, :cond_0

    :goto_0
    if-ge p1, p2, :cond_1

    add-int/lit8 v1, p1, 0x1

    .line 35
    invoke-static {v0, p1, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move p1, v1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    if-gt p2, p1, :cond_1

    :goto_1
    add-int/lit8 v1, p1, -0x1

    .line 39
    invoke-static {v0, p1, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-eq p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0, v0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 14
    check-cast p1, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->onBindViewHolder(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getItem(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    .line 25
    invoke-virtual {p1, p0, p2}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;->setBind(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 19
    invoke-static {p2, p1, v0}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p2, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;-><init>(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;)V

    return-object p2
.end method

.method public final removeItem(I)V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0, v0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final setEnglishWord(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->isEnglishWord:Z

    return-void
.end method
