.class public final Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoriesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WODFolderViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;)V",
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
.field private final binding:Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;->this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;->binding:Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;

    .line 76
    new-instance p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;)V

    invoke-virtual {p2, p0}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->getOnWodClickListener()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setBind(Lfast/dic/dict/models/WordCategoryModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;->binding:Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/models/WordCategoryModel;->getCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->setCount(Ljava/lang/Integer;)V

    .line 83
    iget-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;->binding:Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;

    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;->this$0:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->isCurrentLanguagePersian()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->setIsPersianLanguage(Ljava/lang/Boolean;)V

    return-void
.end method
