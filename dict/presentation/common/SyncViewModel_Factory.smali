.class public final Lfast/dic/dict/presentation/common/SyncViewModel_Factory;
.super Ljava/lang/Object;
.source "SyncViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/presentation/common/SyncViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final fdHistoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final fdListPathProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDListPath;",
            ">;"
        }
    .end annotation
.end field

.field private final fdSyncSessionProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/data/sync/repository/FDSyncSession;",
            ">;"
        }
    .end annotation
.end field

.field private final localStorageProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
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
            "Lfast/dic/dict/helpers/FDListPath;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/data/sync/repository/FDSyncSession;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;->fdHistoryProvider:Ldagger/internal/Provider;

    .line 43
    iput-object p2, p0, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;->fdListPathProvider:Ldagger/internal/Provider;

    .line 44
    iput-object p3, p0, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;->localStorageProvider:Ldagger/internal/Provider;

    .line 45
    iput-object p4, p0, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;->fdSyncSessionProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/presentation/common/SyncViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDListPath;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/data/sync/repository/FDSyncSession;",
            ">;)",
            "Lfast/dic/dict/presentation/common/SyncViewModel_Factory;"
        }
    .end annotation

    .line 56
    new-instance v0, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/data/sync/repository/FDSyncSession;)Lfast/dic/dict/presentation/common/SyncViewModel;
    .locals 1

    .line 61
    new-instance v0, Lfast/dic/dict/presentation/common/SyncViewModel;

    invoke-direct {v0, p0, p1, p2, p3}, Lfast/dic/dict/presentation/common/SyncViewModel;-><init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/data/sync/repository/FDSyncSession;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/presentation/common/SyncViewModel;
    .locals 3

    .line 50
    iget-object v0, p0, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;->fdHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iget-object v1, p0, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;->fdListPathProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/helpers/FDListPath;

    iget-object v2, p0, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;->localStorageProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfast/dic/dict/database/LocalStorage;

    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;->fdSyncSessionProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/data/sync/repository/FDSyncSession;

    invoke-static {v0, v1, v2, p0}, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;->newInstance(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/data/sync/repository/FDSyncSession;)Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lfast/dic/dict/presentation/common/SyncViewModel_Factory;->get()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object p0

    return-object p0
.end method
