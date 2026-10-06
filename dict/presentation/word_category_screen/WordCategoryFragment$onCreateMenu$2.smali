.class public final Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$2;
.super Ljava/lang/Object;
.source "WordCategoryFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "fast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$2",
        "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;",
        "onQueryTextSubmit",
        "",
        "query",
        "",
        "onQueryTextChange",
        "newText",
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
.field final synthetic $searchItem:Landroid/view/MenuItem;

.field final synthetic $searchView:Landroidx/appcompat/widget/SearchView;

.field final synthetic this$0:Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;Landroidx/appcompat/widget/SearchView;Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$2;->this$0:Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;

    iput-object p2, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$2;->$searchView:Landroidx/appcompat/widget/SearchView;

    iput-object p3, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$2;->$searchItem:Landroid/view/MenuItem;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 189
    const-string p1, ""

    .line 190
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$2;->this$0:Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;

    invoke-static {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->access$getViewModel(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->filterAdapter(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 180
    const-string p1, ""

    .line 181
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$2;->this$0:Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;

    invoke-static {v0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->access$getViewModel(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;->filterAdapter(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$2;->$searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 184
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment$onCreateMenu$2;->$searchItem:Landroid/view/MenuItem;

    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    const/4 p0, 0x1

    return p0
.end method
