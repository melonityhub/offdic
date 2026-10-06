.class public final Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "WodYearHistoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$DiffCallback;,
        Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Ljava/lang/String;",
        "Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0019\u001aB\r\u0008\u0007\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\u0011\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001c\u0010\u0016\u001a\u00020\u000c2\n\u0010\u0017\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0015H\u0016R5\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c0\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "",
        "Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "onItemClick",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "year",
        "",
        "getOnItemClick",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnItemClick",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "ViewHolder",
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
.field private onItemClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
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

    .line 12
    new-instance v0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$DiffCallback;

    invoke-direct {v0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 11
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 15
    new-instance v0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method static final onItemClick$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getOnItemClick()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 11
    check-cast p1, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;->onBindViewHolder(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "getItem(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;->setBind(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 18
    invoke-static {p2, p1, v0}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p2, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;-><init>(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;)V

    return-object p2
.end method

.method public final setOnItemClick(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method
