.class public final Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;
.super Ljava/lang/Object;
.source "ProfileViewModal_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectivityHelperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final fdAdsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;"
        }
    .end annotation
.end field

.field private final fdParseWrapperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/parse/FDParseWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
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

.field private final webServiceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/WebService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/WebService;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/parse/FDParseWrapper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->fdAdsProvider:Ldagger/internal/Provider;

    .line 51
    iput-object p2, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->localStorageProvider:Ldagger/internal/Provider;

    .line 52
    iput-object p3, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->webServiceProvider:Ldagger/internal/Provider;

    .line 53
    iput-object p4, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->connectivityHelperProvider:Ldagger/internal/Provider;

    .line 54
    iput-object p5, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->fdParseWrapperProvider:Ldagger/internal/Provider;

    .line 55
    iput-object p6, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/WebService;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/parse/FDParseWrapper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)",
            "Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;"
        }
    .end annotation

    .line 68
    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/services/FDAds;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/WebService;Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/services/parse/FDParseWrapper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;
    .locals 7

    .line 74
    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;-><init>(Lfast/dic/dict/services/FDAds;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/WebService;Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/services/parse/FDParseWrapper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;
    .locals 7

    .line 60
    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->fdAdsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfast/dic/dict/services/FDAds;

    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->localStorageProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lfast/dic/dict/database/LocalStorage;

    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->webServiceProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lfast/dic/dict/services/WebService;

    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->connectivityHelperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lfast/dic/dict/helpers/FDConnectivityHelper;

    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->fdParseWrapperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfast/dic/dict/services/parse/FDParseWrapper;

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-static/range {v1 .. v6}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->newInstance(Lfast/dic/dict/services/FDAds;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/WebService;Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/services/parse/FDParseWrapper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_Factory;->get()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    move-result-object p0

    return-object p0
.end method
