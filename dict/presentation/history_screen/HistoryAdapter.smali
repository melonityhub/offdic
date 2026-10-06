.class public final Lfast/dic/dict/presentation/history_screen/HistoryAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "HistoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/history_screen/HistoryAdapter$DiffCallback;,
        Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;,
        Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryLastItemViewHolder;,
        Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;,
        Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lfast/dic/dict/models/database/ListModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0005\u0017\u0018\u0019\u001a\u001bB\r\u0008\u0007\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\tH\u0016J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\tH\u0016R.\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lfast/dic/dict/presentation/history_screen/HistoryAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/models/database/ListModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "onSelectedAction",
        "Lkotlin/Function2;",
        "",
        "",
        "getOnSelectedAction",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnSelectedAction",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "position",
        "getItemViewType",
        "EnViewHolder",
        "PeViewHolder",
        "HistoryLastItemViewHolder",
        "DiffCallback",
        "HistoryViewType",
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
.field private onSelectedAction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/ListModel;",
            "-",
            "Ljava/lang/Integer;",
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

    .line 20
    new-instance v0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$DiffCallback;

    invoke-direct {v0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method static final onBindViewHolder$lambda$0(Lfast/dic/dict/presentation/history_screen/HistoryAdapter;Lfast/dic/dict/models/database/ListModel;I)Lkotlin/Unit;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onBindViewHolder$lambda$1(Lfast/dic/dict/presentation/history_screen/HistoryAdapter;Lfast/dic/dict/models/database/ListModel;I)Lkotlin/Unit;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 56
    sget-object p0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;->BANNER:Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;->getValue()I

    move-result p0

    return p0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p0}, Lfast/dic/dict/models/database/ListModel;->getCategory()Ljava/lang/Integer;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/utils/Category;->English:Lfast/dic/dict/utils/Category;

    invoke-virtual {p1}, Lfast/dic/dict/utils/Category;->getRawValue()I

    move-result p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_2

    .line 59
    sget-object p0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;->EN_ROW:Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;->getValue()I

    move-result p0

    return p0

    .line 61
    :cond_2
    :goto_0
    sget-object p0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;->PE_ROW:Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;->getValue()I

    move-result p0

    return p0
.end method

.method public final getOnSelectedAction()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lfast/dic/dict/models/database/ListModel;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    instance-of v0, p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;

    const-string v1, "getItem(...)"

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;

    new-instance v0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/history_screen/HistoryAdapter;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;->setOnSelectedListener(Lkotlin/jvm/functions/Function2;)V

    .line 45
    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;->setBind(Lfast/dic/dict/models/database/ListModel;)V

    return-void

    .line 46
    :cond_0
    instance-of v0, p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;

    if-eqz v0, :cond_1

    .line 47
    check-cast p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;

    new-instance v0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/history_screen/HistoryAdapter;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;->setOnSelectedListener(Lkotlin/jvm/functions/Function2;)V

    .line 50
    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;->setBind(Lfast/dic/dict/models/database/ListModel;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 26
    sget-object v0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;->EN_ROW:Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;->getValue()I

    move-result v0

    const-string v1, "inflate(...)"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 27
    invoke-static {p0, p1, v2}, Lfast/dic/dict/databinding/HistoryEnItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/HistoryEnItemLayoutBinding;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;

    invoke-direct {p1, p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;-><init>(Lfast/dic/dict/databinding/HistoryEnItemLayoutBinding;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1

    .line 31
    :cond_0
    sget-object v0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;->PE_ROW:Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 32
    invoke-static {p0, p1, v2}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;

    invoke-direct {p1, p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;-><init>(Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1

    .line 37
    :cond_1
    new-instance p2, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryLastItemViewHolder;

    invoke-static {p0, p1, v2}, Lfast/dic/dict/databinding/LastItemHisotryLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/LastItemHisotryLayoutBinding;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryLastItemViewHolder;-><init>(Lfast/dic/dict/databinding/LastItemHisotryLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method

.method public final setOnSelectedAction(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/ListModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    return-void
.end method
