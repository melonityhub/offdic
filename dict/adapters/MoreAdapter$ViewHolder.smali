.class public final Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/adapters/MoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/MoreRowLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/MoreRowLayoutBinding;)V",
        "model",
        "Lfast/dic/dict/adapters/MoreRowModel;",
        "getModel",
        "()Lfast/dic/dict/adapters/MoreRowModel;",
        "setModel",
        "(Lfast/dic/dict/adapters/MoreRowModel;)V",
        "setBind",
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
.field private final binding:Lfast/dic/dict/databinding/MoreRowLayoutBinding;

.field public model:Lfast/dic/dict/adapters/MoreRowModel;

.field final synthetic this$0:Lfast/dic/dict/adapters/MoreAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/MoreRowLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;->this$0:Lfast/dic/dict/adapters/MoreAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/MoreRowLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/MoreRowLayoutBinding;

    .line 62
    new-instance v0, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Lfast/dic/dict/databinding/MoreRowLayoutBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lfast/dic/dict/adapters/MoreAdapter;->getOnItemClickListener()Lkotlin/jvm/functions/Function2;

    move-result-object p0

    invoke-virtual {p1}, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;->getModel()Lfast/dic/dict/adapters/MoreRowModel;

    move-result-object p2

    invoke-virtual {p1}, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getModel()Lfast/dic/dict/adapters/MoreRowModel;
    .locals 0

    .line 60
    iget-object p0, p0, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;->model:Lfast/dic/dict/adapters/MoreRowModel;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "model"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setBind(Lfast/dic/dict/adapters/MoreRowModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;->setModel(Lfast/dic/dict/adapters/MoreRowModel;)V

    .line 68
    iget-object p0, p0, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/MoreRowLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/adapters/MoreRowModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/MoreRowLayoutBinding;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final setModel(Lfast/dic/dict/adapters/MoreRowModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;->model:Lfast/dic/dict/adapters/MoreRowModel;

    return-void
.end method
