package fast.dic.dict;

import dagger.Binds;
import dagger.Component;
import dagger.Module;
import dagger.Subcomponent;
import dagger.hilt.android.components.ActivityComponent;
import dagger.hilt.android.components.ActivityRetainedComponent;
import dagger.hilt.android.components.FragmentComponent;
import dagger.hilt.android.components.ServiceComponent;
import dagger.hilt.android.components.ViewComponent;
import dagger.hilt.android.components.ViewModelComponent;
import dagger.hilt.android.components.ViewWithFragmentComponent;
import dagger.hilt.android.flags.FragmentGetContextFix;
import dagger.hilt.android.flags.HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule;
import dagger.hilt.android.internal.builders.ActivityComponentBuilder;
import dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder;
import dagger.hilt.android.internal.builders.FragmentComponentBuilder;
import dagger.hilt.android.internal.builders.ServiceComponentBuilder;
import dagger.hilt.android.internal.builders.ViewComponentBuilder;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.lifecycle.HiltViewModelFactory;
import dagger.hilt.android.internal.lifecycle.HiltWrapper_DefaultViewModelFactories_ActivityModule;
import dagger.hilt.android.internal.lifecycle.HiltWrapper_HiltViewModelFactory_ActivityCreatorEntryPoint;
import dagger.hilt.android.internal.lifecycle.HiltWrapper_HiltViewModelFactory_ViewModelModule;
import dagger.hilt.android.internal.managers.ActivityComponentManager;
import dagger.hilt.android.internal.managers.FragmentComponentManager;
import dagger.hilt.android.internal.managers.HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedComponentBuilderEntryPoint;
import dagger.hilt.android.internal.managers.HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedLifecycleEntryPoint;
import dagger.hilt.android.internal.managers.HiltWrapper_ActivityRetainedComponentManager_LifecycleModule;
import dagger.hilt.android.internal.managers.HiltWrapper_ActivitySavedStateHandleModule;
import dagger.hilt.android.internal.managers.ServiceComponentManager;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import dagger.hilt.android.internal.modules.ApplicationContextModule;
import dagger.hilt.android.internal.modules.HiltWrapper_ActivityModule;
import dagger.hilt.components.SingletonComponent;
import dagger.hilt.internal.GeneratedComponent;
import fast.dic.dict.activities.MainActivity_GeneratedInjector;
import fast.dic.dict.activities.MainViewModel_HiltModules;
import fast.dic.dict.activities.ShareEntryActivity_GeneratedInjector;
import fast.dic.dict.activities.SplashActivity_GeneratedInjector;
import fast.dic.dict.bases.BaseActivity_GeneratedInjector;
import fast.dic.dict.bases.BaseFragment_GeneratedInjector;
import fast.dic.dict.di.AppModule;
import fast.dic.dict.di.CustomViewModule;
import fast.dic.dict.fragments.CameraFragment_GeneratedInjector;
import fast.dic.dict.fragments.ChooseLanguageFragment_GeneratedInjector;
import fast.dic.dict.fragments.HelpFragment_GeneratedInjector;
import fast.dic.dict.fragments.HomeFragment_GeneratedInjector;
import fast.dic.dict.fragments.MoreFragment_GeneratedInjector;
import fast.dic.dict.fragments.MoreInnerFragment_GeneratedInjector;
import fast.dic.dict.fragments.SearchFragment_GeneratedInjector;
import fast.dic.dict.fragments.SettingFragment_GeneratedInjector;
import fast.dic.dict.fragments.TextRecognitionTranslatorFragment_GeneratedInjector;
import fast.dic.dict.fragments.TransactionHistoryFragment_GeneratedInjector;
import fast.dic.dict.fragments.UpdateProfileFragment_GeneratedInjector;
import fast.dic.dict.fragments.VoiceRecognitionFragment_GeneratedInjector;
import fast.dic.dict.fragments.VoiceRecognitionViewModel_HiltModules;
import fast.dic.dict.fragments.onboardings.AdvertisementOnBoardingFragment_GeneratedInjector;
import fast.dic.dict.fragments.onboardings.CameraPermissionFragment_GeneratedInjector;
import fast.dic.dict.fragments.onboardings.LanguageOnBoardingFragment_GeneratedInjector;
import fast.dic.dict.fragments.onboardings.MicrophonePermissionFragment_GeneratedInjector;
import fast.dic.dict.fragments.onboardings.ProPlanRequiredFragment_GeneratedInjector;
import fast.dic.dict.fragments.onboardings.PushNotificationOnBoardingFragment_GeneratedInjector;
import fast.dic.dict.presentation.ai_screen.AIFragmentViewModel_HiltModules;
import fast.dic.dict.presentation.ai_screen.AIFragment_GeneratedInjector;
import fast.dic.dict.presentation.categories_screen.CategoriesFragment_GeneratedInjector;
import fast.dic.dict.presentation.categories_screen.CategoriesViewModel_HiltModules;
import fast.dic.dict.presentation.common.SyncViewModel_HiltModules;
import fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment_GeneratedInjector;
import fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel_HiltModules;
import fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment_GeneratedInjector;
import fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel_HiltModules;
import fast.dic.dict.presentation.favorite_screen.FavoritesFragment_GeneratedInjector;
import fast.dic.dict.presentation.favorite_screen.FavoritesViewModel_HiltModules;
import fast.dic.dict.presentation.finish_registration_screen.FinishRegistrationFragment_GeneratedInjector;
import fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment_GeneratedInjector;
import fast.dic.dict.presentation.forget_password_screen.ForgetPasswordViewModel_HiltModules;
import fast.dic.dict.presentation.fullscreen_modal.FullscreenModal_GeneratedInjector;
import fast.dic.dict.presentation.history_screen.HistoryFragment_GeneratedInjector;
import fast.dic.dict.presentation.history_screen.HistoryViewModel_HiltModules;
import fast.dic.dict.presentation.login_onboarding_screen.LoginOnBoardingFragment_GeneratedInjector;
import fast.dic.dict.presentation.login_screen.LoginSignupFragment_GeneratedInjector;
import fast.dic.dict.presentation.login_screen.LoginViewModel_HiltModules;
import fast.dic.dict.presentation.logout_screen.LogoutFragment_GeneratedInjector;
import fast.dic.dict.presentation.logout_screen.LogoutViewModel_HiltModules;
import fast.dic.dict.presentation.pricing_screen.PricingFragment_GeneratedInjector;
import fast.dic.dict.presentation.pricing_screen.PricingViewModel_HiltModules;
import fast.dic.dict.presentation.profile_screen.ProfileFragment_GeneratedInjector;
import fast.dic.dict.presentation.profile_screen.ProfileViewModal_HiltModules;
import fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment_GeneratedInjector;
import fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel_HiltModules;
import fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment_GeneratedInjector;
import fast.dic.dict.presentation.result_order_modal.ResultOrderModalViewModel_HiltModules;
import fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal_GeneratedInjector;
import fast.dic.dict.presentation.sort_screen.SortDialogViewModel_HiltModules;
import fast.dic.dict.presentation.sort_screen.SortDialog_GeneratedInjector;
import fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment_GeneratedInjector;
import fast.dic.dict.presentation.wod_history_screen.WodHistoryViewModel_HiltModules;
import fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryFragment_GeneratedInjector;
import fast.dic.dict.presentation.word_category_screen.WordCategoryFragment_GeneratedInjector;
import fast.dic.dict.presentation.word_category_screen.WordCategoryViewModel_HiltModules;
import fast.dic.dict.presentation.word_result_screen.WordResultFragment_GeneratedInjector;
import fast.dic.dict.presentation.word_result_screen.WordResultViewModel_HiltModules;
import fast.dic.dict.services.RetrofitBuilder;
import fast.dic.dict.utils.FirebaseAnalyticsEntryPoint;
import fast.dic.dict.viewmodels.BazaarPaymentViewModel_HiltModules;
import fast.dic.dict.viewmodels.PaymentMethodViewModel_HiltModules;
import fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel_HiltModules;
import fast.dic.dict.viewmodels.fragments.HomeViewModel_HiltModules;
import fast.dic.dict.viewmodels.fragments.TextRecognitionTranslatorViewModel_HiltModules;
import jakarta.inject.Singleton;

/* JADX INFO: loaded from: classes11.dex */
public final class FDApplication_HiltComponents {

    @Subcomponent(modules = {FragmentCBuilderModule.class, ViewCBuilderModule.class, HiltWrapper_ActivityModule.class, HiltWrapper_DefaultViewModelFactories_ActivityModule.class})
    public static abstract class ActivityC implements ActivityComponent, DefaultViewModelFactories.ActivityEntryPoint, HiltWrapper_HiltViewModelFactory_ActivityCreatorEntryPoint, FragmentComponentManager.FragmentComponentBuilderEntryPoint, ViewComponentManager.ViewComponentBuilderEntryPoint, GeneratedComponent, MainActivity_GeneratedInjector, ShareEntryActivity_GeneratedInjector, SplashActivity_GeneratedInjector, BaseActivity_GeneratedInjector {

        @Subcomponent.Builder
        interface Builder extends ActivityComponentBuilder {
        }
    }

    @Module(subcomponents = {ActivityC.class})
    interface ActivityCBuilderModule {
        @Binds
        ActivityComponentBuilder bind(ActivityC.Builder builder);
    }

    @Subcomponent(modules = {AIFragmentViewModel_HiltModules.KeyModule.class, BazaarPaymentViewModel_HiltModules.KeyModule.class, CategoriesViewModel_HiltModules.KeyModule.class, DirectoryWordsViewModel_HiltModules.KeyModule.class, EnterPasswordViewModel_HiltModules.KeyModule.class, ActivityCBuilderModule.class, ViewModelCBuilderModule.class, FavoritesViewModel_HiltModules.KeyModule.class, ForgetPasswordViewModel_HiltModules.KeyModule.class, GooglePaymentViewModel_HiltModules.KeyModule.class, HiltWrapper_ActivityRetainedComponentManager_LifecycleModule.class, HiltWrapper_ActivitySavedStateHandleModule.class, HistoryViewModel_HiltModules.KeyModule.class, HomeViewModel_HiltModules.KeyModule.class, LoginViewModel_HiltModules.KeyModule.class, LogoutViewModel_HiltModules.KeyModule.class, MainViewModel_HiltModules.KeyModule.class, PaymentMethodViewModel_HiltModules.KeyModule.class, PricingViewModel_HiltModules.KeyModule.class, ProfileViewModal_HiltModules.KeyModule.class, RegistrationFormViewModel_HiltModules.KeyModule.class, ResultOrderModalViewModel_HiltModules.KeyModule.class, SortDialogViewModel_HiltModules.KeyModule.class, SyncViewModel_HiltModules.KeyModule.class, TextRecognitionTranslatorViewModel_HiltModules.KeyModule.class, VoiceRecognitionViewModel_HiltModules.KeyModule.class, WodHistoryViewModel_HiltModules.KeyModule.class, WordCategoryViewModel_HiltModules.KeyModule.class, WordResultViewModel_HiltModules.KeyModule.class})
    public static abstract class ActivityRetainedC implements ActivityRetainedComponent, ActivityComponentManager.ActivityComponentBuilderEntryPoint, HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedLifecycleEntryPoint, GeneratedComponent {

        @Subcomponent.Builder
        interface Builder extends ActivityRetainedComponentBuilder {
        }
    }

    @Module(subcomponents = {ActivityRetainedC.class})
    interface ActivityRetainedCBuilderModule {
        @Binds
        ActivityRetainedComponentBuilder bind(ActivityRetainedC.Builder builder);
    }

    @Subcomponent(modules = {ViewWithFragmentCBuilderModule.class})
    public static abstract class FragmentC implements FragmentComponent, DefaultViewModelFactories.FragmentEntryPoint, ViewComponentManager.ViewWithFragmentComponentBuilderEntryPoint, GeneratedComponent, PaymentMethodFragment_GeneratedInjector, BaseFragment_GeneratedInjector, CameraFragment_GeneratedInjector, ChooseLanguageFragment_GeneratedInjector, HelpFragment_GeneratedInjector, HomeFragment_GeneratedInjector, MoreFragment_GeneratedInjector, MoreInnerFragment_GeneratedInjector, SearchFragment_GeneratedInjector, SettingFragment_GeneratedInjector, TextRecognitionTranslatorFragment_GeneratedInjector, TransactionHistoryFragment_GeneratedInjector, UpdateProfileFragment_GeneratedInjector, VoiceRecognitionFragment_GeneratedInjector, AdvertisementOnBoardingFragment_GeneratedInjector, CameraPermissionFragment_GeneratedInjector, LanguageOnBoardingFragment_GeneratedInjector, MicrophonePermissionFragment_GeneratedInjector, ProPlanRequiredFragment_GeneratedInjector, PushNotificationOnBoardingFragment_GeneratedInjector, AIFragment_GeneratedInjector, CategoriesFragment_GeneratedInjector, EnterPasswordFragment_GeneratedInjector, DirectoryWordsFragment_GeneratedInjector, FavoritesFragment_GeneratedInjector, FinishRegistrationFragment_GeneratedInjector, ForgetPasswordFragment_GeneratedInjector, FullscreenModal_GeneratedInjector, HistoryFragment_GeneratedInjector, LoginOnBoardingFragment_GeneratedInjector, LoginSignupFragment_GeneratedInjector, LogoutFragment_GeneratedInjector, PricingFragment_GeneratedInjector, ProfileFragment_GeneratedInjector, RegistrationFormFragment_GeneratedInjector, ResultOrderModalFragment_GeneratedInjector, SelectFavoriteFolderModal_GeneratedInjector, SortDialog_GeneratedInjector, WodHistoryFragment_GeneratedInjector, WodYearHistoryFragment_GeneratedInjector, WordCategoryFragment_GeneratedInjector, WordResultFragment_GeneratedInjector {

        @Subcomponent.Builder
        interface Builder extends FragmentComponentBuilder {
        }
    }

    @Module(subcomponents = {FragmentC.class})
    interface FragmentCBuilderModule {
        @Binds
        FragmentComponentBuilder bind(FragmentC.Builder builder);
    }

    @Subcomponent
    public static abstract class ServiceC implements ServiceComponent, GeneratedComponent {

        @Subcomponent.Builder
        interface Builder extends ServiceComponentBuilder {
        }
    }

    @Module(subcomponents = {ServiceC.class})
    interface ServiceCBuilderModule {
        @Binds
        ServiceComponentBuilder bind(ServiceC.Builder builder);
    }

    @Singleton
    @Component(modules = {AppModule.class, ApplicationContextModule.class, ActivityRetainedCBuilderModule.class, ServiceCBuilderModule.class, HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule.class, RetrofitBuilder.class})
    @javax.inject.Singleton
    public static abstract class SingletonC implements FragmentGetContextFix.FragmentGetContextFixEntryPoint, HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedComponentBuilderEntryPoint, ServiceComponentManager.ServiceComponentBuilderEntryPoint, SingletonComponent, GeneratedComponent, FDApplication_GeneratedInjector, FirebaseAnalyticsEntryPoint {
    }

    @Subcomponent(modules = {CustomViewModule.class})
    public static abstract class ViewC implements ViewComponent, GeneratedComponent {

        @Subcomponent.Builder
        interface Builder extends ViewComponentBuilder {
        }
    }

    @Module(subcomponents = {ViewC.class})
    interface ViewCBuilderModule {
        @Binds
        ViewComponentBuilder bind(ViewC.Builder builder);
    }

    @Subcomponent(modules = {AIFragmentViewModel_HiltModules.BindsModule.class, BazaarPaymentViewModel_HiltModules.BindsModule.class, CategoriesViewModel_HiltModules.BindsModule.class, DirectoryWordsViewModel_HiltModules.BindsModule.class, EnterPasswordViewModel_HiltModules.BindsModule.class, FavoritesViewModel_HiltModules.BindsModule.class, ForgetPasswordViewModel_HiltModules.BindsModule.class, GooglePaymentViewModel_HiltModules.BindsModule.class, HiltWrapper_HiltViewModelFactory_ViewModelModule.class, HistoryViewModel_HiltModules.BindsModule.class, HomeViewModel_HiltModules.BindsModule.class, LoginViewModel_HiltModules.BindsModule.class, LogoutViewModel_HiltModules.BindsModule.class, MainViewModel_HiltModules.BindsModule.class, PaymentMethodViewModel_HiltModules.BindsModule.class, PricingViewModel_HiltModules.BindsModule.class, ProfileViewModal_HiltModules.BindsModule.class, RegistrationFormViewModel_HiltModules.BindsModule.class, ResultOrderModalViewModel_HiltModules.BindsModule.class, SortDialogViewModel_HiltModules.BindsModule.class, SyncViewModel_HiltModules.BindsModule.class, TextRecognitionTranslatorViewModel_HiltModules.BindsModule.class, VoiceRecognitionViewModel_HiltModules.BindsModule.class, WodHistoryViewModel_HiltModules.BindsModule.class, WordCategoryViewModel_HiltModules.BindsModule.class, WordResultViewModel_HiltModules.BindsModule.class})
    public static abstract class ViewModelC implements ViewModelComponent, HiltViewModelFactory.ViewModelFactoriesEntryPoint, GeneratedComponent {

        @Subcomponent.Builder
        interface Builder extends ViewModelComponentBuilder {
        }
    }

    @Module(subcomponents = {ViewModelC.class})
    interface ViewModelCBuilderModule {
        @Binds
        ViewModelComponentBuilder bind(ViewModelC.Builder builder);
    }

    @Subcomponent
    public static abstract class ViewWithFragmentC implements ViewWithFragmentComponent, GeneratedComponent {

        @Subcomponent.Builder
        interface Builder extends ViewWithFragmentComponentBuilder {
        }
    }

    @Module(subcomponents = {ViewWithFragmentC.class})
    interface ViewWithFragmentCBuilderModule {
        @Binds
        ViewWithFragmentComponentBuilder bind(ViewWithFragmentC.Builder builder);
    }

    private FDApplication_HiltComponents() {
    }
}
