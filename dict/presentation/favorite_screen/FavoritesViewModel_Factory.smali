.class public final Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;
.super Ljava/lang/Object;
.source "FavoritesViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final favoriteProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
            ">;"
        }
    .end annotation
.end field

.field private final favouriteFolderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;",
            ">;"
        }
    .end annotation
.end field

.field private final historyProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final wordCategoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDWordCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDWordCategory;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;->historyProvider:Ldagger/internal/Provider;

    .line 43
    iput-object p2, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;->favoriteProvider:Ldagger/internal/Provider;

    .line 44
    iput-object p3, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;->favouriteFolderProvider:Ldagger/internal/Provider;

    .line 45
    iput-object p4, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;->wordCategoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDWordCategory;",
            ">;)",
            "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;"
        }
    .end annotation

    .line 56
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;Lfast/dic/dict/helpers/FDWordCategory;)Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;
    .locals 1

    .line 61
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    invoke-direct {v0, p0, p1, p2, p3}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;-><init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;Lfast/dic/dict/helpers/FDWordCategory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;
    .locals 3

    .line 50
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;->historyProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iget-object v1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;->favoriteProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    iget-object v2, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;->favouriteFolderProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;->wordCategoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/FDWordCategory;

    invoke-static {v0, v1, v2, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;->newInstance(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;Lfast/dic/dict/helpers/FDWordCategory;)Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_Factory;->get()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p0

    return-object p0
.end method
