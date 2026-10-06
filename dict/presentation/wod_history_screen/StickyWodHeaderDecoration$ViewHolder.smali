.class public final Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StickyHeaderDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;)V",
        "setBind",
        "",
        "date",
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
.field private final binding:Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;


# direct methods
.method public constructor <init>(Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;->binding:Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public final setBind(Ljava/lang/String;)V
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;->binding:Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;

    invoke-virtual {v0, p1}, Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;->setDate(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;->binding:Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;

    iget-object v0, v0, Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;->wordTitle:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;->itemView:Landroid/view/View;

    const-string p1, "header"

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
