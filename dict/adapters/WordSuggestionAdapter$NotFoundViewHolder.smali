.class public final Lfast/dic/dict/adapters/WordSuggestionAdapter$NotFoundViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WordSuggestionListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/adapters/WordSuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NotFoundViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lfast/dic/dict/adapters/WordSuggestionAdapter$NotFoundViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/NotFoundItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/NotFoundItemLayoutBinding;)V",
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
.field final synthetic this$0:Lfast/dic/dict/adapters/WordSuggestionAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/NotFoundItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$NotFoundViewHolder;->this$0:Lfast/dic/dict/adapters/WordSuggestionAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/NotFoundItemLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
