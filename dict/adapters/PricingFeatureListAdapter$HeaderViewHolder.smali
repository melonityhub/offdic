.class public final Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PricingFeatureListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/adapters/PricingFeatureListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeaderViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/adapters/PricingFeatureListAdapter;Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;)V",
        "setTable",
        "",
        "feature",
        "Lfast/dic/dict/models/Feature;",
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
.field private final binding:Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/adapters/PricingFeatureListAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/adapters/PricingFeatureListAdapter;Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;->this$0:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;->binding:Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public final setTable(Lfast/dic/dict/models/Feature;)V
    .locals 1

    const-string v0, "feature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;->binding:Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/models/Feature;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;->setTitle(Ljava/lang/String;)V

    return-void
.end method
