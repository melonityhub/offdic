.class public final Lfast/dic/dict/adapters/MoreAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "MoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;,
        Lfast/dic/dict/adapters/MoreAdapter$DiffCallback;,
        Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;,
        Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;,
        Lfast/dic/dict/adapters/MoreAdapter$ViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lfast/dic/dict/adapters/MoreRowModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0005 !\"#$B\r\u0008\u0007\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000cH\u0016J\u0018\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u0010\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0016RJ\u0010\u0007\u001a2\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u000e0\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006%"
    }
    d2 = {
        "Lfast/dic/dict/adapters/MoreAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/adapters/MoreRowModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "onItemClickListener",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "item",
        "",
        "position",
        "",
        "getOnItemClickListener",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnItemClickListener",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onSubscriptionClickListener",
        "Lkotlin/Function0;",
        "getOnSubscriptionClickListener",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnSubscriptionClickListener",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "getItemViewType",
        "ViewHolder",
        "SubscriptionsViewHolder",
        "CopyrightViewHolder",
        "ViewType",
        "DiffCallback",
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
.field private onItemClickListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/adapters/MoreRowModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSubscriptionClickListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 14
    new-instance v0, Lfast/dic/dict/adapters/MoreAdapter$DiffCallback;

    invoke-direct {v0}, Lfast/dic/dict/adapters/MoreAdapter$DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 16
    new-instance v0, Lfast/dic/dict/adapters/MoreAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/adapters/MoreAdapter$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/adapters/MoreAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function2;

    .line 17
    new-instance v0, Lfast/dic/dict/adapters/MoreAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lfast/dic/dict/adapters/MoreAdapter$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/adapters/MoreAdapter;->onSubscriptionClickListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method static final onItemClickListener$lambda$0(Lfast/dic/dict/adapters/MoreRowModel;I)Lkotlin/Unit;
    .locals 0

    const-string p1, "<unused var>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onSubscriptionClickListener$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2

    .line 49
    invoke-virtual {p0, p1}, Lfast/dic/dict/adapters/MoreAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/adapters/MoreRowModel;

    invoke-virtual {v0}, Lfast/dic/dict/adapters/MoreRowModel;->getType()Lfast/dic/dict/adapters/MoreRowEnum;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/adapters/MoreRowEnum;->SUBSCRIPTIONS:Lfast/dic/dict/adapters/MoreRowEnum;

    if-ne v0, v1, :cond_0

    .line 50
    sget-object p0, Lfast/dic/dict/adapters/MoreAdapter$ViewType;->SUB:Lfast/dic/dict/adapters/MoreAdapter$ViewType;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/MoreAdapter$ViewType;->getValue()I

    move-result p0

    return p0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/adapters/MoreAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/adapters/MoreRowModel;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/MoreRowModel;->getType()Lfast/dic/dict/adapters/MoreRowEnum;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/adapters/MoreRowEnum;->VERSION:Lfast/dic/dict/adapters/MoreRowEnum;

    if-ne p0, p1, :cond_1

    .line 53
    sget-object p0, Lfast/dic/dict/adapters/MoreAdapter$ViewType;->VERSION:Lfast/dic/dict/adapters/MoreAdapter$ViewType;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/MoreAdapter$ViewType;->getValue()I

    move-result p0

    return p0

    .line 55
    :cond_1
    sget-object p0, Lfast/dic/dict/adapters/MoreAdapter$ViewType;->MORE:Lfast/dic/dict/adapters/MoreAdapter$ViewType;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/MoreAdapter$ViewType;->getValue()I

    move-result p0

    return p0
.end method

.method public final getOnItemClickListener()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lfast/dic/dict/adapters/MoreRowModel;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object p0, p0, Lfast/dic/dict/adapters/MoreAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnSubscriptionClickListener()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lfast/dic/dict/adapters/MoreAdapter;->onSubscriptionClickListener:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p2}, Lfast/dic/dict/adapters/MoreAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/adapters/MoreRowModel;

    .line 39
    instance-of p2, p1, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;

    if-eqz p2, :cond_0

    .line 40
    check-cast p1, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;->setBind(Lfast/dic/dict/adapters/MoreRowModel;)V

    return-void

    .line 41
    :cond_0
    instance-of p2, p1, Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;

    if-eqz p2, :cond_1

    .line 42
    check-cast p1, Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/MoreRowModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;->setData(Ljava/lang/String;)V

    return-void

    .line 43
    :cond_1
    instance-of p2, p1, Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;

    if-eqz p2, :cond_2

    .line 44
    check-cast p1, Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;->setBind(Lfast/dic/dict/adapters/MoreRowModel;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 21
    sget-object v1, Lfast/dic/dict/adapters/MoreAdapter$ViewType;->SUB:Lfast/dic/dict/adapters/MoreAdapter$ViewType;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/MoreAdapter$ViewType;->getValue()I

    move-result v1

    const-string v2, "inflate(...)"

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    .line 22
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance p2, Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;-><init>(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 26
    :cond_0
    sget-object v1, Lfast/dic/dict/adapters/MoreAdapter$ViewType;->VERSION:Lfast/dic/dict/adapters/MoreAdapter$ViewType;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/MoreAdapter$ViewType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 27
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance p2, Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;-><init>(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 32
    :cond_1
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/MoreRowLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/MoreRowLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p2, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;-><init>(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/MoreRowLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method

.method public final setOnItemClickListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/adapters/MoreRowModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lfast/dic/dict/adapters/MoreAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnSubscriptionClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lfast/dic/dict/adapters/MoreAdapter;->onSubscriptionClickListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method
