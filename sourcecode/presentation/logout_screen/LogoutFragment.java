package fast.dic.dict.presentation.logout_screen;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentLogoutBinding;
import fast.dic.dict.helpers.FDInternetHelper;
import fast.dic.dict.presentation.common.SyncViewModel;
import fast.dic.dict.presentation.login_screen.LoginSignupFragment;
import fast.dic.dict.utils.FDAlertManger;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: LogoutFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001c\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u000e\u0010\u000fÊ\u0001\u0002\b!¨\u0006 "}, d2 = {"Lfast/dic/dict/presentation/logout_screen/LogoutFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/FragmentLogoutBinding;", "viewModel", "Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "syncViewModel", "Lfast/dic/dict/presentation/common/SyncViewModel;", "getSyncViewModel", "()Lfast/dic/dict/presentation/common/SyncViewModel;", "syncViewModel$delegate", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "logoutUser", "close", "state", "", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class LogoutFragment extends Hilt_LogoutFragment {
    private FragmentLogoutBinding binding;

    /* JADX INFO: renamed from: syncViewModel$delegate, reason: from kotlin metadata */
    private final Lazy syncViewModel;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public LogoutFragment() {
        final LogoutFragment logoutFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return logoutFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(logoutFragment, Reflection.getOrCreateKotlinClass(LogoutViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = logoutFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        final Function0<Fragment> function2 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$special$$inlined$viewModels$default$6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return logoutFragment;
            }
        };
        final Lazy lazy2 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$special$$inlined$viewModels$default$7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function2.invoke();
            }
        });
        this.syncViewModel = FragmentViewModelLazyKt.createViewModelLazy(logoutFragment, Reflection.getOrCreateKotlinClass(SyncViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$special$$inlined$viewModels$default$8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$special$$inlined$viewModels$default$9
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$special$$inlined$viewModels$default$10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = logoutFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    private final LogoutViewModel getViewModel() {
        return (LogoutViewModel) this.viewModel.getValue();
    }

    private final SyncViewModel getSyncViewModel() {
        return (SyncViewModel) this.syncViewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentLogoutBinding fragmentLogoutBindingInflate = FragmentLogoutBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentLogoutBindingInflate, "inflate(...)");
        this.binding = fragmentLogoutBindingInflate;
        FragmentLogoutBinding fragmentLogoutBinding = null;
        if (getViewModel().hasBeenEverSynced() && getViewModel().hasSubscriptionPlan()) {
            FragmentLogoutBinding fragmentLogoutBinding2 = this.binding;
            if (fragmentLogoutBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLogoutBinding2 = null;
            }
            fragmentLogoutBinding2.setLogoutBody(getString(R.string.logout_screen_message, getViewModel().getUserId(), getViewModel().getSubscriptionExpireDate(), getViewModel().getLastSyncDate()));
        } else if (getViewModel().hasBeenEverSynced() && !getViewModel().hasSubscriptionPlan()) {
            FragmentLogoutBinding fragmentLogoutBinding3 = this.binding;
            if (fragmentLogoutBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLogoutBinding3 = null;
            }
            fragmentLogoutBinding3.setLogoutBody(getString(R.string.logout_message_for_not_pro_plan, getViewModel().getLastSyncDate()));
        } else {
            FragmentLogoutBinding fragmentLogoutBinding4 = this.binding;
            if (fragmentLogoutBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLogoutBinding4 = null;
            }
            fragmentLogoutBinding4.setLogoutBody(getString(R.string.confirm_for_logout_from_account));
        }
        FragmentLogoutBinding fragmentLogoutBinding5 = this.binding;
        if (fragmentLogoutBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLogoutBinding = fragmentLogoutBinding5;
        }
        View root = fragmentLogoutBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        FragmentLogoutBinding fragmentLogoutBinding = this.binding;
        FragmentLogoutBinding fragmentLogoutBinding2 = null;
        if (fragmentLogoutBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLogoutBinding = null;
        }
        fragmentLogoutBinding.setCloseAction(new View.OnClickListener() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.close(false);
            }
        });
        FragmentLogoutBinding fragmentLogoutBinding3 = this.binding;
        if (fragmentLogoutBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLogoutBinding2 = fragmentLogoutBinding3;
        }
        fragmentLogoutBinding2.setLogoutAction(new View.OnClickListener() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.logoutUser();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logoutUser() {
        FDInternetHelper fDInternetHelper = FDInternetHelper.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (!fDInternetHelper.isInternetAvailable(contextRequireContext)) {
            FDAlertManger.INSTANCE.showNotConnectedToInternetAlert(requireContext());
        } else {
            getSyncViewModel().logout(new Function0() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return LogoutFragment.logoutUser$lambda$0(this.f$0);
                }
            });
        }
    }

    static final Unit logoutUser$lambda$0(final LogoutFragment logoutFragment) {
        logoutFragment.getViewModel().logout().observe(logoutFragment.getViewLifecycleOwner(), new LogoutFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.logout_screen.LogoutFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LogoutFragment.logoutUser$lambda$0$0(this.f$0, (Boolean) obj);
            }
        }));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit logoutUser$lambda$0$0(LogoutFragment logoutFragment, Boolean bool) {
        Intrinsics.checkNotNull(bool);
        logoutFragment.close(bool.booleanValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void close(boolean state) {
        SavedStateHandle savedStateHandle;
        if (state) {
            LogoutFragment logoutFragment = this;
            NavBackStackEntry previousBackStackEntry = FragmentKt.findNavController(logoutFragment).getPreviousBackStackEntry();
            if (previousBackStackEntry != null && (savedStateHandle = previousBackStackEntry.getSavedStateHandle()) != null) {
                savedStateHandle.set(LoginSignupFragment.DIALOG_STATUS_KEY, true);
            }
            FragmentKt.findNavController(logoutFragment).navigateUp();
            return;
        }
        FragmentKt.findNavController(this).navigateUp();
    }
}
