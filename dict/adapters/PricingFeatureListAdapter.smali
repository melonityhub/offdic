.class public final Lfast/dic/dict/adapters/PricingFeatureListAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "PricingFeatureListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/adapters/PricingFeatureListAdapter$DiffCallBack;,
        Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;,
        Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lfast/dic/dict/models/Feature;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003\u0014\u0015\u0016B\u0011\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lfast/dic/dict/adapters/PricingFeatureListAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/models/Feature;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "planNumber",
        "",
        "<init>",
        "(I)V",
        "getPlanNumber",
        "()I",
        "setPlanNumber",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "getItemViewType",
        "HeaderViewHolder",
        "ViewHolder",
        "DiffCallBack",
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
.field private planNumber:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 13
    new-instance v0, Lfast/dic/dict/adapters/PricingFeatureListAdapter$DiffCallBack;

    invoke-direct {v0}, Lfast/dic/dict/adapters/PricingFeatureListAdapter$DiffCallBack;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput p1, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->planNumber:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 13
    :cond_0
    invoke-direct {p0, p1}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/models/Feature;

    invoke-virtual {p0}, Lfast/dic/dict/models/Feature;->isHeader()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getPlanNumber()I
    .locals 0

    .line 13
    iget p0, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->planNumber:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p1, Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;

    const-string v1, "getItem(...)"

    if-eqz v0, :cond_0

    .line 28
    check-cast p1, Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfast/dic/dict/models/Feature;

    invoke-virtual {p1, p0}, Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;->setTable(Lfast/dic/dict/models/Feature;)V

    return-void

    .line 29
    :cond_0
    instance-of v0, p1, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;

    if-eqz v0, :cond_1

    .line 30
    check-cast p1, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfast/dic/dict/models/Feature;

    invoke-virtual {p1, p0}, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;->setTable(Lfast/dic/dict/models/Feature;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 17
    const-string v1, "inflate(...)"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 18
    invoke-static {v0, p1, v2}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance p2, Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;-><init>(Lfast/dic/dict/adapters/PricingFeatureListAdapter;Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 22
    :cond_0
    invoke-static {v0, p1, v2}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p2, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;-><init>(Lfast/dic/dict/adapters/PricingFeatureListAdapter;Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method

.method public final setPlanNumber(I)V
    .locals 0

    .line 13
    iput p1, p0, Lfast/dic/dict/adapters/PricingFeatureListAdapter;->planNumber:I

    return-void
.end method
