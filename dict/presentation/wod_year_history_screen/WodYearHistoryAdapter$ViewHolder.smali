.class public final Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WodYearHistoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;)V",
        "setBind",
        "",
        "model",
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
.field private final binding:Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;

    .line 30
    new-instance v0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;->getOnItemClick()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    iget-object p1, p1, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;->getYear()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setBind(Ljava/lang/String;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;->setYear(Ljava/lang/String;)V

    return-void
.end method
