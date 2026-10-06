.class public final Lfast/dic/dict/di/CustomViewModule_ProvideFDHistoryFactory;
.super Ljava/lang/Object;
.source "CustomViewModule_ProvideFDHistoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
        ">;"
    }
.end annotation


# instance fields
.field private final databaseManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfast/dic/dict/di/CustomViewModule_ProvideFDHistoryFactory;->databaseManagerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lfast/dic/dict/di/CustomViewModule_ProvideFDHistoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            ">;)",
            "Lfast/dic/dict/di/CustomViewModule_ProvideFDHistoryFactory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lfast/dic/dict/di/CustomViewModule_ProvideFDHistoryFactory;

    invoke-direct {v0, p0}, Lfast/dic/dict/di/CustomViewModule_ProvideFDHistoryFactory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideFDHistory(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/helpers/database/couchbase/FDHistory;
    .locals 1

    .line 48
    sget-object v0, Lfast/dic/dict/di/CustomViewModule;->INSTANCE:Lfast/dic/dict/di/CustomViewModule;

    invoke-virtual {v0, p0}, Lfast/dic/dict/di/CustomViewModule;->provideFDHistory(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    return-object p0
.end method


# virtual methods
.method public get()Lfast/dic/dict/helpers/database/couchbase/FDHistory;
    .locals 0

    .line 39
    iget-object p0, p0, Lfast/dic/dict/di/CustomViewModule_ProvideFDHistoryFactory;->databaseManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/database/FDDatabaseManager;

    invoke-static {p0}, Lfast/dic/dict/di/CustomViewModule_ProvideFDHistoryFactory;->provideFDHistory(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lfast/dic/dict/di/CustomViewModule_ProvideFDHistoryFactory;->get()Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    move-result-object p0

    return-object p0
.end method
