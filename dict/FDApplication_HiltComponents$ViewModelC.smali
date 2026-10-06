.class public abstract Lfast/dic/dict/FDApplication_HiltComponents$ViewModelC;
.super Ljava/lang/Object;
.source "FDApplication_HiltComponents.java"

# interfaces
.implements Ldagger/hilt/android/components/ViewModelComponent;
.implements Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory$ViewModelFactoriesEntryPoint;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/viewmodels/BazaarPaymentViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_HiltModules$BindsModule;,
        Ldagger/hilt/android/internal/lifecycle/HiltWrapper_HiltViewModelFactory_ViewModelModule;,
        Lfast/dic/dict/presentation/history_screen/HistoryViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/viewmodels/fragments/HomeViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/login_screen/LoginViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/activities/MainViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/viewmodels/PaymentMethodViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/pricing_screen/PricingViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/profile_screen/ProfileViewModal_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/sort_screen/SortDialogViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/common/SyncViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/fragments/VoiceRecognitionViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel_HiltModules$BindsModule;,
        Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_HiltModules$BindsModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/FDApplication_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewModelC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/FDApplication_HiltComponents$ViewModelC$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
