.class public final Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ResultOrderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;)V",
        "setBind",
        "",
        "title",
        "",
        "index",
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
.field private final binding:Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public final setBind(Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->setIndex(Ljava/lang/Integer;)V

    .line 55
    iget-object p2, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    iget-object v0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->isEnglishWord()Z

    move-result v0

    const-string v1, "getContext(...)"

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->Companion:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$Companion;

    iget-object p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    invoke-virtual {p0}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$Companion;->getOrderEnTitleFrom(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 58
    :cond_0
    sget-object v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->Companion:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$Companion;

    iget-object p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    invoke-virtual {p0}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$Companion;->getOrderPeTitleFrom(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 55
    :goto_0
    invoke-virtual {p2, p0}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->setTitle(Ljava/lang/String;)V

    return-void
.end method
