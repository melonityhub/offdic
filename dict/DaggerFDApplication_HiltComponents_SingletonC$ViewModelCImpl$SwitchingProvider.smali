.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;
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
.field private final activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final id:I

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

.field private final viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;


# direct methods
.method constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "viewModelCImpl",
            "id"
        }
    .end annotation

    .line 1297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1298
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 1299
    iput-object p2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 1300
    iput-object p3, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    .line 1301
    iput p4, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->id:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1307
    iget v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->id:I

    packed-switch v0, :pswitch_data_0

    .line 1383
    new-instance v0, Ljava/lang/AssertionError;

    iget p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->id:I

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 1381
    :pswitch_0
    new-instance v1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDHtml()Lfast/dic/dict/utils/FDHtml;

    move-result-object v2

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDAdsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lfast/dic/dict/services/FDAds;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDFavouriteProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDSoundEffect()Lfast/dic/dict/helpers/FDSoundEffect;

    move-result-object v6

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object v7

    new-instance v8, Lfast/dic/dict/utils/FDCategory;

    invoke-direct {v8}, Lfast/dic/dict/utils/FDCategory;-><init>()V

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDParseWrapper()Lfast/dic/dict/services/parse/FDParseWrapper;

    move-result-object v9

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDDatabaseManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lfast/dic/dict/database/FDDatabaseManager;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object v11

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDConnectivityHelper()Lfast/dic/dict/helpers/FDConnectivityHelper;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;-><init>(Lfast/dic/dict/utils/FDHtml;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/FDSoundEffect;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/utils/FDCategory;Lfast/dic/dict/services/parse/FDParseWrapper;Lfast/dic/dict/database/FDDatabaseManager;Landroid/content/Context;Lfast/dic/dict/helpers/FDConnectivityHelper;)V

    return-object v1

    .line 1378
    :pswitch_1
    new-instance v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDWordCategory()Lfast/dic/dict/helpers/FDWordCategory;

    move-result-object p0

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;-><init>(Lfast/dic/dict/helpers/FDWordCategory;)V

    return-object v0

    .line 1375
    :pswitch_2
    new-instance v0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object v1

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->webService()Lfast/dic/dict/services/WebService;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;-><init>(Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/WebService;)V

    return-object v0

    .line 1372
    :pswitch_3
    new-instance v0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object p0

    invoke-static {p0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->provideApplication(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object p0

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;-><init>(Landroid/app/Application;)V

    return-object v0

    .line 1369
    :pswitch_4
    new-instance p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;

    new-instance v0, Lfast/dic/dict/utils/FDImageRecognizer;

    invoke-direct {v0}, Lfast/dic/dict/utils/FDImageRecognizer;-><init>()V

    invoke-direct {p0, v0}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;-><init>(Lfast/dic/dict/utils/FDImageRecognizer;)V

    return-object p0

    .line 1366
    :pswitch_5
    new-instance v0, Lfast/dic/dict/presentation/common/SyncViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v2}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDListPath()Lfast/dic/dict/helpers/FDListPath;

    move-result-object v2

    iget-object v3, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v3}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object v3

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDSyncSession()Lfast/dic/dict/data/sync/repository/FDSyncSession;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lfast/dic/dict/presentation/common/SyncViewModel;-><init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/data/sync/repository/FDSyncSession;)V

    return-object v0

    .line 1363
    :pswitch_6
    new-instance v0, Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel;-><init>(Lfast/dic/dict/database/LocalStorage;)V

    return-object v0

    .line 1360
    :pswitch_7
    new-instance p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;

    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;-><init>()V

    return-object p0

    .line 1357
    :pswitch_8
    new-instance v0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDConnectivityHelper()Lfast/dic/dict/helpers/FDConnectivityHelper;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v2}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object v2

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-direct {v0, v1, v2, p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;-><init>(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object v0

    .line 1354
    :pswitch_9
    new-instance v3, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDAdsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lfast/dic/dict/services/FDAds;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object v5

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->webService()Lfast/dic/dict/services/WebService;

    move-result-object v6

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDConnectivityHelper()Lfast/dic/dict/helpers/FDConnectivityHelper;

    move-result-object v7

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDParseWrapper()Lfast/dic/dict/services/parse/FDParseWrapper;

    move-result-object v8

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-direct/range {v3 .. v9}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;-><init>(Lfast/dic/dict/services/FDAds;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/WebService;Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/services/parse/FDParseWrapper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object v3

    .line 1351
    :pswitch_a
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->webService()Lfast/dic/dict/services/WebService;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;-><init>(Lfast/dic/dict/services/WebService;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/database/LocalStorage;)V

    return-object v0

    .line 1348
    :pswitch_b
    new-instance v0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->webService()Lfast/dic/dict/services/WebService;

    move-result-object v1

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;-><init>(Lfast/dic/dict/services/WebService;Lfast/dic/dict/database/LocalStorage;)V

    return-object v0

    .line 1345
    :pswitch_c
    new-instance v2, Lfast/dic/dict/activities/MainViewModel;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDMainDatabaseHelperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDListPath()Lfast/dic/dict/helpers/FDListPath;

    move-result-object v4

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object v5

    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDAdsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lfast/dic/dict/services/FDAds;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDSoundEffect()Lfast/dic/dict/helpers/FDSoundEffect;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lfast/dic/dict/activities/MainViewModel;-><init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/FDSoundEffect;)V

    return-object v2

    .line 1342
    :pswitch_d
    new-instance v0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object v1

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;-><init>(Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object v0

    .line 1339
    :pswitch_e
    new-instance v0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDConnectivityHelper()Lfast/dic/dict/helpers/FDConnectivityHelper;

    move-result-object p0

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/login_screen/LoginViewModel;-><init>(Lfast/dic/dict/helpers/FDConnectivityHelper;)V

    return-object v0

    .line 1336
    :pswitch_f
    new-instance v0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->webService()Lfast/dic/dict/services/WebService;

    move-result-object v1

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;-><init>(Lfast/dic/dict/services/WebService;Lfast/dic/dict/database/LocalStorage;)V

    return-object v0

    .line 1333
    :pswitch_10
    new-instance v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel;-><init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/database/LocalStorage;)V

    return-object v0

    .line 1330
    :pswitch_11
    new-instance v0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->playBillingRepository()Lfast/dic/dict/data/billing/PlayBillingRepository;

    move-result-object p0

    invoke-direct {v0, p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;-><init>(Lfast/dic/dict/data/billing/PlayBillingRepository;)V

    return-object v0

    .line 1327
    :pswitch_12
    new-instance v0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDConnectivityHelper()Lfast/dic/dict/helpers/FDConnectivityHelper;

    move-result-object v1

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;-><init>(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object v0

    .line 1324
    :pswitch_13
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDFavouriteProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    new-instance v3, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-direct {v3}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;-><init>()V

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDWordCategory()Lfast/dic/dict/helpers/FDWordCategory;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;-><init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;Lfast/dic/dict/helpers/FDWordCategory;)V

    return-object v0

    .line 1321
    :pswitch_14
    new-instance v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDConnectivityHelper()Lfast/dic/dict/helpers/FDConnectivityHelper;

    move-result-object v1

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;-><init>(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object v0

    .line 1318
    :pswitch_15
    new-instance v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDFavouriteProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;-><init>(Lfast/dic/dict/helpers/database/couchbase/FDFavourite;)V

    return-object v0

    .line 1315
    :pswitch_16
    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->viewModelCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    invoke-virtual {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;->fDWordCategory()Lfast/dic/dict/helpers/FDWordCategory;

    move-result-object v1

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;-><init>(Lfast/dic/dict/helpers/FDWordCategory;Lfast/dic/dict/database/LocalStorage;)V

    return-object v0

    .line 1312
    :pswitch_17
    new-instance p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    invoke-direct {p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;-><init>()V

    return-object p0

    .line 1309
    :pswitch_18
    new-instance v0, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;-><init>(Lfast/dic/dict/database/LocalStorage;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
