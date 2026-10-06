package fast.dic.dict.presentation.profile_screen;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import com.mbridge.msdk.MBridgeConstans;
import com.parse.LogOutCallback;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseUser;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.activities.MainActivity;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.databinding.FragmentProfileBinding;
import fast.dic.dict.models.PlanType;
import fast.dic.dict.presentation.common.SyncViewModel;
import fast.dic.dict.presentation.login_screen.LoginSignupFragment;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.services.parse.ParseError;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.FDParseUserExtensionKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
import io.sentry.SentryBaseEvent;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: ProfileFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u001a\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00192\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J$\u0010#\u001a\u00020!2\b\u0010$\u001a\u0004\u0018\u00010%H\u0003b\u0010\b&\u0012\f\b'\u0012\b\b\fJ\u0004\b\b((J\b\u0010)\u001a\u00020!H\u0002J\u0010\u0010*\u001a\u00020!2\u0006\u0010+\u001a\u00020%H\u0002J\b\u0010,\u001a\u00020!H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u000e\u0010\u000fR#\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u0017¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016Ê\u0001\u0002\b.¨\u0006-"}, d2 = {"Lfast/dic/dict/presentation/profile_screen/ProfileFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/FragmentProfileBinding;", "syncViewModel", "Lfast/dic/dict/presentation/common/SyncViewModel;", "getSyncViewModel", "()Lfast/dic/dict/presentation/common/SyncViewModel;", "syncViewModel$delegate", "Lkotlin/Lazy;", "viewModel", "Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;", "getViewModel", "()Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;", "viewModel$delegate", "firebaseUserPropertiesManager", "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "getFirebaseUserPropertiesManager", "()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "setFirebaseUserPropertiesManager", "(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V", "Ljavax/inject/Inject;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "changeUI", SentryBaseEvent.JsonKeys.USER, "Lfast/dic/dict/services/parse/FDParseUser;", "Landroid/annotation/SuppressLint;", "value", "SimpleDateFormat", "deleteAccountProcess", "sentChangePasswordLinkByConfirmAlert", "currentUser", "showActivationAlert", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class ProfileFragment extends Hilt_ProfileFragment {
    private FragmentProfileBinding binding;

    @Inject
    public FirebaseUserPropertiesManager firebaseUserPropertiesManager;

    /* JADX INFO: renamed from: syncViewModel$delegate, reason: from kotlin metadata */
    private final Lazy syncViewModel;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public ProfileFragment() {
        final ProfileFragment profileFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return profileFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.syncViewModel = FragmentViewModelLazyKt.createViewModelLazy(profileFragment, Reflection.getOrCreateKotlinClass(SyncViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                if (function2 != null && (creationExtras = (CreationExtras) function2.invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = profileFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        final Function0<Fragment> function2 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$special$$inlined$viewModels$default$6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return profileFragment;
            }
        };
        final Lazy lazy2 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$special$$inlined$viewModels$default$7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function2.invoke();
            }
        });
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(profileFragment, Reflection.getOrCreateKotlinClass(ProfileViewModal.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$special$$inlined$viewModels$default$8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$special$$inlined$viewModels$default$9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function3 = function1;
                if (function3 != null && (creationExtras = (CreationExtras) function3.invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$special$$inlined$viewModels$default$10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = profileFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    private final SyncViewModel getSyncViewModel() {
        return (SyncViewModel) this.syncViewModel.getValue();
    }

    private final ProfileViewModal getViewModel() {
        return (ProfileViewModal) this.viewModel.getValue();
    }

    public final FirebaseUserPropertiesManager getFirebaseUserPropertiesManager() {
        FirebaseUserPropertiesManager firebaseUserPropertiesManager = this.firebaseUserPropertiesManager;
        if (firebaseUserPropertiesManager != null) {
            return firebaseUserPropertiesManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("firebaseUserPropertiesManager");
        return null;
    }

    public final void setFirebaseUserPropertiesManager(FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        Intrinsics.checkNotNullParameter(firebaseUserPropertiesManager, "<set-?>");
        this.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        SavedStateHandle savedStateHandle;
        MutableLiveData liveData;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentProfileBinding fragmentProfileBindingInflate = FragmentProfileBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentProfileBindingInflate, "inflate(...)");
        this.binding = fragmentProfileBindingInflate;
        FragmentProfileBinding fragmentProfileBinding = null;
        if (!FDParseUserExtensionKt.isLoggedIn()) {
            FragmentActivity activity = getActivity();
            MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
            if (mainActivity != null) {
                mainActivity.checkAndUpdateTabbarMenuAfterLogin();
            }
            FragmentActivity activity2 = getActivity();
            MainActivity mainActivity2 = activity2 instanceof MainActivity ? (MainActivity) activity2 : null;
            if (mainActivity2 != null) {
                mainActivity2.selectTab(R.id.loginOnboardingFragment);
            }
        }
        FragmentProfileBinding fragmentProfileBinding2 = this.binding;
        if (fragmentProfileBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProfileBinding2 = null;
        }
        fragmentProfileBinding2.activeEmailButtonOrSubscriptions.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda15
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws ParseException {
                ProfileFragment.onCreateView$lambda$0(this.f$0, view);
            }
        });
        FragmentProfileBinding fragmentProfileBinding3 = this.binding;
        if (fragmentProfileBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProfileBinding3 = null;
        }
        fragmentProfileBinding3.deleteAccountRow.clickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda16
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.deleteAccountProcess();
            }
        });
        FragmentProfileBinding fragmentProfileBinding4 = this.binding;
        if (fragmentProfileBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProfileBinding4 = null;
        }
        fragmentProfileBinding4.updateUserProfileRow.clickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(this.f$0), R.id.updateProfileFragment, null, 2, null);
            }
        });
        FragmentProfileBinding fragmentProfileBinding5 = this.binding;
        if (fragmentProfileBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProfileBinding5 = null;
        }
        fragmentProfileBinding5.logoutRow.clickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NavControllerExtensionKt.openModal$default(FragmentKt.findNavController(this.f$0), R.id.logoutFragment, null, 2, null);
            }
        });
        FragmentProfileBinding fragmentProfileBinding6 = this.binding;
        if (fragmentProfileBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProfileBinding6 = null;
        }
        fragmentProfileBinding6.historyPurchasedRow.clickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(this.f$0), R.id.transactionHistoryFragment, null, 2, null);
            }
        });
        FragmentProfileBinding fragmentProfileBinding7 = this.binding;
        if (fragmentProfileBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProfileBinding7 = null;
        }
        fragmentProfileBinding7.changePasswordRow.clickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws ParseException {
                ProfileFragment.onCreateView$lambda$5(this.f$0, view);
            }
        });
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(this).getCurrentBackStackEntry();
        if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null && (liveData = savedStateHandle.getLiveData(LoginSignupFragment.DIALOG_STATUS_KEY)) != null) {
            liveData.observe(getViewLifecycleOwner(), new ProfileFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return ProfileFragment.onCreateView$lambda$6(this.f$0, (Boolean) obj);
                }
            }));
        }
        getViewModel().getEmailVerificationState().observe(getViewLifecycleOwner(), new ProfileFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileFragment.onCreateView$lambda$7(this.f$0, (EmailVerificationState) obj);
            }
        }));
        FragmentProfileBinding fragmentProfileBinding8 = this.binding;
        if (fragmentProfileBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentProfileBinding = fragmentProfileBinding8;
        }
        View root = fragmentProfileBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final void onCreateView$lambda$0(ProfileFragment profileFragment, View view) throws ParseException {
        FDParseUser user = profileFragment.getViewModel().getUser();
        if (user != null && !user.getEmailVerified()) {
            profileFragment.showActivationAlert();
        } else {
            NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(profileFragment), R.id.newPricingFragment, null, 2, null);
        }
    }

    static final void onCreateView$lambda$5(ProfileFragment profileFragment, View view) throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser != null) {
            profileFragment.sentChangePasswordLinkByConfirmAlert(fDParseUser);
        }
    }

    static final Unit onCreateView$lambda$6(ProfileFragment profileFragment, Boolean bool) {
        if (Intrinsics.areEqual((Object) bool, (Object) true)) {
            FragmentActivity activity = profileFragment.getActivity();
            MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
            if (mainActivity != null) {
                mainActivity.checkAndUpdateTabbarMenuAfterLogin();
            }
            FragmentActivity activity2 = profileFragment.getActivity();
            MainActivity mainActivity2 = activity2 instanceof MainActivity ? (MainActivity) activity2 : null;
            if (mainActivity2 != null) {
                mainActivity2.selectTab(R.id.loginOnboardingFragment);
            }
            FragmentKt.findNavController(profileFragment).popBackStack(R.id.profileFragment, false, false);
        }
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$7(ProfileFragment profileFragment, EmailVerificationState emailVerificationState) {
        if (emailVerificationState instanceof EmailVerificationState.Loading) {
            FragmentProfileBinding fragmentProfileBinding = profileFragment.binding;
            if (fragmentProfileBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentProfileBinding = null;
            }
            CustomProgressbar loadingSpinner = fragmentProfileBinding.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        } else if (emailVerificationState instanceof EmailVerificationState.Success) {
            FragmentProfileBinding fragmentProfileBinding2 = profileFragment.binding;
            if (fragmentProfileBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentProfileBinding2 = null;
            }
            CustomProgressbar loadingSpinner2 = fragmentProfileBinding2.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
            String string = profileFragment.getString(R.string.email_confirm);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = profileFragment.getString(R.string.sent_email_confirm_please_check_mail_box);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = profileFragment.getString(R.string.close);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            fDAlertManger.showAlertWithOutForeCloseApp(string, string2, string3, profileFragment.requireContext());
        } else {
            if (!(emailVerificationState instanceof EmailVerificationState.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            FragmentProfileBinding fragmentProfileBinding3 = profileFragment.binding;
            if (fragmentProfileBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentProfileBinding3 = null;
            }
            CustomProgressbar loadingSpinner3 = fragmentProfileBinding3.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner3, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner3, 0L, 1, null);
            FDAlertManger.INSTANCE.showErrorMessageAlert(((EmailVerificationState.Error) emailVerificationState).getMessage(), profileFragment.requireContext());
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getViewModel().getState().observe(getViewLifecycleOwner(), new ProfileFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileFragment.onViewCreated$lambda$0(this.f$0, (ProfileUIState) obj);
            }
        }));
        getViewModel().fetchParseUser();
    }

    static final Unit onViewCreated$lambda$0(final ProfileFragment profileFragment, ProfileUIState profileUIState) throws ParseException {
        String str;
        if (profileUIState instanceof ProfileUIState.User) {
            ParseObject parseObject = ((ProfileUIState.User) profileUIState).getParseObject();
            profileFragment.changeUI(parseObject instanceof FDParseUser ? (FDParseUser) parseObject : null);
        } else if (profileUIState instanceof ProfileUIState.Error) {
            FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
            String message = ((ProfileUIState.Error) profileUIState).getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            fDAlertManger.showErrorMessageAlert(message, profileFragment.getContext());
        } else if (profileUIState instanceof ProfileUIState.ResetPasswordRequested) {
            FDAlertManger fDAlertManger2 = FDAlertManger.INSTANCE;
            String string = profileFragment.getString(R.string.change_password);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = profileFragment.getString(R.string.sent_an_email_to_change_password);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = profileFragment.getString(R.string.close);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            fDAlertManger2.showAlertWithOutForeCloseApp(string, string2, string3, profileFragment.getContext());
        } else {
            if (profileUIState instanceof ProfileUIState.ResetPasswordFailed) {
                ParseError.Companion companion = ParseError.INSTANCE;
                ProfileUIState.ResetPasswordFailed resetPasswordFailed = (ProfileUIState.ResetPasswordFailed) profileUIState;
                String message2 = resetPasswordFailed.getMessage();
                str = message2 != null ? message2 : "";
                Integer code = resetPasswordFailed.getCode();
                FDAlertManger.INSTANCE.showErrorMessageAlert(companion.getRightMessage(str, code != null ? code.intValue() : 0, profileFragment.getContext()), profileFragment.getContext());
            } else if (profileUIState instanceof ProfileUIState.NoInternetError) {
                FDAlertManger.INSTANCE.showNotConnectedToInternetAlert(profileFragment.getContext());
            } else if (profileUIState instanceof ProfileUIState.Loading) {
                FragmentProfileBinding fragmentProfileBinding = profileFragment.binding;
                if (fragmentProfileBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentProfileBinding = null;
                }
                CustomProgressbar loadingSpinner = fragmentProfileBinding.loadingSpinner;
                Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
                ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
            } else if (profileUIState instanceof ProfileUIState.DeletedAccountError) {
                String message3 = ((ProfileUIState.DeletedAccountError) profileUIState).getMessage();
                str = message3 != null ? message3 : "";
                String string4 = profileFragment.getString(R.string.error);
                Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                ParseUser currentUser = ParseUser.getCurrentUser();
                final String username = currentUser != null ? currentUser.getUsername() : null;
                profileFragment.getSyncViewModel().logout(new Function0() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ProfileFragment.onViewCreated$lambda$0$0(this.f$0, username);
                    }
                });
                FDAlertManger.INSTANCE.showSimpleAlert(string4, str, profileFragment.getContext());
            } else {
                if (!(profileUIState instanceof ProfileUIState.DeletedAccount)) {
                    throw new NoWhenBranchMatchedException();
                }
                String message4 = ((ProfileUIState.DeletedAccount) profileUIState).getMessage();
                str = message4 != null ? message4 : "";
                String string5 = profileFragment.getString(R.string.ok);
                Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
                FDAlertManger.INSTANCE.showSimpleAlert(string5, str, profileFragment.getContext());
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$0$0(final ProfileFragment profileFragment, final String str) {
        ParseUser.logOutInBackground(new LogOutCallback() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda12
            @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
            public final void done(ParseException parseException) {
                ProfileFragment.onViewCreated$lambda$0$0$0(this.f$0, str, parseException);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0$0$0(ProfileFragment profileFragment, String str, ParseException parseException) {
        if (parseException == null) {
            profileFragment.getFirebaseUserPropertiesManager().logUserLogout(str, "account_deleted");
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new ProfileFragment$onViewCreated$1$1$1$1(profileFragment, null), 3, null);
        }
    }

    private final void changeUI(FDParseUser user) {
        String string;
        if (user == null) {
            return;
        }
        if (!FDParseUserExtensionKt.hasFreePlan()) {
            getViewModel().hideBannerAds();
        }
        FragmentProfileBinding fragmentProfileBinding = this.binding;
        if (fragmentProfileBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProfileBinding = null;
        }
        Button activeEmailButtonOrSubscriptions = fragmentProfileBinding.activeEmailButtonOrSubscriptions;
        Intrinsics.checkNotNullExpressionValue(activeEmailButtonOrSubscriptions, "activeEmailButtonOrSubscriptions");
        FragmentProfileBinding fragmentProfileBinding2 = this.binding;
        if (fragmentProfileBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProfileBinding2 = null;
        }
        fragmentProfileBinding2.userEmailLabel.setText(user.getEmail());
        FragmentProfileBinding fragmentProfileBinding3 = this.binding;
        if (fragmentProfileBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProfileBinding3 = null;
        }
        fragmentProfileBinding3.userFullNameLabel.setText(user.getName());
        if (!user.getEmailVerified()) {
            string = getString(R.string.active_your_email_address);
        } else if (user.hasPlan2Or3()) {
            string = getString(R.string.subscription_renewal);
        } else {
            string = getString(R.string.remove_ads_and_by_pro_subscription);
        }
        activeEmailButtonOrSubscriptions.setText(string);
        FragmentProfileBinding fragmentProfileBinding4 = this.binding;
        if (fragmentProfileBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProfileBinding4 = null;
        }
        fragmentProfileBinding4.emailNotActivatedLabel.setVisibility(!user.getEmailVerified() ? 0 : 8);
        FragmentProfileBinding fragmentProfileBinding5 = this.binding;
        if (fragmentProfileBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProfileBinding5 = null;
        }
        TextView remainingDateLabel = fragmentProfileBinding5.remainingDateLabel;
        Intrinsics.checkNotNullExpressionValue(remainingDateLabel, "remainingDateLabel");
        if (user.hasPlan2Or3()) {
            if (user.hasPlan3InView()) {
                remainingDateLabel.setText(getViewModel().getStringBasedOnPlan(getContext(), PlanType.AI, user.getHasPlan3ExpireDate()));
                return;
            } else {
                remainingDateLabel.setText(getViewModel().getStringBasedOnPlan(getContext(), PlanType.PRO, user.getHasPlan2ExpireDate()));
                return;
            }
        }
        if (user.getHasPlan1()) {
            Context context = getContext();
            remainingDateLabel.setText(context != null ? context.getString(R.string.ads_are_removed) : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteAccountProcess() {
        Context context = getContext();
        if (context != null) {
            FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
            String string = getString(R.string.delete_account_text);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = getString(R.string.DeleteAccountConfirmationMessage);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = getString(R.string.cancelButtonTitle);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            fDAlertManger.showAlertWithOptions(string, string2, string3, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda13
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            }, getString(R.string.DeleteAccountConfirmationRemoveAccountButton), new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda14
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ProfileFragment.deleteAccountProcess$lambda$0$1(this.f$0, dialogInterface, i);
                }
            }, false, context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void deleteAccountProcess$lambda$0$1(ProfileFragment profileFragment, DialogInterface dialogInterface, int i) {
        profileFragment.getViewModel().deleteAccount();
    }

    private final void sentChangePasswordLinkByConfirmAlert(final FDParseUser currentUser) {
        Context context = getContext();
        if (context != null) {
            FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
            String string = getString(R.string.change_password);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = getString(R.string.sent_change_password_link_to_, currentUser.getEmail());
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = getString(R.string.cancelButtonTitle);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            fDAlertManger.showAlertWithOptions(string, string2, string3, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda8
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            }, getString(R.string.send), new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda9
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ProfileFragment.sentChangePasswordLinkByConfirmAlert$lambda$0$1(this.f$0, currentUser, dialogInterface, i);
                }
            }, false, context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sentChangePasswordLinkByConfirmAlert$lambda$0$1(ProfileFragment profileFragment, FDParseUser fDParseUser, DialogInterface dialogInterface, int i) {
        ProfileViewModal viewModel = profileFragment.getViewModel();
        String email = fDParseUser.getEmail();
        Intrinsics.checkNotNullExpressionValue(email, "getEmail(...)");
        viewModel.requestForResetPassword(email);
    }

    private final void showActivationAlert() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
        String string = getString(R.string.email_confirm);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = getString(R.string.help_for_sent_verification_link_on_email, fDParseUser != null ? fDParseUser.getEmail() : null);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = getString(R.string.cancelButtonTitle);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda10
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        };
        String string4 = getString(R.string.send);
        DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.profile_screen.ProfileFragment$$ExternalSyntheticLambda11
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) throws ParseException {
                this.f$0.getViewModel().sendEmailVerification();
            }
        };
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        fDAlertManger.showAlertWithOptions(string, string2, string3, onClickListener, string4, onClickListener2, false, contextRequireContext);
    }
}
