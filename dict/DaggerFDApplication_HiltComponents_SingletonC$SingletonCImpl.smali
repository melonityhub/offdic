.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;
.super Lfast/dic/dict/FDApplication_HiltComponents$SingletonC;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonCImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field private final applicationContextModule:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

.field fDAdsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;"
        }
    .end annotation
.end field

.field fDDatabaseManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            ">;"
        }
    .end annotation
.end field

.field fDFavouriteProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
            ">;"
        }
    .end annotation
.end field

.field fDHistoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;"
        }
    .end annotation
.end field

.field fDMainDatabaseHelperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;"
        }
    .end annotation
.end field

.field provideApiServiceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/ApiService;",
            ">;"
        }
    .end annotation
.end field

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->applicationContextModule:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    return-object p0
.end method

.method constructor <init>(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationContextModuleParam"
        }
    .end annotation

    .line 1477
    invoke-direct {p0}, Lfast/dic/dict/FDApplication_HiltComponents$SingletonC;-><init>()V

    .line 1461
    iput-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 1478
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->applicationContextModule:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    .line 1479
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->initialize(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)V

    return-void
.end method

.method private initialize(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "applicationContextModuleParam"
        }
    .end annotation

    .line 1493
    new-instance p1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    .line 1494
    new-instance p1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDMainDatabaseHelperProvider:Ldagger/internal/Provider;

    .line 1495
    new-instance p1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDDatabaseManagerProvider:Ldagger/internal/Provider;

    .line 1496
    new-instance p1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    .line 1497
    new-instance p1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDFavouriteProvider:Ldagger/internal/Provider;

    .line 1498
    new-instance p1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDAdsProvider:Ldagger/internal/Provider;

    .line 1499
    new-instance p1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v1, 0x6

    invoke-direct {p1, v0, v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;I)V

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->provideApiServiceProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private injectFDApplication2(Lfast/dic/dict/FDApplication;)Lfast/dic/dict/FDApplication;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1529
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDParseWrapper()Lfast/dic/dict/services/parse/FDParseWrapper;

    move-result-object v0

    invoke-static {p1, v0}, Lfast/dic/dict/FDApplication_MembersInjector;->injectFdParseWrapper(Lfast/dic/dict/FDApplication;Lfast/dic/dict/services/parse/FDParseWrapper;)V

    .line 1530
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-static {p1, p0}, Lfast/dic/dict/FDApplication_MembersInjector;->injectFirebaseUserPropertiesManager(Lfast/dic/dict/FDApplication;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object p1
.end method


# virtual methods
.method fDParseWrapper()Lfast/dic/dict/services/parse/FDParseWrapper;
    .locals 2

    .line 1488
    new-instance v0, Lfast/dic/dict/services/parse/FDParseWrapper;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->applicationContextModule:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/services/parse/FDParseWrapper;-><init>(Landroid/content/Context;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object v0
.end method

.method public firebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
    .locals 0

    .line 1524
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-object p0
.end method

.method public getDisableFragmentGetContextFix()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1504
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public injectFDApplication(Lfast/dic/dict/FDApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 1519
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->injectFDApplication2(Lfast/dic/dict/FDApplication;)Lfast/dic/dict/FDApplication;

    return-void
.end method

.method localStorage()Lfast/dic/dict/database/LocalStorage;
    .locals 1

    .line 1484
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->applicationContextModule:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    invoke-static {p0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public retainedComponentBuilder()Ldagger/hilt/android/internal/builders/ActivityRetainedComponentBuilder;
    .locals 2

    .line 1509
    new-instance v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCBuilder;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method

.method public serviceComponentBuilder()Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;
    .locals 2

    .line 1514
    new-instance v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method
