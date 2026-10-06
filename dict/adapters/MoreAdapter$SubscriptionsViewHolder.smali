.class public final Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/adapters/MoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubscriptionsViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;)V",
        "setBind",
        "",
        "model",
        "Lfast/dic/dict/adapters/MoreRowModel;",
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
.field private final binding:Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/adapters/MoreAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;->this$0:Lfast/dic/dict/adapters/MoreAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;->binding:Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;

    .line 75
    new-instance p0, Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/adapters/MoreAdapter;)V

    invoke-virtual {p2, p0}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->setOnSubscriptionClick(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/adapters/MoreAdapter;Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lfast/dic/dict/adapters/MoreAdapter;->getOnSubscriptionClickListener()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setBind(Lfast/dic/dict/adapters/MoreRowModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;->binding:Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->setModel(Lfast/dic/dict/adapters/MoreRowModel;)V

    return-void
.end method
