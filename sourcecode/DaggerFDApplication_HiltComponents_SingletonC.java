package fast.dic.dict;

import android.app.Activity;
import android.app.Service;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import dagger.hilt.android.ActivityRetainedLifecycle;
import dagger.hilt.android.ViewModelLifecycle;
import dagger.hilt.android.internal.builders.ActivityComponentBuilder;
import dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder;
import dagger.hilt.android.internal.builders.FragmentComponentBuilder;
import dagger.hilt.android.internal.builders.ServiceComponentBuilder;
import dagger.hilt.android.internal.builders.ViewComponentBuilder;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories_InternalFactoryFactory_Factory;
import dagger.hilt.android.internal.managers.ActivityRetainedComponentManager_LifecycleModule_ProvideActivityRetainedLifecycleFactory;
import dagger.hilt.android.internal.managers.SavedStateHandleHolder;
import dagger.hilt.android.internal.modules.ApplicationContextModule;
import dagger.hilt.android.internal.modules.ApplicationContextModule_ProvideApplicationFactory;
import dagger.hilt.android.internal.modules.ApplicationContextModule_ProvideContextFactory;
import dagger.internal.DoubleCheck;
import dagger.internal.LazyClassKeyMap;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import fast.dic.dict.activities.MainActivity;
import fast.dic.dict.activities.MainViewModel;
import fast.dic.dict.activities.MainViewModel_HiltModules;
import fast.dic.dict.activities.MainViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.activities.MainViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.activities.ShareEntryActivity;
import fast.dic.dict.activities.SplashActivity;
import fast.dic.dict.adapters.MoreAdapter;
import fast.dic.dict.adapters.WordSuggestionAdapter;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.bases.BaseActivity;
import fast.dic.dict.bases.BaseFragment;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.data.billing.PlayBillingRepository;
import fast.dic.dict.data.sync.repository.FDSyncSession;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.fragments.CameraFragment;
import fast.dic.dict.fragments.CameraFragment_MembersInjector;
import fast.dic.dict.fragments.ChooseLanguageFragment;
import fast.dic.dict.fragments.ChooseLanguageFragment_MembersInjector;
import fast.dic.dict.fragments.HelpFragment;
import fast.dic.dict.fragments.HomeFragment;
import fast.dic.dict.fragments.MoreFragment;
import fast.dic.dict.fragments.MoreFragment_MembersInjector;
import fast.dic.dict.fragments.MoreInnerFragment;
import fast.dic.dict.fragments.MoreInnerFragment_MembersInjector;
import fast.dic.dict.fragments.SearchFragment;
import fast.dic.dict.fragments.SearchFragment_MembersInjector;
import fast.dic.dict.fragments.SettingFragment;
import fast.dic.dict.fragments.SettingFragment_MembersInjector;
import fast.dic.dict.fragments.TextRecognitionTranslatorFragment;
import fast.dic.dict.fragments.TextRecognitionTranslatorFragment_MembersInjector;
import fast.dic.dict.fragments.TransactionHistoryFragment;
import fast.dic.dict.fragments.UpdateProfileFragment;
import fast.dic.dict.fragments.UpdateProfileFragment_MembersInjector;
import fast.dic.dict.fragments.VoiceRecognitionFragment;
import fast.dic.dict.fragments.VoiceRecognitionViewModel;
import fast.dic.dict.fragments.VoiceRecognitionViewModel_HiltModules;
import fast.dic.dict.fragments.VoiceRecognitionViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.fragments.VoiceRecognitionViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.fragments.onboardings.AdvertisementOnBoardingFragment;
import fast.dic.dict.fragments.onboardings.CameraPermissionFragment;
import fast.dic.dict.fragments.onboardings.LanguageOnBoardingFragment;
import fast.dic.dict.fragments.onboardings.MicrophonePermissionFragment;
import fast.dic.dict.fragments.onboardings.ProPlanRequiredFragment;
import fast.dic.dict.fragments.onboardings.PushNotificationOnBoardingFragment;
import fast.dic.dict.helpers.FDConnectivityHelper;
import fast.dic.dict.helpers.FDListPath;
import fast.dic.dict.helpers.FDMainDatabaseHelper;
import fast.dic.dict.helpers.FDOfflinePlayer;
import fast.dic.dict.helpers.FDSoundEffect;
import fast.dic.dict.helpers.FDWordCategory;
import fast.dic.dict.helpers.database.FDResultLabel;
import fast.dic.dict.helpers.database.couchbase.FDFavourite;
import fast.dic.dict.helpers.database.couchbase.FDFavouriteFolder;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.presentation.ai_screen.AIFragment;
import fast.dic.dict.presentation.ai_screen.AIFragmentViewModel;
import fast.dic.dict.presentation.ai_screen.AIFragmentViewModel_HiltModules;
import fast.dic.dict.presentation.ai_screen.AIFragmentViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.ai_screen.AIFragmentViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.ai_screen.AIFragment_MembersInjector;
import fast.dic.dict.presentation.categories_screen.CategoriesAdapter;
import fast.dic.dict.presentation.categories_screen.CategoriesFragment;
import fast.dic.dict.presentation.categories_screen.CategoriesFragment_MembersInjector;
import fast.dic.dict.presentation.categories_screen.CategoriesViewModel;
import fast.dic.dict.presentation.categories_screen.CategoriesViewModel_HiltModules;
import fast.dic.dict.presentation.categories_screen.CategoriesViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.categories_screen.CategoriesViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.common.SyncViewModel;
import fast.dic.dict.presentation.common.SyncViewModel_HiltModules;
import fast.dic.dict.presentation.common.SyncViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.common.SyncViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment;
import fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel;
import fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel_HiltModules;
import fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment;
import fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment_MembersInjector;
import fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel;
import fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel_HiltModules;
import fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.favorite_folders_screen.FavoriteWordAdapter;
import fast.dic.dict.presentation.favorite_screen.FavoriteFoldersAdapter;
import fast.dic.dict.presentation.favorite_screen.FavoritesFragment;
import fast.dic.dict.presentation.favorite_screen.FavoritesFragment_MembersInjector;
import fast.dic.dict.presentation.favorite_screen.FavoritesViewModel;
import fast.dic.dict.presentation.favorite_screen.FavoritesViewModel_HiltModules;
import fast.dic.dict.presentation.favorite_screen.FavoritesViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.favorite_screen.FavoritesViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.finish_registration_screen.FinishRegistrationFragment;
import fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment;
import fast.dic.dict.presentation.forget_password_screen.ForgetPasswordViewModel;
import fast.dic.dict.presentation.forget_password_screen.ForgetPasswordViewModel_HiltModules;
import fast.dic.dict.presentation.forget_password_screen.ForgetPasswordViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.forget_password_screen.ForgetPasswordViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.fullscreen_modal.FullscreenModal;
import fast.dic.dict.presentation.fullscreen_modal.FullscreenModal_MembersInjector;
import fast.dic.dict.presentation.history_screen.HistoryAdapter;
import fast.dic.dict.presentation.history_screen.HistoryFragment;
import fast.dic.dict.presentation.history_screen.HistoryFragment_MembersInjector;
import fast.dic.dict.presentation.history_screen.HistoryViewModel;
import fast.dic.dict.presentation.history_screen.HistoryViewModel_HiltModules;
import fast.dic.dict.presentation.history_screen.HistoryViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.history_screen.HistoryViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.login_onboarding_screen.LoginOnBoardingFragment;
import fast.dic.dict.presentation.login_screen.LoginSignupFragment;
import fast.dic.dict.presentation.login_screen.LoginViewModel;
import fast.dic.dict.presentation.login_screen.LoginViewModel_HiltModules;
import fast.dic.dict.presentation.login_screen.LoginViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.login_screen.LoginViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.logout_screen.LogoutFragment;
import fast.dic.dict.presentation.logout_screen.LogoutViewModel;
import fast.dic.dict.presentation.logout_screen.LogoutViewModel_HiltModules;
import fast.dic.dict.presentation.logout_screen.LogoutViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.logout_screen.LogoutViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.pricing_screen.PricingFragment;
import fast.dic.dict.presentation.pricing_screen.PricingFragment_MembersInjector;
import fast.dic.dict.presentation.pricing_screen.PricingViewModel;
import fast.dic.dict.presentation.pricing_screen.PricingViewModel_HiltModules;
import fast.dic.dict.presentation.pricing_screen.PricingViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.pricing_screen.PricingViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter;
import fast.dic.dict.presentation.profile_screen.ProfileFragment;
import fast.dic.dict.presentation.profile_screen.ProfileFragment_MembersInjector;
import fast.dic.dict.presentation.profile_screen.ProfileViewModal;
import fast.dic.dict.presentation.profile_screen.ProfileViewModal_HiltModules;
import fast.dic.dict.presentation.profile_screen.ProfileViewModal_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.profile_screen.ProfileViewModal_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment;
import fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel;
import fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel_HiltModules;
import fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.result_order_modal.ResultOrderAdapter;
import fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment;
import fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment_MembersInjector;
import fast.dic.dict.presentation.result_order_modal.ResultOrderModalViewModel;
import fast.dic.dict.presentation.result_order_modal.ResultOrderModalViewModel_HiltModules;
import fast.dic.dict.presentation.result_order_modal.ResultOrderModalViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.result_order_modal.ResultOrderModalViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal;
import fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal_MembersInjector;
import fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFoldersAdapter;
import fast.dic.dict.presentation.sort_screen.SortDialog;
import fast.dic.dict.presentation.sort_screen.SortDialogAdapter;
import fast.dic.dict.presentation.sort_screen.SortDialogViewModel;
import fast.dic.dict.presentation.sort_screen.SortDialogViewModel_HiltModules;
import fast.dic.dict.presentation.sort_screen.SortDialogViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.sort_screen.SortDialogViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.sort_screen.SortDialog_MembersInjector;
import fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment;
import fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment_MembersInjector;
import fast.dic.dict.presentation.wod_history_screen.WodHistoryViewModel;
import fast.dic.dict.presentation.wod_history_screen.WodHistoryViewModel_HiltModules;
import fast.dic.dict.presentation.wod_history_screen.WodHistoryViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.wod_history_screen.WodHistoryViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.wod_history_screen.WodMonthHistoryAdapter;
import fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryAdapter;
import fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryFragment;
import fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryFragment_MembersInjector;
import fast.dic.dict.presentation.word_category_screen.WordCategoryAdapter;
import fast.dic.dict.presentation.word_category_screen.WordCategoryFragment;
import fast.dic.dict.presentation.word_category_screen.WordCategoryFragment_MembersInjector;
import fast.dic.dict.presentation.word_category_screen.WordCategoryViewModel;
import fast.dic.dict.presentation.word_category_screen.WordCategoryViewModel_HiltModules;
import fast.dic.dict.presentation.word_category_screen.WordCategoryViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.word_category_screen.WordCategoryViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.presentation.word_result_screen.WordResultFragment;
import fast.dic.dict.presentation.word_result_screen.WordResultFragment_MembersInjector;
import fast.dic.dict.presentation.word_result_screen.WordResultViewModel;
import fast.dic.dict.presentation.word_result_screen.WordResultViewModel_HiltModules;
import fast.dic.dict.presentation.word_result_screen.WordResultViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.presentation.word_result_screen.WordResultViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.services.ApiService;
import fast.dic.dict.services.FDAds;
import fast.dic.dict.services.RetrofitBuilder_GetRetrofitFactory;
import fast.dic.dict.services.RetrofitBuilder_ProvideApiServiceFactory;
import fast.dic.dict.services.WebService;
import fast.dic.dict.services.parse.FDParseWrapper;
import fast.dic.dict.utils.FDCategory;
import fast.dic.dict.utils.FDHtml;
import fast.dic.dict.utils.FDImageRecognizer;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.viewmodels.BazaarPaymentViewModel;
import fast.dic.dict.viewmodels.BazaarPaymentViewModel_HiltModules;
import fast.dic.dict.viewmodels.BazaarPaymentViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.viewmodels.BazaarPaymentViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.viewmodels.PaymentMethodViewModel;
import fast.dic.dict.viewmodels.PaymentMethodViewModel_HiltModules;
import fast.dic.dict.viewmodels.PaymentMethodViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.viewmodels.PaymentMethodViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel;
import fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel_HiltModules;
import fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.viewmodels.fragments.HomeViewModel;
import fast.dic.dict.viewmodels.fragments.HomeViewModel_HiltModules;
import fast.dic.dict.viewmodels.fragments.HomeViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.viewmodels.fragments.HomeViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import fast.dic.dict.viewmodels.fragments.TextRecognitionTranslatorViewModel;
import fast.dic.dict.viewmodels.fragments.TextRecognitionTranslatorViewModel_HiltModules;
import fast.dic.dict.viewmodels.fragments.TextRecognitionTranslatorViewModel_HiltModules_BindsModule_Binds_LazyMapKey;
import fast.dic.dict.viewmodels.fragments.TextRecognitionTranslatorViewModel_HiltModules_KeyModule_Provide_LazyMapKey;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes11.dex */
public final class DaggerFDApplication_HiltComponents_SingletonC {
    private DaggerFDApplication_HiltComponents_SingletonC() {
    }

    public static Builder builder() {
        return new Builder();
    }

    public static final class Builder {
        private ApplicationContextModule applicationContextModule;

        private Builder() {
        }

        public Builder applicationContextModule(ApplicationContextModule applicationContextModule) {
            this.applicationContextModule = (ApplicationContextModule) Preconditions.checkNotNull(applicationContextModule);
            return this;
        }

        public FDApplication_HiltComponents.SingletonC build() {
            Preconditions.checkBuilderRequirement(this.applicationContextModule, ApplicationContextModule.class);
            return new SingletonCImpl(this.applicationContextModule);
        }
    }

    private static final class ActivityRetainedCBuilder implements FDApplication_HiltComponents.ActivityRetainedC.Builder {
        private SavedStateHandleHolder savedStateHandleHolder;
        private final SingletonCImpl singletonCImpl;

        private ActivityRetainedCBuilder(SingletonCImpl singletonCImpl) {
            this.singletonCImpl = singletonCImpl;
        }

        @Override // dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder
        public ActivityRetainedCBuilder savedStateHandleHolder(SavedStateHandleHolder savedStateHandleHolder) {
            this.savedStateHandleHolder = (SavedStateHandleHolder) Preconditions.checkNotNull(savedStateHandleHolder);
            return this;
        }

        @Override // dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder
        public FDApplication_HiltComponents.ActivityRetainedC build() {
            Preconditions.checkBuilderRequirement(this.savedStateHandleHolder, SavedStateHandleHolder.class);
            return new ActivityRetainedCImpl(this.singletonCImpl, this.savedStateHandleHolder);
        }
    }

    private static final class ActivityCBuilder implements FDApplication_HiltComponents.ActivityC.Builder {
        private Activity activity;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final SingletonCImpl singletonCImpl;

        private ActivityCBuilder(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
        }

        @Override // dagger.hilt.android.internal.builders.ActivityComponentBuilder
        public ActivityCBuilder activity(Activity activity) {
            this.activity = (Activity) Preconditions.checkNotNull(activity);
            return this;
        }

        @Override // dagger.hilt.android.internal.builders.ActivityComponentBuilder
        public FDApplication_HiltComponents.ActivityC build() {
            Preconditions.checkBuilderRequirement(this.activity, Activity.class);
            return new ActivityCImpl(this.singletonCImpl, this.activityRetainedCImpl, this.activity);
        }
    }

    private static final class FragmentCBuilder implements FDApplication_HiltComponents.FragmentC.Builder {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private Fragment fragment;
        private final SingletonCImpl singletonCImpl;

        private FragmentCBuilder(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
        }

        @Override // dagger.hilt.android.internal.builders.FragmentComponentBuilder
        public FragmentCBuilder fragment(Fragment fragment) {
            this.fragment = (Fragment) Preconditions.checkNotNull(fragment);
            return this;
        }

        @Override // dagger.hilt.android.internal.builders.FragmentComponentBuilder
        public FDApplication_HiltComponents.FragmentC build() {
            Preconditions.checkBuilderRequirement(this.fragment, Fragment.class);
            return new FragmentCImpl(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl, this.fragment);
        }
    }

    private static final class ViewWithFragmentCBuilder implements FDApplication_HiltComponents.ViewWithFragmentC.Builder {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final FragmentCImpl fragmentCImpl;
        private final SingletonCImpl singletonCImpl;
        private View view;

        private ViewWithFragmentCBuilder(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl, FragmentCImpl fragmentCImpl) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
            this.fragmentCImpl = fragmentCImpl;
        }

        @Override // dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder
        public ViewWithFragmentCBuilder view(View view) {
            this.view = (View) Preconditions.checkNotNull(view);
            return this;
        }

        @Override // dagger.hilt.android.internal.builders.ViewWithFragmentComponentBuilder
        public FDApplication_HiltComponents.ViewWithFragmentC build() {
            Preconditions.checkBuilderRequirement(this.view, View.class);
            return new ViewWithFragmentCImpl(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl, this.fragmentCImpl, this.view);
        }
    }

    private static final class ViewCBuilder implements FDApplication_HiltComponents.ViewC.Builder {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final SingletonCImpl singletonCImpl;
        private View view;

        private ViewCBuilder(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
        }

        @Override // dagger.hilt.android.internal.builders.ViewComponentBuilder
        public ViewCBuilder view(View view) {
            this.view = (View) Preconditions.checkNotNull(view);
            return this;
        }

        @Override // dagger.hilt.android.internal.builders.ViewComponentBuilder
        public FDApplication_HiltComponents.ViewC build() {
            Preconditions.checkBuilderRequirement(this.view, View.class);
            return new ViewCImpl(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl, this.view);
        }
    }

    private static final class ViewModelCBuilder implements FDApplication_HiltComponents.ViewModelC.Builder {
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private SavedStateHandle savedStateHandle;
        private final SingletonCImpl singletonCImpl;
        private ViewModelLifecycle viewModelLifecycle;

        private ViewModelCBuilder(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
        }

        @Override // dagger.hilt.android.internal.builders.ViewModelComponentBuilder
        public ViewModelCBuilder savedStateHandle(SavedStateHandle handle) {
            this.savedStateHandle = (SavedStateHandle) Preconditions.checkNotNull(handle);
            return this;
        }

        @Override // dagger.hilt.android.internal.builders.ViewModelComponentBuilder
        public ViewModelCBuilder viewModelLifecycle(ViewModelLifecycle viewModelLifecycle) {
            this.viewModelLifecycle = (ViewModelLifecycle) Preconditions.checkNotNull(viewModelLifecycle);
            return this;
        }

        @Override // dagger.hilt.android.internal.builders.ViewModelComponentBuilder
        public FDApplication_HiltComponents.ViewModelC build() {
            Preconditions.checkBuilderRequirement(this.savedStateHandle, SavedStateHandle.class);
            Preconditions.checkBuilderRequirement(this.viewModelLifecycle, ViewModelLifecycle.class);
            return new ViewModelCImpl(this.singletonCImpl, this.activityRetainedCImpl, this.savedStateHandle, this.viewModelLifecycle);
        }
    }

    private static final class ServiceCBuilder implements FDApplication_HiltComponents.ServiceC.Builder {
        private Service service;
        private final SingletonCImpl singletonCImpl;

        private ServiceCBuilder(SingletonCImpl singletonCImpl) {
            this.singletonCImpl = singletonCImpl;
        }

        @Override // dagger.hilt.android.internal.builders.ServiceComponentBuilder
        public ServiceCBuilder service(Service service) {
            this.service = (Service) Preconditions.checkNotNull(service);
            return this;
        }

        @Override // dagger.hilt.android.internal.builders.ServiceComponentBuilder
        public FDApplication_HiltComponents.ServiceC build() {
            Preconditions.checkBuilderRequirement(this.service, Service.class);
            return new ServiceCImpl(this.singletonCImpl, this.service);
        }
    }

    private static final class ViewWithFragmentCImpl extends FDApplication_HiltComponents.ViewWithFragmentC {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final FragmentCImpl fragmentCImpl;
        private final SingletonCImpl singletonCImpl;
        private final ViewWithFragmentCImpl viewWithFragmentCImpl = this;

        ViewWithFragmentCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl, FragmentCImpl fragmentCImpl, View viewParam) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
            this.fragmentCImpl = fragmentCImpl;
        }
    }

    private static final class FragmentCImpl extends FDApplication_HiltComponents.FragmentC {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final FragmentCImpl fragmentCImpl = this;
        private final SingletonCImpl singletonCImpl;

        @Override // fast.dic.dict.fragments.onboardings.CameraPermissionFragment_GeneratedInjector
        public void injectCameraPermissionFragment(CameraPermissionFragment arg0) {
        }

        @Override // fast.dic.dict.fragments.HomeFragment_GeneratedInjector
        public void injectHomeFragment(HomeFragment arg0) {
        }

        @Override // fast.dic.dict.fragments.onboardings.MicrophonePermissionFragment_GeneratedInjector
        public void injectMicrophonePermissionFragment(MicrophonePermissionFragment arg0) {
        }

        @Override // fast.dic.dict.fragments.onboardings.ProPlanRequiredFragment_GeneratedInjector
        public void injectProPlanRequiredFragment(ProPlanRequiredFragment arg0) {
        }

        @Override // fast.dic.dict.fragments.VoiceRecognitionFragment_GeneratedInjector
        public void injectVoiceRecognitionFragment(VoiceRecognitionFragment arg0) {
        }

        FragmentCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl, Fragment fragmentParam) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
        }

        FDSoundEffect fDSoundEffect() {
            return new FDSoundEffect(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
        }

        FDResultLabel fDResultLabel() {
            return new FDResultLabel(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
        }

        FDHtml fDHtml() {
            return new FDHtml(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule), this.singletonCImpl.fDFavouriteProvider.get(), fDResultLabel());
        }

        FDOfflinePlayer fDOfflinePlayer() {
            return new FDOfflinePlayer(this.singletonCImpl.localStorage(), ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
        }

        FDConnectivityHelper fDConnectivityHelper() {
            return new FDConnectivityHelper(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
        }

        @Override // dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories.FragmentEntryPoint
        public DefaultViewModelFactories.InternalFactoryFactory getHiltInternalFactoryFactory() {
            return this.activityCImpl.getHiltInternalFactoryFactory();
        }

        @Override // dagger.hilt.android.internal.managers.ViewComponentManager.ViewWithFragmentComponentBuilderEntryPoint
        public ViewWithFragmentComponentBuilder viewWithFragmentComponentBuilder() {
            return new ViewWithFragmentCBuilder(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl, this.fragmentCImpl);
        }

        @Override // fast.dic.dict.PaymentMethodFragment_GeneratedInjector
        public void injectPaymentMethodFragment(PaymentMethodFragment arg0) {
            injectPaymentMethodFragment2(arg0);
        }

        @Override // fast.dic.dict.bases.BaseFragment_GeneratedInjector
        public void injectBaseFragment(BaseFragment arg0) {
            injectBaseFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.CameraFragment_GeneratedInjector
        public void injectCameraFragment(CameraFragment arg0) {
            injectCameraFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.ChooseLanguageFragment_GeneratedInjector
        public void injectChooseLanguageFragment(ChooseLanguageFragment arg0) {
            injectChooseLanguageFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.HelpFragment_GeneratedInjector
        public void injectHelpFragment(HelpFragment arg0) {
            injectHelpFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.MoreFragment_GeneratedInjector
        public void injectMoreFragment(MoreFragment arg0) {
            injectMoreFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.MoreInnerFragment_GeneratedInjector
        public void injectMoreInnerFragment(MoreInnerFragment arg0) {
            injectMoreInnerFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.SearchFragment_GeneratedInjector
        public void injectSearchFragment(SearchFragment arg0) {
            injectSearchFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.SettingFragment_GeneratedInjector
        public void injectSettingFragment(SettingFragment arg0) {
            injectSettingFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.TextRecognitionTranslatorFragment_GeneratedInjector
        public void injectTextRecognitionTranslatorFragment(TextRecognitionTranslatorFragment arg0) {
            injectTextRecognitionTranslatorFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.TransactionHistoryFragment_GeneratedInjector
        public void injectTransactionHistoryFragment(TransactionHistoryFragment arg0) {
            injectTransactionHistoryFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.UpdateProfileFragment_GeneratedInjector
        public void injectUpdateProfileFragment(UpdateProfileFragment arg0) {
            injectUpdateProfileFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.onboardings.AdvertisementOnBoardingFragment_GeneratedInjector
        public void injectAdvertisementOnBoardingFragment(AdvertisementOnBoardingFragment arg0) {
            injectAdvertisementOnBoardingFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.onboardings.LanguageOnBoardingFragment_GeneratedInjector
        public void injectLanguageOnBoardingFragment(LanguageOnBoardingFragment arg0) {
            injectLanguageOnBoardingFragment2(arg0);
        }

        @Override // fast.dic.dict.fragments.onboardings.PushNotificationOnBoardingFragment_GeneratedInjector
        public void injectPushNotificationOnBoardingFragment(PushNotificationOnBoardingFragment arg0) {
            injectPushNotificationOnBoardingFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.ai_screen.AIFragment_GeneratedInjector
        public void injectAIFragment(AIFragment arg0) {
            injectAIFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.categories_screen.CategoriesFragment_GeneratedInjector
        public void injectCategoriesFragment(CategoriesFragment arg0) {
            injectCategoriesFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment_GeneratedInjector
        public void injectEnterPasswordFragment(EnterPasswordFragment arg0) {
            injectEnterPasswordFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment_GeneratedInjector
        public void injectDirectoryWordsFragment(DirectoryWordsFragment arg0) {
            injectDirectoryWordsFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.favorite_screen.FavoritesFragment_GeneratedInjector
        public void injectFavoritesFragment(FavoritesFragment arg0) {
            injectFavoritesFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.finish_registration_screen.FinishRegistrationFragment_GeneratedInjector
        public void injectFinishRegistrationFragment(FinishRegistrationFragment arg0) {
            injectFinishRegistrationFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment_GeneratedInjector
        public void injectForgetPasswordFragment(ForgetPasswordFragment arg0) {
            injectForgetPasswordFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.fullscreen_modal.FullscreenModal_GeneratedInjector
        public void injectFullscreenModal(FullscreenModal arg0) {
            injectFullscreenModal2(arg0);
        }

        @Override // fast.dic.dict.presentation.history_screen.HistoryFragment_GeneratedInjector
        public void injectHistoryFragment(HistoryFragment arg0) {
            injectHistoryFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.login_onboarding_screen.LoginOnBoardingFragment_GeneratedInjector
        public void injectLoginOnBoardingFragment(LoginOnBoardingFragment arg0) {
            injectLoginOnBoardingFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.login_screen.LoginSignupFragment_GeneratedInjector
        public void injectLoginSignupFragment(LoginSignupFragment arg0) {
            injectLoginSignupFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.logout_screen.LogoutFragment_GeneratedInjector
        public void injectLogoutFragment(LogoutFragment arg0) {
            injectLogoutFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.pricing_screen.PricingFragment_GeneratedInjector
        public void injectPricingFragment(PricingFragment arg0) {
            injectPricingFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.profile_screen.ProfileFragment_GeneratedInjector
        public void injectProfileFragment(ProfileFragment arg0) {
            injectProfileFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment_GeneratedInjector
        public void injectRegistrationFormFragment(RegistrationFormFragment arg0) {
            injectRegistrationFormFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment_GeneratedInjector
        public void injectResultOrderModalFragment(ResultOrderModalFragment arg0) {
            injectResultOrderModalFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal_GeneratedInjector
        public void injectSelectFavoriteFolderModal(SelectFavoriteFolderModal arg0) {
            injectSelectFavoriteFolderModal2(arg0);
        }

        @Override // fast.dic.dict.presentation.sort_screen.SortDialog_GeneratedInjector
        public void injectSortDialog(SortDialog arg0) {
            injectSortDialog2(arg0);
        }

        @Override // fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment_GeneratedInjector
        public void injectWodHistoryFragment(WodHistoryFragment arg0) {
            injectWodHistoryFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryFragment_GeneratedInjector
        public void injectWodYearHistoryFragment(WodYearHistoryFragment arg0) {
            injectWodYearHistoryFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.word_category_screen.WordCategoryFragment_GeneratedInjector
        public void injectWordCategoryFragment(WordCategoryFragment arg0) {
            injectWordCategoryFragment2(arg0);
        }

        @Override // fast.dic.dict.presentation.word_result_screen.WordResultFragment_GeneratedInjector
        public void injectWordResultFragment(WordResultFragment arg0) {
            injectWordResultFragment2(arg0);
        }

        private PaymentMethodFragment injectPaymentMethodFragment2(PaymentMethodFragment instance) {
            PaymentMethodFragment_MembersInjector.injectFirebaseUserPropertiesManager(instance, this.singletonCImpl.firebaseUserPropertiesManagerProvider.get());
            return instance;
        }

        private BaseFragment injectBaseFragment2(BaseFragment instance2) {
            BaseFragment_MembersInjector.injectHistory(instance2, this.singletonCImpl.fDHistoryProvider.get());
            return instance2;
        }

        private CameraFragment injectCameraFragment2(CameraFragment instance3) {
            CameraFragment_MembersInjector.injectSoundEffect(instance3, fDSoundEffect());
            return instance3;
        }

        private ChooseLanguageFragment injectChooseLanguageFragment2(ChooseLanguageFragment instance4) {
            BaseFragment_MembersInjector.injectHistory(instance4, this.singletonCImpl.fDHistoryProvider.get());
            ChooseLanguageFragment_MembersInjector.injectFdHtml(instance4, fDHtml());
            return instance4;
        }

        private HelpFragment injectHelpFragment2(HelpFragment instance5) {
            BaseFragment_MembersInjector.injectHistory(instance5, this.singletonCImpl.fDHistoryProvider.get());
            return instance5;
        }

        private MoreFragment injectMoreFragment2(MoreFragment instance6) {
            BaseFragment_MembersInjector.injectHistory(instance6, this.singletonCImpl.fDHistoryProvider.get());
            MoreFragment_MembersInjector.injectAdapter(instance6, new MoreAdapter());
            return instance6;
        }

        private MoreInnerFragment injectMoreInnerFragment2(MoreInnerFragment instance7) {
            BaseFragment_MembersInjector.injectHistory(instance7, this.singletonCImpl.fDHistoryProvider.get());
            MoreInnerFragment_MembersInjector.injectAdapter(instance7, new MoreAdapter());
            return instance7;
        }

        private SearchFragment injectSearchFragment2(SearchFragment instance8) {
            SearchFragment_MembersInjector.injectHistory(instance8, this.singletonCImpl.fDHistoryProvider.get());
            SearchFragment_MembersInjector.injectDatabaseHelper(instance8, this.singletonCImpl.fDDatabaseManagerProvider.get());
            SearchFragment_MembersInjector.injectSuggestionAdapter(instance8, new WordSuggestionAdapter());
            return instance8;
        }

        private SettingFragment injectSettingFragment2(SettingFragment instance9) {
            SettingFragment_MembersInjector.injectLocalStorage(instance9, this.singletonCImpl.localStorage());
            return instance9;
        }

        private TextRecognitionTranslatorFragment injectTextRecognitionTranslatorFragment2(TextRecognitionTranslatorFragment instance10) {
            TextRecognitionTranslatorFragment_MembersInjector.injectSoundEffect(instance10, fDSoundEffect());
            return instance10;
        }

        private TransactionHistoryFragment injectTransactionHistoryFragment2(TransactionHistoryFragment instance11) {
            BaseFragment_MembersInjector.injectHistory(instance11, this.singletonCImpl.fDHistoryProvider.get());
            return instance11;
        }

        private UpdateProfileFragment injectUpdateProfileFragment2(UpdateProfileFragment instance12) {
            BaseFragment_MembersInjector.injectHistory(instance12, this.singletonCImpl.fDHistoryProvider.get());
            UpdateProfileFragment_MembersInjector.injectFdParseWrapper(instance12, this.singletonCImpl.fDParseWrapper());
            return instance12;
        }

        private AdvertisementOnBoardingFragment injectAdvertisementOnBoardingFragment2(AdvertisementOnBoardingFragment instance13) {
            BaseFragment_MembersInjector.injectHistory(instance13, this.singletonCImpl.fDHistoryProvider.get());
            return instance13;
        }

        private LanguageOnBoardingFragment injectLanguageOnBoardingFragment2(LanguageOnBoardingFragment instance14) {
            BaseFragment_MembersInjector.injectHistory(instance14, this.singletonCImpl.fDHistoryProvider.get());
            return instance14;
        }

        private PushNotificationOnBoardingFragment injectPushNotificationOnBoardingFragment2(PushNotificationOnBoardingFragment instance15) {
            BaseFragment_MembersInjector.injectHistory(instance15, this.singletonCImpl.fDHistoryProvider.get());
            return instance15;
        }

        private AIFragment injectAIFragment2(AIFragment instance16) {
            BaseFragment_MembersInjector.injectHistory(instance16, this.singletonCImpl.fDHistoryProvider.get());
            AIFragment_MembersInjector.injectOfflinePlayer(instance16, fDOfflinePlayer());
            return instance16;
        }

        private CategoriesFragment injectCategoriesFragment2(CategoriesFragment instance17) {
            CategoriesFragment_MembersInjector.injectAdapter(instance17, new CategoriesAdapter());
            return instance17;
        }

        private EnterPasswordFragment injectEnterPasswordFragment2(EnterPasswordFragment instance18) {
            BaseFragment_MembersInjector.injectHistory(instance18, this.singletonCImpl.fDHistoryProvider.get());
            return instance18;
        }

        private DirectoryWordsFragment injectDirectoryWordsFragment2(DirectoryWordsFragment instance19) {
            BaseFragment_MembersInjector.injectHistory(instance19, this.singletonCImpl.fDHistoryProvider.get());
            DirectoryWordsFragment_MembersInjector.injectAdapter(instance19, new FavoriteWordAdapter());
            return instance19;
        }

        private FavoritesFragment injectFavoritesFragment2(FavoritesFragment instance20) {
            BaseFragment_MembersInjector.injectHistory(instance20, this.singletonCImpl.fDHistoryProvider.get());
            FavoritesFragment_MembersInjector.injectAdapter(instance20, new FavoriteFoldersAdapter());
            FavoritesFragment_MembersInjector.injectConnectivityHelper(instance20, fDConnectivityHelper());
            return instance20;
        }

        private FinishRegistrationFragment injectFinishRegistrationFragment2(FinishRegistrationFragment instance21) {
            BaseFragment_MembersInjector.injectHistory(instance21, this.singletonCImpl.fDHistoryProvider.get());
            return instance21;
        }

        private ForgetPasswordFragment injectForgetPasswordFragment2(ForgetPasswordFragment instance22) {
            BaseFragment_MembersInjector.injectHistory(instance22, this.singletonCImpl.fDHistoryProvider.get());
            return instance22;
        }

        private FullscreenModal injectFullscreenModal2(FullscreenModal instance23) {
            BaseFragment_MembersInjector.injectHistory(instance23, this.singletonCImpl.fDHistoryProvider.get());
            FullscreenModal_MembersInjector.injectFdAds(instance23, this.singletonCImpl.fDAdsProvider.get());
            FullscreenModal_MembersInjector.injectLocalStorage(instance23, this.singletonCImpl.localStorage());
            return instance23;
        }

        private HistoryFragment injectHistoryFragment2(HistoryFragment instance24) {
            BaseFragment_MembersInjector.injectHistory(instance24, this.singletonCImpl.fDHistoryProvider.get());
            HistoryFragment_MembersInjector.injectAdapter(instance24, new HistoryAdapter());
            return instance24;
        }

        private LoginOnBoardingFragment injectLoginOnBoardingFragment2(LoginOnBoardingFragment instance25) {
            BaseFragment_MembersInjector.injectHistory(instance25, this.singletonCImpl.fDHistoryProvider.get());
            return instance25;
        }

        private LoginSignupFragment injectLoginSignupFragment2(LoginSignupFragment instance26) {
            BaseFragment_MembersInjector.injectHistory(instance26, this.singletonCImpl.fDHistoryProvider.get());
            return instance26;
        }

        private LogoutFragment injectLogoutFragment2(LogoutFragment instance27) {
            BaseFragment_MembersInjector.injectHistory(instance27, this.singletonCImpl.fDHistoryProvider.get());
            return instance27;
        }

        private PricingFragment injectPricingFragment2(PricingFragment instance28) {
            BaseFragment_MembersInjector.injectHistory(instance28, this.singletonCImpl.fDHistoryProvider.get());
            PricingFragment_MembersInjector.injectPlanAdapter(instance28, new PricingPlanAdapter());
            return instance28;
        }

        private ProfileFragment injectProfileFragment2(ProfileFragment instance29) {
            BaseFragment_MembersInjector.injectHistory(instance29, this.singletonCImpl.fDHistoryProvider.get());
            ProfileFragment_MembersInjector.injectFirebaseUserPropertiesManager(instance29, this.singletonCImpl.firebaseUserPropertiesManagerProvider.get());
            return instance29;
        }

        private RegistrationFormFragment injectRegistrationFormFragment2(RegistrationFormFragment instance30) {
            BaseFragment_MembersInjector.injectHistory(instance30, this.singletonCImpl.fDHistoryProvider.get());
            return instance30;
        }

        private ResultOrderModalFragment injectResultOrderModalFragment2(ResultOrderModalFragment instance31) {
            ResultOrderModalFragment_MembersInjector.injectAdapter(instance31, new ResultOrderAdapter());
            return instance31;
        }

        private SelectFavoriteFolderModal injectSelectFavoriteFolderModal2(SelectFavoriteFolderModal instance32) {
            SelectFavoriteFolderModal_MembersInjector.injectAdapter(instance32, new SelectFavoriteFoldersAdapter());
            return instance32;
        }

        private SortDialog injectSortDialog2(SortDialog instance33) {
            SortDialog_MembersInjector.injectAdapter(instance33, new SortDialogAdapter());
            return instance33;
        }

        private WodHistoryFragment injectWodHistoryFragment2(WodHistoryFragment instance34) {
            BaseFragment_MembersInjector.injectHistory(instance34, this.singletonCImpl.fDHistoryProvider.get());
            WodHistoryFragment_MembersInjector.injectAdapter(instance34, new WodMonthHistoryAdapter());
            return instance34;
        }

        private WodYearHistoryFragment injectWodYearHistoryFragment2(WodYearHistoryFragment instance35) {
            WodYearHistoryFragment_MembersInjector.injectAdapter(instance35, new WodYearHistoryAdapter());
            return instance35;
        }

        private WordCategoryFragment injectWordCategoryFragment2(WordCategoryFragment instance36) {
            WordCategoryFragment_MembersInjector.injectAdapter(instance36, new WordCategoryAdapter());
            return instance36;
        }

        private WordResultFragment injectWordResultFragment2(WordResultFragment instance37) {
            BaseFragment_MembersInjector.injectHistory(instance37, this.singletonCImpl.fDHistoryProvider.get());
            WordResultFragment_MembersInjector.injectOfflinePlayer(instance37, fDOfflinePlayer());
            return instance37;
        }
    }

    private static final class ViewCImpl extends FDApplication_HiltComponents.ViewC {
        private final ActivityCImpl activityCImpl;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final SingletonCImpl singletonCImpl;
        private final ViewCImpl viewCImpl = this;

        ViewCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ActivityCImpl activityCImpl, View viewParam) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            this.activityCImpl = activityCImpl;
        }
    }

    private static final class ActivityCImpl extends FDApplication_HiltComponents.ActivityC {
        private final ActivityCImpl activityCImpl = this;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        private final SingletonCImpl singletonCImpl;

        @Override // fast.dic.dict.bases.BaseActivity_GeneratedInjector
        public void injectBaseActivity(BaseActivity arg0) {
        }

        @Override // fast.dic.dict.activities.MainActivity_GeneratedInjector
        public void injectMainActivity(MainActivity arg0) {
        }

        @Override // fast.dic.dict.activities.ShareEntryActivity_GeneratedInjector
        public void injectShareEntryActivity(ShareEntryActivity arg0) {
        }

        @Override // fast.dic.dict.activities.SplashActivity_GeneratedInjector
        public void injectSplashActivity(SplashActivity arg0) {
        }

        ActivityCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, Activity activityParam) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
        }

        ImmutableMap keySetMapOfClassOfObjectAndBooleanBuilder() {
            ImmutableMap.Builder builderBuilderWithExpectedSize = ImmutableMap.builderWithExpectedSize(25);
            builderBuilderWithExpectedSize.put(AIFragmentViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(AIFragmentViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(BazaarPaymentViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(BazaarPaymentViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(CategoriesViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(CategoriesViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(DirectoryWordsViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(DirectoryWordsViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(EnterPasswordViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(EnterPasswordViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(FavoritesViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(FavoritesViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(ForgetPasswordViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(ForgetPasswordViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(GooglePaymentViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(GooglePaymentViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(HistoryViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(HistoryViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(HomeViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(HomeViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(LoginViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(LoginViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(LogoutViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(LogoutViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(MainViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(MainViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(PaymentMethodViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(PaymentMethodViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(PricingViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(PricingViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(ProfileViewModal_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(ProfileViewModal_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(RegistrationFormViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(RegistrationFormViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(ResultOrderModalViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(ResultOrderModalViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(SortDialogViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(SortDialogViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(SyncViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(SyncViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(TextRecognitionTranslatorViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(TextRecognitionTranslatorViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(VoiceRecognitionViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(VoiceRecognitionViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(WodHistoryViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(WodHistoryViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(WordCategoryViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(WordCategoryViewModel_HiltModules.KeyModule.provide()));
            builderBuilderWithExpectedSize.put(WordResultViewModel_HiltModules_KeyModule_Provide_LazyMapKey.lazyClassKeyName, Boolean.valueOf(WordResultViewModel_HiltModules.KeyModule.provide()));
            return builderBuilderWithExpectedSize.build();
        }

        @Override // dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories.ActivityEntryPoint
        public DefaultViewModelFactories.InternalFactoryFactory getHiltInternalFactoryFactory() {
            return DefaultViewModelFactories_InternalFactoryFactory_Factory.newInstance(getViewModelKeys(), new ViewModelCBuilder(this.singletonCImpl, this.activityRetainedCImpl));
        }

        @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.ActivityCreatorEntryPoint
        public Map<Class<?>, Boolean> getViewModelKeys() {
            return LazyClassKeyMap.of(keySetMapOfClassOfObjectAndBooleanBuilder());
        }

        @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.ActivityCreatorEntryPoint
        public ViewModelComponentBuilder getViewModelComponentBuilder() {
            return new ViewModelCBuilder(this.singletonCImpl, this.activityRetainedCImpl);
        }

        @Override // dagger.hilt.android.internal.managers.FragmentComponentManager.FragmentComponentBuilderEntryPoint
        public FragmentComponentBuilder fragmentComponentBuilder() {
            return new FragmentCBuilder(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl);
        }

        @Override // dagger.hilt.android.internal.managers.ViewComponentManager.ViewComponentBuilderEntryPoint
        public ViewComponentBuilder viewComponentBuilder() {
            return new ViewCBuilder(this.singletonCImpl, this.activityRetainedCImpl, this.activityCImpl);
        }
    }

    private static final class ViewModelCImpl extends FDApplication_HiltComponents.ViewModelC {
        Provider<AIFragmentViewModel> aIFragmentViewModelProvider;
        private final ActivityRetainedCImpl activityRetainedCImpl;
        Provider<BazaarPaymentViewModel> bazaarPaymentViewModelProvider;
        Provider<CategoriesViewModel> categoriesViewModelProvider;
        Provider<DirectoryWordsViewModel> directoryWordsViewModelProvider;
        Provider<EnterPasswordViewModel> enterPasswordViewModelProvider;
        Provider<FavoritesViewModel> favoritesViewModelProvider;
        Provider<ForgetPasswordViewModel> forgetPasswordViewModelProvider;
        Provider<GooglePaymentViewModel> googlePaymentViewModelProvider;
        Provider<HistoryViewModel> historyViewModelProvider;
        Provider<HomeViewModel> homeViewModelProvider;
        Provider<LoginViewModel> loginViewModelProvider;
        Provider<LogoutViewModel> logoutViewModelProvider;
        Provider<MainViewModel> mainViewModelProvider;
        Provider<PaymentMethodViewModel> paymentMethodViewModelProvider;
        Provider<PricingViewModel> pricingViewModelProvider;
        Provider<ProfileViewModal> profileViewModalProvider;
        Provider<RegistrationFormViewModel> registrationFormViewModelProvider;
        Provider<ResultOrderModalViewModel> resultOrderModalViewModelProvider;
        private final SingletonCImpl singletonCImpl;
        Provider<SortDialogViewModel> sortDialogViewModelProvider;
        Provider<SyncViewModel> syncViewModelProvider;
        Provider<TextRecognitionTranslatorViewModel> textRecognitionTranslatorViewModelProvider;
        private final ViewModelCImpl viewModelCImpl = this;
        Provider<VoiceRecognitionViewModel> voiceRecognitionViewModelProvider;
        Provider<WodHistoryViewModel> wodHistoryViewModelProvider;
        Provider<WordCategoryViewModel> wordCategoryViewModelProvider;
        Provider<WordResultViewModel> wordResultViewModelProvider;

        ViewModelCImpl(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, SavedStateHandle savedStateHandleParam, ViewModelLifecycle viewModelLifecycleParam) {
            this.singletonCImpl = singletonCImpl;
            this.activityRetainedCImpl = activityRetainedCImpl;
            initialize(savedStateHandleParam, viewModelLifecycleParam);
        }

        FDWordCategory fDWordCategory() {
            return new FDWordCategory(this.singletonCImpl.fDMainDatabaseHelperProvider.get(), this.singletonCImpl.fDDatabaseManagerProvider.get(), this.singletonCImpl.localStorage());
        }

        FDConnectivityHelper fDConnectivityHelper() {
            return new FDConnectivityHelper(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
        }

        PlayBillingRepository playBillingRepository() {
            return new PlayBillingRepository(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
        }

        WebService webService() {
            return new WebService(this.singletonCImpl.provideApiServiceProvider.get());
        }

        FDListPath fDListPath() {
            return new FDListPath(this.singletonCImpl.fDHistoryProvider.get(), this.singletonCImpl.fDFavouriteProvider.get());
        }

        FDSoundEffect fDSoundEffect() {
            return new FDSoundEffect(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
        }

        FDSyncSession fDSyncSession() {
            return new FDSyncSession(this.singletonCImpl.localStorage());
        }

        FDResultLabel fDResultLabel() {
            return new FDResultLabel(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
        }

        FDHtml fDHtml() {
            return new FDHtml(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule), this.singletonCImpl.fDFavouriteProvider.get(), fDResultLabel());
        }

        ImmutableMap hiltViewModelMapMapOfClassOfObjectAndProviderOfViewModelBuilder() {
            ImmutableMap.Builder builderBuilderWithExpectedSize = ImmutableMap.builderWithExpectedSize(25);
            builderBuilderWithExpectedSize.put(AIFragmentViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.aIFragmentViewModelProvider);
            builderBuilderWithExpectedSize.put(BazaarPaymentViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.bazaarPaymentViewModelProvider);
            builderBuilderWithExpectedSize.put(CategoriesViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.categoriesViewModelProvider);
            builderBuilderWithExpectedSize.put(DirectoryWordsViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.directoryWordsViewModelProvider);
            builderBuilderWithExpectedSize.put(EnterPasswordViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.enterPasswordViewModelProvider);
            builderBuilderWithExpectedSize.put(FavoritesViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.favoritesViewModelProvider);
            builderBuilderWithExpectedSize.put(ForgetPasswordViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.forgetPasswordViewModelProvider);
            builderBuilderWithExpectedSize.put(GooglePaymentViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.googlePaymentViewModelProvider);
            builderBuilderWithExpectedSize.put(HistoryViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.historyViewModelProvider);
            builderBuilderWithExpectedSize.put(HomeViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.homeViewModelProvider);
            builderBuilderWithExpectedSize.put(LoginViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.loginViewModelProvider);
            builderBuilderWithExpectedSize.put(LogoutViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.logoutViewModelProvider);
            builderBuilderWithExpectedSize.put(MainViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.mainViewModelProvider);
            builderBuilderWithExpectedSize.put(PaymentMethodViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.paymentMethodViewModelProvider);
            builderBuilderWithExpectedSize.put(PricingViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.pricingViewModelProvider);
            builderBuilderWithExpectedSize.put(ProfileViewModal_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.profileViewModalProvider);
            builderBuilderWithExpectedSize.put(RegistrationFormViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.registrationFormViewModelProvider);
            builderBuilderWithExpectedSize.put(ResultOrderModalViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.resultOrderModalViewModelProvider);
            builderBuilderWithExpectedSize.put(SortDialogViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.sortDialogViewModelProvider);
            builderBuilderWithExpectedSize.put(SyncViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.syncViewModelProvider);
            builderBuilderWithExpectedSize.put(TextRecognitionTranslatorViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.textRecognitionTranslatorViewModelProvider);
            builderBuilderWithExpectedSize.put(VoiceRecognitionViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.voiceRecognitionViewModelProvider);
            builderBuilderWithExpectedSize.put(WodHistoryViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.wodHistoryViewModelProvider);
            builderBuilderWithExpectedSize.put(WordCategoryViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.wordCategoryViewModelProvider);
            builderBuilderWithExpectedSize.put(WordResultViewModel_HiltModules_BindsModule_Binds_LazyMapKey.lazyClassKeyName, this.wordResultViewModelProvider);
            return builderBuilderWithExpectedSize.build();
        }

        private void initialize(final SavedStateHandle savedStateHandleParam, final ViewModelLifecycle viewModelLifecycleParam) {
            this.aIFragmentViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 0);
            this.bazaarPaymentViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 1);
            this.categoriesViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 2);
            this.directoryWordsViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 3);
            this.enterPasswordViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 4);
            this.favoritesViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 5);
            this.forgetPasswordViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 6);
            this.googlePaymentViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 7);
            this.historyViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 8);
            this.homeViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 9);
            this.loginViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 10);
            this.logoutViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 11);
            this.mainViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 12);
            this.paymentMethodViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 13);
            this.pricingViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 14);
            this.profileViewModalProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 15);
            this.registrationFormViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 16);
            this.resultOrderModalViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 17);
            this.sortDialogViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 18);
            this.syncViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 19);
            this.textRecognitionTranslatorViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 20);
            this.voiceRecognitionViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 21);
            this.wodHistoryViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 22);
            this.wordCategoryViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 23);
            this.wordResultViewModelProvider = new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, this.viewModelCImpl, 24);
        }

        @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.ViewModelFactoriesEntryPoint
        public Map<Class<?>, javax.inject.Provider<ViewModel>> getHiltViewModelMap() {
            return LazyClassKeyMap.of(hiltViewModelMapMapOfClassOfObjectAndProviderOfViewModelBuilder());
        }

        @Override // dagger.hilt.android.internal.lifecycle.HiltViewModelFactory.ViewModelFactoriesEntryPoint
        public Map<Class<?>, Object> getHiltViewModelAssistedMap() {
            return ImmutableMap.of();
        }

        private static final class SwitchingProvider<T> implements Provider<T> {
            private final ActivityRetainedCImpl activityRetainedCImpl;
            private final int id;
            private final SingletonCImpl singletonCImpl;
            private final ViewModelCImpl viewModelCImpl;

            SwitchingProvider(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, ViewModelCImpl viewModelCImpl, int id) {
                this.singletonCImpl = singletonCImpl;
                this.activityRetainedCImpl = activityRetainedCImpl;
                this.viewModelCImpl = viewModelCImpl;
                this.id = id;
            }

            @Override // javax.inject.Provider, jakarta.inject.Provider
            public T get() {
                switch (this.id) {
                    case 0:
                        return (T) new AIFragmentViewModel(this.singletonCImpl.localStorage());
                    case 1:
                        return (T) new BazaarPaymentViewModel();
                    case 2:
                        return (T) new CategoriesViewModel(this.viewModelCImpl.fDWordCategory(), this.singletonCImpl.localStorage());
                    case 3:
                        return (T) new DirectoryWordsViewModel(this.singletonCImpl.fDFavouriteProvider.get());
                    case 4:
                        return (T) new EnterPasswordViewModel(this.viewModelCImpl.fDConnectivityHelper(), this.singletonCImpl.firebaseUserPropertiesManagerProvider.get());
                    case 5:
                        return (T) new FavoritesViewModel(this.singletonCImpl.fDHistoryProvider.get(), this.singletonCImpl.fDFavouriteProvider.get(), new FDFavouriteFolder(), this.viewModelCImpl.fDWordCategory());
                    case 6:
                        return (T) new ForgetPasswordViewModel(this.viewModelCImpl.fDConnectivityHelper(), this.singletonCImpl.firebaseUserPropertiesManagerProvider.get());
                    case 7:
                        return (T) new GooglePaymentViewModel(this.viewModelCImpl.playBillingRepository());
                    case 8:
                        return (T) new HistoryViewModel(this.singletonCImpl.fDHistoryProvider.get(), this.singletonCImpl.localStorage());
                    case 9:
                        return (T) new HomeViewModel(this.viewModelCImpl.webService(), this.singletonCImpl.localStorage());
                    case 10:
                        return (T) new LoginViewModel(this.viewModelCImpl.fDConnectivityHelper());
                    case 11:
                        return (T) new LogoutViewModel(this.singletonCImpl.localStorage(), this.singletonCImpl.firebaseUserPropertiesManagerProvider.get());
                    case 12:
                        return (T) new MainViewModel(this.singletonCImpl.fDMainDatabaseHelperProvider.get(), this.viewModelCImpl.fDListPath(), this.singletonCImpl.localStorage(), this.singletonCImpl.fDAdsProvider.get(), this.viewModelCImpl.fDSoundEffect());
                    case 13:
                        return (T) new PaymentMethodViewModel(this.viewModelCImpl.webService(), this.singletonCImpl.localStorage());
                    case 14:
                        return (T) new PricingViewModel(this.viewModelCImpl.webService(), this.singletonCImpl.firebaseUserPropertiesManagerProvider.get(), this.singletonCImpl.localStorage());
                    case 15:
                        return (T) new ProfileViewModal(this.singletonCImpl.fDAdsProvider.get(), this.singletonCImpl.localStorage(), this.viewModelCImpl.webService(), this.viewModelCImpl.fDConnectivityHelper(), this.singletonCImpl.fDParseWrapper(), this.singletonCImpl.firebaseUserPropertiesManagerProvider.get());
                    case 16:
                        return (T) new RegistrationFormViewModel(this.viewModelCImpl.fDConnectivityHelper(), this.singletonCImpl.localStorage(), this.singletonCImpl.firebaseUserPropertiesManagerProvider.get());
                    case 17:
                        return (T) new ResultOrderModalViewModel();
                    case 18:
                        return (T) new SortDialogViewModel(this.singletonCImpl.localStorage());
                    case 19:
                        return (T) new SyncViewModel(this.singletonCImpl.fDHistoryProvider.get(), this.viewModelCImpl.fDListPath(), this.singletonCImpl.localStorage(), this.viewModelCImpl.fDSyncSession());
                    case 20:
                        return (T) new TextRecognitionTranslatorViewModel(new FDImageRecognizer());
                    case 21:
                        return (T) new VoiceRecognitionViewModel(ApplicationContextModule_ProvideApplicationFactory.provideApplication(this.singletonCImpl.applicationContextModule));
                    case 22:
                        return (T) new WodHistoryViewModel(this.singletonCImpl.localStorage(), this.viewModelCImpl.webService());
                    case 23:
                        return (T) new WordCategoryViewModel(this.viewModelCImpl.fDWordCategory());
                    case 24:
                        return (T) new WordResultViewModel(this.viewModelCImpl.fDHtml(), this.singletonCImpl.fDAdsProvider.get(), this.singletonCImpl.fDHistoryProvider.get(), this.singletonCImpl.fDFavouriteProvider.get(), this.viewModelCImpl.fDSoundEffect(), this.singletonCImpl.localStorage(), new FDCategory(), this.singletonCImpl.fDParseWrapper(), this.singletonCImpl.fDDatabaseManagerProvider.get(), ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule), this.viewModelCImpl.fDConnectivityHelper());
                    default:
                        throw new AssertionError(this.id);
                }
            }
        }
    }

    private static final class ActivityRetainedCImpl extends FDApplication_HiltComponents.ActivityRetainedC {
        private final ActivityRetainedCImpl activityRetainedCImpl = this;
        Provider<ActivityRetainedLifecycle> provideActivityRetainedLifecycleProvider;
        private final SingletonCImpl singletonCImpl;

        ActivityRetainedCImpl(SingletonCImpl singletonCImpl, SavedStateHandleHolder savedStateHandleHolderParam) {
            this.singletonCImpl = singletonCImpl;
            initialize(savedStateHandleHolderParam);
        }

        private void initialize(final SavedStateHandleHolder savedStateHandleHolderParam) {
            this.provideActivityRetainedLifecycleProvider = DoubleCheck.provider((Provider) new SwitchingProvider(this.singletonCImpl, this.activityRetainedCImpl, 0));
        }

        @Override // dagger.hilt.android.internal.managers.ActivityComponentManager.ActivityComponentBuilderEntryPoint
        public ActivityComponentBuilder activityComponentBuilder() {
            return new ActivityCBuilder(this.singletonCImpl, this.activityRetainedCImpl);
        }

        @Override // dagger.hilt.android.internal.managers.ActivityRetainedComponentManager.ActivityRetainedLifecycleEntryPoint
        public ActivityRetainedLifecycle getActivityRetainedLifecycle() {
            return this.provideActivityRetainedLifecycleProvider.get();
        }

        private static final class SwitchingProvider<T> implements Provider<T> {
            private final ActivityRetainedCImpl activityRetainedCImpl;
            private final int id;
            private final SingletonCImpl singletonCImpl;

            SwitchingProvider(SingletonCImpl singletonCImpl, ActivityRetainedCImpl activityRetainedCImpl, int id) {
                this.singletonCImpl = singletonCImpl;
                this.activityRetainedCImpl = activityRetainedCImpl;
                this.id = id;
            }

            @Override // javax.inject.Provider, jakarta.inject.Provider
            public T get() {
                if (this.id == 0) {
                    return (T) ActivityRetainedComponentManager_LifecycleModule_ProvideActivityRetainedLifecycleFactory.provideActivityRetainedLifecycle();
                }
                throw new AssertionError(this.id);
            }
        }
    }

    private static final class ServiceCImpl extends FDApplication_HiltComponents.ServiceC {
        private final ServiceCImpl serviceCImpl = this;
        private final SingletonCImpl singletonCImpl;

        ServiceCImpl(SingletonCImpl singletonCImpl, Service serviceParam) {
            this.singletonCImpl = singletonCImpl;
        }
    }

    private static final class SingletonCImpl extends FDApplication_HiltComponents.SingletonC {
        private final ApplicationContextModule applicationContextModule;
        Provider<FDAds> fDAdsProvider;
        Provider<FDDatabaseManager> fDDatabaseManagerProvider;
        Provider<FDFavourite> fDFavouriteProvider;
        Provider<FDHistory> fDHistoryProvider;
        Provider<FDMainDatabaseHelper> fDMainDatabaseHelperProvider;
        Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;
        Provider<ApiService> provideApiServiceProvider;
        private final SingletonCImpl singletonCImpl = this;

        SingletonCImpl(ApplicationContextModule applicationContextModuleParam) {
            this.applicationContextModule = applicationContextModuleParam;
            initialize(applicationContextModuleParam);
        }

        LocalStorage localStorage() {
            return new LocalStorage(ApplicationContextModule_ProvideContextFactory.provideContext(this.applicationContextModule));
        }

        FDParseWrapper fDParseWrapper() {
            return new FDParseWrapper(ApplicationContextModule_ProvideContextFactory.provideContext(this.applicationContextModule), this.firebaseUserPropertiesManagerProvider.get());
        }

        private void initialize(final ApplicationContextModule applicationContextModuleParam) {
            this.firebaseUserPropertiesManagerProvider = DoubleCheck.provider((Provider) new SwitchingProvider(this.singletonCImpl, 0));
            this.fDMainDatabaseHelperProvider = DoubleCheck.provider((Provider) new SwitchingProvider(this.singletonCImpl, 3));
            this.fDDatabaseManagerProvider = DoubleCheck.provider((Provider) new SwitchingProvider(this.singletonCImpl, 2));
            this.fDHistoryProvider = DoubleCheck.provider((Provider) new SwitchingProvider(this.singletonCImpl, 1));
            this.fDFavouriteProvider = DoubleCheck.provider((Provider) new SwitchingProvider(this.singletonCImpl, 4));
            this.fDAdsProvider = DoubleCheck.provider((Provider) new SwitchingProvider(this.singletonCImpl, 5));
            this.provideApiServiceProvider = DoubleCheck.provider((Provider) new SwitchingProvider(this.singletonCImpl, 6));
        }

        @Override // dagger.hilt.android.flags.FragmentGetContextFix.FragmentGetContextFixEntryPoint
        public Set<Boolean> getDisableFragmentGetContextFix() {
            return ImmutableSet.of();
        }

        @Override // dagger.hilt.android.internal.managers.ActivityRetainedComponentManager.ActivityRetainedComponentBuilderEntryPoint
        public ActivityRetainedComponentBuilder retainedComponentBuilder() {
            return new ActivityRetainedCBuilder(this.singletonCImpl);
        }

        @Override // dagger.hilt.android.internal.managers.ServiceComponentManager.ServiceComponentBuilderEntryPoint
        public ServiceComponentBuilder serviceComponentBuilder() {
            return new ServiceCBuilder(this.singletonCImpl);
        }

        @Override // fast.dic.dict.FDApplication_GeneratedInjector
        public void injectFDApplication(FDApplication arg0) {
            injectFDApplication2(arg0);
        }

        @Override // fast.dic.dict.utils.FirebaseAnalyticsEntryPoint
        public FirebaseUserPropertiesManager firebaseUserPropertiesManager() {
            return this.firebaseUserPropertiesManagerProvider.get();
        }

        private FDApplication injectFDApplication2(FDApplication instance) {
            FDApplication_MembersInjector.injectFdParseWrapper(instance, fDParseWrapper());
            FDApplication_MembersInjector.injectFirebaseUserPropertiesManager(instance, this.firebaseUserPropertiesManagerProvider.get());
            return instance;
        }

        private static final class SwitchingProvider<T> implements Provider<T> {
            private final int id;
            private final SingletonCImpl singletonCImpl;

            SwitchingProvider(SingletonCImpl singletonCImpl, int id) {
                this.singletonCImpl = singletonCImpl;
                this.id = id;
            }

            @Override // javax.inject.Provider, jakarta.inject.Provider
            public T get() {
                switch (this.id) {
                    case 0:
                        return (T) new FirebaseUserPropertiesManager(ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule), this.singletonCImpl.localStorage());
                    case 1:
                        return (T) new FDHistory(this.singletonCImpl.fDDatabaseManagerProvider.get());
                    case 2:
                        return (T) new FDDatabaseManager(this.singletonCImpl.fDMainDatabaseHelperProvider.get(), ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
                    case 3:
                        return (T) new FDMainDatabaseHelper(new Logger(), ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule));
                    case 4:
                        return (T) new FDFavourite(this.singletonCImpl.fDDatabaseManagerProvider.get());
                    case 5:
                        return (T) new FDAds(this.singletonCImpl.localStorage(), ApplicationContextModule_ProvideContextFactory.provideContext(this.singletonCImpl.applicationContextModule), this.singletonCImpl.firebaseUserPropertiesManagerProvider.get());
                    case 6:
                        return (T) RetrofitBuilder_ProvideApiServiceFactory.provideApiService(RetrofitBuilder_GetRetrofitFactory.getRetrofit());
                    default:
                        throw new AssertionError(this.id);
                }
            }
        }
    }
}
