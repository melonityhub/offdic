.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchingProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "id"
        }
    .end annotation

    .line 1539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1540
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 1541
    iput p2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->id:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1547
    iget v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->id:I

    packed-switch v0, :pswitch_data_0

    .line 1569
    new-instance v0, Ljava/lang/AssertionError;

    iget p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->id:I

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 1567
    :pswitch_0
    invoke-static {}, Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object p0

    invoke-static {p0}, Lfast/dic/dict/services/RetrofitBuilder_ProvideApiServiceFactory;->provideApiService(Lretrofit2/Retrofit;)Lfast/dic/dict/services/ApiService;

    move-result-object p0

    return-object p0

    .line 1564
    :pswitch_1
    new-instance v0, Lfast/dic/dict/services/FDAds;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v2}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-direct {v0, v1, v2, p0}, Lfast/dic/dict/services/FDAds;-><init>(Lfast/dic/dict/database/LocalStorage;Landroid/content/Context;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object v0

    .line 1561
    :pswitch_2
    new-instance v0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDDatabaseManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/database/FDDatabaseManager;

    invoke-direct {v0, p0}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;-><init>(Lfast/dic/dict/database/FDDatabaseManager;)V

    return-object v0

    .line 1558
    :pswitch_3
    new-instance v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    new-instance v1, Lfast/dic/dict/utils/Logger;

    invoke-direct {v1}, Lfast/dic/dict/utils/Logger;-><init>()V

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object p0

    invoke-static {p0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;-><init>(Lfast/dic/dict/utils/Logger;Landroid/content/Context;)V

    return-object v0

    .line 1555
    :pswitch_4
    new-instance v0, Lfast/dic/dict/database/FDDatabaseManager;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDMainDatabaseHelperProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object p0

    invoke-static {p0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/database/FDDatabaseManager;-><init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Landroid/content/Context;)V

    return-object v0

    .line 1552
    :pswitch_5
    new-instance v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDDatabaseManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/database/FDDatabaseManager;

    invoke-direct {v0, p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;-><init>(Lfast/dic/dict/database/FDDatabaseManager;)V

    return-object v0

    .line 1549
    :pswitch_6
    new-instance v0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;-><init>(Landroid/content/Context;Lfast/dic/dict/database/LocalStorage;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
