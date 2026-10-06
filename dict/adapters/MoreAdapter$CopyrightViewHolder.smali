.class public final Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/adapters/MoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CopyrightViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;)V",
        "setData",
        "",
        "title",
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
.field private final binding:Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/adapters/MoreAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;->this$0:Lfast/dic/dict/adapters/MoreAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;->binding:Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;

    return-void
.end method


# virtual methods
.method public final setData(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;->binding:Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;->setTitle(Ljava/lang/String;)V

    return-void
.end method
