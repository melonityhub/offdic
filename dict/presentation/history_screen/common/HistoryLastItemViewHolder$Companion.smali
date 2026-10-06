.class public final Lfast/dic/dict/presentation/history_screen/common/HistoryLastItemViewHolder$Companion;
.super Ljava/lang/Object;
.source "HistoryLastItemViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/history_screen/common/HistoryLastItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lfast/dic/dict/presentation/history_screen/common/HistoryLastItemViewHolder$Companion;",
        "",
        "<init>",
        "()V",
        "build",
        "Lfast/dic/dict/presentation/history_screen/common/HistoryLastItemViewHolder;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/presentation/history_screen/common/HistoryLastItemViewHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Landroid/view/ViewGroup;)Lfast/dic/dict/presentation/history_screen/common/HistoryLastItemViewHolder;
    .locals 1

    const-string/jumbo p0, "viewGroup"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0}, Lfast/dic/dict/databinding/LastItemHisotryLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/LastItemHisotryLayoutBinding;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p1, Lfast/dic/dict/presentation/history_screen/common/HistoryLastItemViewHolder;

    invoke-direct {p1, p0}, Lfast/dic/dict/presentation/history_screen/common/HistoryLastItemViewHolder;-><init>(Lfast/dic/dict/databinding/LastItemHisotryLayoutBinding;)V

    return-object p1
.end method
