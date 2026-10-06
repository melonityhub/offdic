.class public final Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "WodMonthHistoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$DiffCallback;,
        Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lfast/dic/dict/models/WodHistoryMonthDto;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002 !B\r\u0008\u0007\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001bH\u0016J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001bH\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\t\"\u0004\u0008\n\u0010\u000bR5\u0010\u000c\u001a\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\""
    }
    d2 = {
        "Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/models/WodHistoryMonthDto;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "isPersianLanguage",
        "",
        "()Z",
        "setPersianLanguage",
        "(Z)V",
        "onItemClick",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "word",
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
        "getItemViewType",
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
.field private isPersianLanguage:Z

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

    .line 13
    new-instance v0, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$DiffCallback;

    invoke-direct {v0}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 16
    new-instance v0, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method static final onItemClick$lambda$0(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/models/WodHistoryMonthDto;

    invoke-virtual {p0}, Lfast/dic/dict/models/WodHistoryMonthDto;->getWord()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

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

    .line 16
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final isPersianLanguage()Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->isPersianLanguage:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p1, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$ViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "getItem(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfast/dic/dict/models/WodHistoryMonthDto;

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$ViewHolder;->setBind(Lfast/dic/dict/models/WodHistoryMonthDto;)V

    return-void

    .line 34
    :cond_0
    instance-of v0, p1, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;

    if-eqz v0, :cond_1

    .line 35
    check-cast p1, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/models/WodHistoryMonthDto;

    invoke-virtual {p0}, Lfast/dic/dict/models/WodHistoryMonthDto;->getMonth()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;->setBind(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 19
    const-string v1, "inflate(...)"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 21
    invoke-static {p0, p1, v2}, Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance p1, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;

    invoke-direct {p1, p0}, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;-><init>(Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 26
    invoke-static {p2, p1, v2}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p2, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$ViewHolder;-><init>(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

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

    .line 16
    iput-object p1, p0, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setPersianLanguage(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->isPersianLanguage:Z

    return-void
.end method
