.class public final Lfast/dic/dict/activities/MainViewModel_Factory;
.super Ljava/lang/Object;
.source "MainViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/activities/MainViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final fdAdsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
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

.field private final fdMainDatabaseHelperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
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

.field private final soundEffectProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDSoundEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDListPath;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDSoundEffect;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lfast/dic/dict/activities/MainViewModel_Factory;->fdMainDatabaseHelperProvider:Ldagger/internal/Provider;

    .line 46
    iput-object p2, p0, Lfast/dic/dict/activities/MainViewModel_Factory;->fdListPathProvider:Ldagger/internal/Provider;

    .line 47
    iput-object p3, p0, Lfast/dic/dict/activities/MainViewModel_Factory;->localStorageProvider:Ldagger/internal/Provider;

    .line 48
    iput-object p4, p0, Lfast/dic/dict/activities/MainViewModel_Factory;->fdAdsProvider:Ldagger/internal/Provider;

    .line 49
    iput-object p5, p0, Lfast/dic/dict/activities/MainViewModel_Factory;->soundEffectProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/activities/MainViewModel_Factory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDListPath;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDSoundEffect;",
            ">;)",
            "Lfast/dic/dict/activities/MainViewModel_Factory;"
        }
    .end annotation

    .line 61
    new-instance v0, Lfast/dic/dict/activities/MainViewModel_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/activities/MainViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/FDSoundEffect;)Lfast/dic/dict/activities/MainViewModel;
    .locals 6

    .line 66
    new-instance v0, Lfast/dic/dict/activities/MainViewModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/activities/MainViewModel;-><init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/FDSoundEffect;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/activities/MainViewModel;
    .locals 4

    .line 54
    iget-object v0, p0, Lfast/dic/dict/activities/MainViewModel_Factory;->fdMainDatabaseHelperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    iget-object v1, p0, Lfast/dic/dict/activities/MainViewModel_Factory;->fdListPathProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/helpers/FDListPath;

    iget-object v2, p0, Lfast/dic/dict/activities/MainViewModel_Factory;->localStorageProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfast/dic/dict/database/LocalStorage;

    iget-object v3, p0, Lfast/dic/dict/activities/MainViewModel_Factory;->fdAdsProvider:Ldagger/internal/Provider;

    invoke-interface {v3}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfast/dic/dict/services/FDAds;

    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel_Factory;->soundEffectProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/FDSoundEffect;

    invoke-static {v0, v1, v2, v3, p0}, Lfast/dic/dict/activities/MainViewModel_Factory;->newInstance(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/FDSoundEffect;)Lfast/dic/dict/activities/MainViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Lfast/dic/dict/activities/MainViewModel_Factory;->get()Lfast/dic/dict/activities/MainViewModel;

    move-result-object p0

    return-object p0
.end method
