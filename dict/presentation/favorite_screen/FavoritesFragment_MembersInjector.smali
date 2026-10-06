.class public final Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;
.super Ljava/lang/Object;
.source "FavoritesFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final connectivityHelperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
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


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    .line 39
    iput-object p2, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;->adapterProvider:Ldagger/internal/Provider;

    .line 40
    iput-object p3, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;->connectivityHelperProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAdapter(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->adapter:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    return-void
.end method

.method public static injectConnectivityHelper(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/helpers/FDConnectivityHelper;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 46
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;->adapterProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    invoke-static {p1, v0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)V

    .line 47
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;->connectivityHelperProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/FDConnectivityHelper;

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;->injectConnectivityHelper(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/helpers/FDConnectivityHelper;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 13
    check-cast p1, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;->injectMembers(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    return-void
.end method
