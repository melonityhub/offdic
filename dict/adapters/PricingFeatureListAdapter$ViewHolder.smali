.class public final Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PricingFeatureListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/adapters/PricingFeatureListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/adapters/PricingFeatureListAdapter;Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;)V",
        "setTable",
        "",
        "table",
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
.field private final binding:Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/adapters/PricingFeatureListAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/adapters/PricingFeatureListAdapter;Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->this$0:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public final setTable(Lfast/dic/dict/models/Feature;)V
    .locals 5

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/models/Feature;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->setFeatureTitle(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/models/Feature;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->setFeatureDescription(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    iget-object v1, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->this$0:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->getPlanNumber()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_1

    :goto_0
    sget v1, Lfast/dic/dict/R$color;->plan0:I

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->this$0:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->getPlanNumber()I

    move-result v1

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->this$0:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->getPlanNumber()I

    move-result v1

    if-ne v1, v3, :cond_3

    sget v1, Lfast/dic/dict/R$color;->plan2:I

    goto :goto_1

    :cond_3
    sget v1, Lfast/dic/dict/R$color;->plan3:I

    goto :goto_1

    :goto_2
    invoke-virtual {v0, v1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->setFeatureColor(Ljava/lang/Integer;)V

    .line 53
    iget-object v0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->this$0:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->getPlanNumber()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lfast/dic/dict/models/Feature;->getPlan0()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->this$0:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->getPlanNumber()I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-virtual {p1}, Lfast/dic/dict/models/Feature;->getPlan1()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->this$0:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->getPlanNumber()I

    move-result v0

    if-ne v0, v3, :cond_6

    invoke-virtual {p1}, Lfast/dic/dict/models/Feature;->getPlan2()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lfast/dic/dict/models/Feature;->getPlan3()Ljava/lang/Object;

    move-result-object p1

    .line 55
    :goto_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 56
    iget-object v0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    invoke-virtual {v0, v2}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->setFeatureStatusText(Ljava/lang/String;)V

    .line 57
    iget-object p0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    sget p1, Lfast/dic/dict/R$drawable;->ic_check:I

    goto :goto_4

    :cond_7
    sget p1, Lfast/dic/dict/R$drawable;->ic_close:I

    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->setFeatureStatusIcon(Ljava/lang/Integer;)V

    return-void

    .line 58
    :cond_8
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 59
    iget-object v0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->setFeatureStatusText(Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->setFeatureStatusIcon(Ljava/lang/Integer;)V

    :cond_9
    return-void
.end method
