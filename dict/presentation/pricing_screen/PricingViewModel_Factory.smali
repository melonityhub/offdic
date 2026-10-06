.class public final Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;
.super Ljava/lang/Object;
.source "PricingViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;",
        ">;"
    }
.end annotation


# instance fields
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
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/WebService;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;->webServiceProvider:Ldagger/internal/Provider;

    .line 40
    iput-object p2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    .line 41
    iput-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;->localStorageProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/WebService;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;)",
            "Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;"
        }
    .end annotation

    .line 52
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;

    invoke-direct {v0, p0, p1, p2}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/services/WebService;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/database/LocalStorage;)Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;
    .locals 1

    .line 57
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    invoke-direct {v0, p0, p1, p2}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;-><init>(Lfast/dic/dict/services/WebService;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/database/LocalStorage;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;
    .locals 2

    .line 46
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;->webServiceProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/services/WebService;

    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;->localStorageProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/database/LocalStorage;

    invoke-static {v0, v1, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;->newInstance(Lfast/dic/dict/services/WebService;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/database/LocalStorage;)Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_Factory;->get()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object p0

    return-object p0
.end method
