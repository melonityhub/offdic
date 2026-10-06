.class public final synthetic Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda6;->f$0:Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda6;->f$0:Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;

    check-cast p1, Lfast/dic/dict/models/WordCategoryModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->onCreateView$lambda$1(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;Lfast/dic/dict/models/WordCategoryModel;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
