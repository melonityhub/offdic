.class public final Lfast/dic/dict/data/sync/repository/FDSyncSession_Factory;
.super Ljava/lang/Object;
.source "FDSyncSession_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/data/sync/repository/FDSyncSession;",
        ">;"
    }
.end annotation


# instance fields
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
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lfast/dic/dict/data/sync/repository/FDSyncSession_Factory;->localStorageProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lfast/dic/dict/data/sync/repository/FDSyncSession_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;)",
            "Lfast/dic/dict/data/sync/repository/FDSyncSession_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lfast/dic/dict/data/sync/repository/FDSyncSession_Factory;

    invoke-direct {v0, p0}, Lfast/dic/dict/data/sync/repository/FDSyncSession_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/database/LocalStorage;)Lfast/dic/dict/data/sync/repository/FDSyncSession;
    .locals 1

    .line 44
    new-instance v0, Lfast/dic/dict/data/sync/repository/FDSyncSession;

    invoke-direct {v0, p0}, Lfast/dic/dict/data/sync/repository/FDSyncSession;-><init>(Lfast/dic/dict/database/LocalStorage;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/data/sync/repository/FDSyncSession;
    .locals 0

    .line 36
    iget-object p0, p0, Lfast/dic/dict/data/sync/repository/FDSyncSession_Factory;->localStorageProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/database/LocalStorage;

    invoke-static {p0}, Lfast/dic/dict/data/sync/repository/FDSyncSession_Factory;->newInstance(Lfast/dic/dict/database/LocalStorage;)Lfast/dic/dict/data/sync/repository/FDSyncSession;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lfast/dic/dict/data/sync/repository/FDSyncSession_Factory;->get()Lfast/dic/dict/data/sync/repository/FDSyncSession;

    move-result-object p0

    return-object p0
.end method
