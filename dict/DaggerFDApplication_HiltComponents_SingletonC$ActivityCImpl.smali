.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;
.super Lfast/dic/dict/FDApplication_HiltComponents$ActivityC;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityCImpl"
.end annotation


# instance fields
.field private final activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityParam"
        }
    .end annotation

    .line 1036
    invoke-direct {p0}, Lfast/dic/dict/FDApplication_HiltComponents$ActivityC;-><init>()V

    .line 1033
    iput-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    .line 1037
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 1038
    iput-object p2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    return-void
.end method


# virtual methods
.method public fragmentComponentBuilder()Ldagger/hilt/android/internal/builders/FragmentComponentBuilder;
    .locals 4

    .line 1090
    new-instance v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCBuilder;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method

.method public getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;
    .locals 4

    .line 1075
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->getViewModelKeys()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V

    invoke-static {v0, v1}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories_InternalFactoryFactory_Factory;->newInstance(Ljava/util/Map;Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;)Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;

    move-result-object p0

    return-object p0
.end method

.method public getViewModelComponentBuilder()Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;
    .locals 3

    .line 1085
    new-instance v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method

.method public getViewModelKeys()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1080
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->keySetMapOfClassOfObjectAndBooleanBuilder()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/LazyClassKeyMap;->of(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public injectBaseActivity(Lfast/dic/dict/bases/BaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public injectMainActivity(Lfast/dic/dict/activities/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public injectShareEntryActivity(Lfast/dic/dict/activities/ShareEntryActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public injectSplashActivity(Lfast/dic/dict/activities/SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method keySetMapOfClassOfObjectAndBooleanBuilder()Lcom/google/common/collect/ImmutableMap;
    .locals 2

    const/16 p0, 0x19

    .line 1044
    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p0

    .line 1045
    sget-object v0, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1046
    sget-object v0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1047
    sget-object v0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1048
    sget-object v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1049
    sget-object v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1050
    sget-object v0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1051
    sget-object v0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1052
    sget-object v0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1053
    sget-object v0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1054
    sget-object v0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1055
    sget-object v0, Lfast/dic/dict/presentation/login_screen/LoginViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/login_screen/LoginViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1056
    sget-object v0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1057
    sget-object v0, Lfast/dic/dict/activities/MainViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/activities/MainViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1058
    sget-object v0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1059
    sget-object v0, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1060
    sget-object v0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1061
    sget-object v0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1062
    sget-object v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1063
    sget-object v0, Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1064
    sget-object v0, Lfast/dic/dict/presentation/common/SyncViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/common/SyncViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1065
    sget-object v0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1066
    sget-object v0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1067
    sget-object v0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1068
    sget-object v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1069
    sget-object v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    invoke-static {}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_HiltModules$KeyModule;->provide()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1070
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public viewComponentBuilder()Ldagger/hilt/android/internal/builders/ViewComponentBuilder;
    .locals 4

    .line 1095
    new-instance v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method
