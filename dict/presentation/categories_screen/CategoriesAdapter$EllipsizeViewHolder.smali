.class public final Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoriesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EllipsizeViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;)V",
        "setBind",
        "",
        "model",
        "Lfast/dic/dict/models/WordCategoryModel;",
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
.field private final binding:Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;->this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    .line 54
    invoke-virtual {p2}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;->binding:Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    .line 57
    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;)V

    invoke-virtual {p2, v0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->getOnItemClicked()Lkotlin/jvm/functions/Function2;

    move-result-object p0

    .line 59
    iget-object p2, p1, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;->binding:Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->getModel()Lfast/dic/dict/models/WordCategoryModel;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p1, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;->binding:Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->getLocked()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setBind(Lfast/dic/dict/models/WordCategoryModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;->binding:Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    invoke-virtual {v0, p1}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->setModel(Lfast/dic/dict/models/WordCategoryModel;)V

    .line 67
    iget-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;->binding:Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    iget-object v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;->this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->getHasSubscription()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->setLocked(Ljava/lang/Boolean;)V

    .line 68
    iget-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;->binding:Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;->this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->isCurrentLanguagePersian()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->setIsPersianLanguage(Ljava/lang/Boolean;)V

    return-void
.end method
