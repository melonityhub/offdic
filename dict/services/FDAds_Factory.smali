.class public final Lfast/dic/dict/services/FDAds_Factory;
.super Ljava/lang/Object;
.source "FDAds_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/services/FDAds;",
        ">;"
    }
.end annotation


# instance fields
.field private final appContextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lfast/dic/dict/services/FDAds_Factory;->localStorageProvider:Ldagger/internal/Provider;

    .line 40
    iput-object p2, p0, Lfast/dic/dict/services/FDAds_Factory;->appContextProvider:Ldagger/internal/Provider;

    .line 41
    iput-object p3, p0, Lfast/dic/dict/services/FDAds_Factory;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/services/FDAds_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)",
            "Lfast/dic/dict/services/FDAds_Factory;"
        }
    .end annotation

    .line 52
    new-instance v0, Lfast/dic/dict/services/FDAds_Factory;

    invoke-direct {v0, p0, p1, p2}, Lfast/dic/dict/services/FDAds_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/database/LocalStorage;Landroid/content/Context;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)Lfast/dic/dict/services/FDAds;
    .locals 1

    .line 57
    new-instance v0, Lfast/dic/dict/services/FDAds;

    invoke-direct {v0, p0, p1, p2}, Lfast/dic/dict/services/FDAds;-><init>(Lfast/dic/dict/database/LocalStorage;Landroid/content/Context;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/services/FDAds;
    .locals 2

    .line 46
    iget-object v0, p0, Lfast/dic/dict/services/FDAds_Factory;->localStorageProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/database/LocalStorage;

    iget-object v1, p0, Lfast/dic/dict/services/FDAds_Factory;->appContextProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lfast/dic/dict/services/FDAds_Factory;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-static {v0, v1, p0}, Lfast/dic/dict/services/FDAds_Factory;->newInstance(Lfast/dic/dict/database/LocalStorage;Landroid/content/Context;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)Lfast/dic/dict/services/FDAds;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lfast/dic/dict/services/FDAds_Factory;->get()Lfast/dic/dict/services/FDAds;

    move-result-object p0

    return-object p0
.end method
