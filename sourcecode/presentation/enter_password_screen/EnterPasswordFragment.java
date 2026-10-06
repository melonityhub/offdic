package fast.dic.dict.presentation.enter_password_screen;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import com.couchbase.lite.internal.core.C4Replicator;
import com.google.android.material.textfield.TextInputEditText;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.activities.MainActivity;
import fast.dic.dict.databinding.FragmentEnterPasswordBinding;
import fast.dic.dict.presentation.login_screen.LoginSignupFragment;
import fast.dic.dict.services.parse.ParseError;
import fast.dic.dict.utils.EditTextExKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.KeyEventExtKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
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
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: EnterPasswordFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00132\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0016\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fÊ\u0001\u0002\b\"¨\u0006!"}, d2 = {"Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "args", "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;", "getArgs", "()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;", "viewModel", "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "loginUser", "email", "", C4Replicator.REPLICATOR_AUTH_PASSWORD, "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class EnterPasswordFragment extends Hilt_EnterPasswordFragment {

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    private FragmentEnterPasswordBinding binding;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public EnterPasswordFragment() {
        final EnterPasswordFragment enterPasswordFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(EnterPasswordFragmentArgs.class), new Function0<Bundle>() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment$special$$inlined$navArgs$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = enterPasswordFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + enterPasswordFragment + " has null arguments");
            }
        });
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return enterPasswordFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(enterPasswordFragment, Reflection.getOrCreateKotlinClass(EnterPasswordViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = enterPasswordFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final EnterPasswordFragmentArgs getArgs() {
        return (EnterPasswordFragmentArgs) this.args.getValue();
    }

    private final EnterPasswordViewModel getViewModel() {
        return (EnterPasswordViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentEnterPasswordBinding fragmentEnterPasswordBindingInflate = FragmentEnterPasswordBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentEnterPasswordBindingInflate, "inflate(...)");
        this.binding = fragmentEnterPasswordBindingInflate;
        FragmentEnterPasswordBinding fragmentEnterPasswordBinding = null;
        if (fragmentEnterPasswordBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentEnterPasswordBindingInflate = null;
        }
        final TextInputEditText passwordInput = fragmentEnterPasswordBindingInflate.passwordInput;
        Intrinsics.checkNotNullExpressionValue(passwordInput, "passwordInput");
        FragmentEnterPasswordBinding fragmentEnterPasswordBinding2 = this.binding;
        if (fragmentEnterPasswordBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentEnterPasswordBinding2 = null;
        }
        final Button loginButton = fragmentEnterPasswordBinding2.loginButton;
        Intrinsics.checkNotNullExpressionValue(loginButton, "loginButton");
        FragmentEnterPasswordBinding fragmentEnterPasswordBinding3 = this.binding;
        if (fragmentEnterPasswordBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentEnterPasswordBinding3 = null;
        }
        Button forgetPassword = fragmentEnterPasswordBinding3.forgetPassword;
        Intrinsics.checkNotNullExpressionValue(forgetPassword, "forgetPassword");
        FragmentEnterPasswordBinding fragmentEnterPasswordBinding4 = this.binding;
        if (fragmentEnterPasswordBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentEnterPasswordBinding4 = null;
        }
        TextView emailAddressLabel = fragmentEnterPasswordBinding4.emailAddressLabel;
        Intrinsics.checkNotNullExpressionValue(emailAddressLabel, "emailAddressLabel");
        FragmentEnterPasswordBinding fragmentEnterPasswordBinding5 = this.binding;
        if (fragmentEnterPasswordBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentEnterPasswordBinding5 = null;
        }
        ImageButton backButton = fragmentEnterPasswordBinding5.backButton;
        Intrinsics.checkNotNullExpressionValue(backButton, "backButton");
        backButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EnterPasswordFragment.onCreateView$lambda$0(passwordInput, this, view);
            }
        });
        emailAddressLabel.setText(getArgs().getEmail());
        loginButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EnterPasswordFragment enterPasswordFragment = this.f$0;
                enterPasswordFragment.loginUser(enterPasswordFragment.getArgs().getEmail(), String.valueOf(passwordInput.getText()));
            }
        });
        forgetPassword.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EnterPasswordFragment.onCreateView$lambda$2(passwordInput, this, view);
            }
        });
        passwordInput.setOnKeyListener(new View.OnKeyListener() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment.onCreateView.4
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                if (!KeyEventExtKt.isReturnKey(passwordInput, keyCode, event.getAction())) {
                    return false;
                }
                EnterPasswordFragment enterPasswordFragment = this;
                enterPasswordFragment.loginUser(enterPasswordFragment.getArgs().getEmail(), String.valueOf(passwordInput.getText()));
                return true;
            }
        });
        passwordInput.addTextChangedListener(new TextWatcher() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment.onCreateView.5
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable p0) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
                loginButton.setEnabled((String.valueOf(p0).length() == 0 || StringsKt.isBlank(String.valueOf(p0))) ? false : true);
            }
        });
        boolean zIsModal = isModal();
        FragmentEnterPasswordBinding fragmentEnterPasswordBinding6 = this.binding;
        if (zIsModal) {
            if (fragmentEnterPasswordBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentEnterPasswordBinding6 = null;
            }
            fragmentEnterPasswordBinding6.topToolbarContainer.setVisibility(0);
        } else {
            if (fragmentEnterPasswordBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentEnterPasswordBinding6 = null;
            }
            fragmentEnterPasswordBinding6.topToolbarContainer.setVisibility(8);
        }
        passwordInput.clearFocus();
        passwordInput.requestFocus();
        EditTextExKt.showKeyboard(passwordInput);
        FragmentEnterPasswordBinding fragmentEnterPasswordBinding7 = this.binding;
        if (fragmentEnterPasswordBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentEnterPasswordBinding = fragmentEnterPasswordBinding7;
        }
        FrameLayout root = fragmentEnterPasswordBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final void onCreateView$lambda$0(TextInputEditText textInputEditText, EnterPasswordFragment enterPasswordFragment, View view) {
        EditTextExKt.hideKeyboard(textInputEditText);
        FragmentKt.findNavController(enterPasswordFragment).popBackStack();
    }

    static final void onCreateView$lambda$2(TextInputEditText textInputEditText, EnterPasswordFragment enterPasswordFragment, View view) {
        EditTextExKt.hideKeyboard(textInputEditText);
        if (!enterPasswordFragment.isModal()) {
            NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(enterPasswordFragment), R.id.forgetPasswordFragment, null, 2, null);
        } else {
            NavControllerExtensionKt.openModal$default(FragmentKt.findNavController(enterPasswordFragment), R.id.forgetPasswordFragmentDialog, null, 2, null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getViewModel().getUiState().observe(getViewLifecycleOwner(), new EnterPasswordFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return EnterPasswordFragment.onViewCreated$lambda$0(this.f$0, (EnterPasswordUIState) obj);
            }
        }));
    }

    static final Unit onViewCreated$lambda$0(EnterPasswordFragment enterPasswordFragment, EnterPasswordUIState enterPasswordUIState) {
        SavedStateHandle savedStateHandle;
        FragmentEnterPasswordBinding fragmentEnterPasswordBinding = null;
        FragmentEnterPasswordBinding fragmentEnterPasswordBinding2 = null;
        FragmentEnterPasswordBinding fragmentEnterPasswordBinding3 = null;
        FragmentEnterPasswordBinding fragmentEnterPasswordBinding4 = null;
        if (enterPasswordUIState instanceof EnterPasswordUIState.Loading) {
            FragmentEnterPasswordBinding fragmentEnterPasswordBinding5 = enterPasswordFragment.binding;
            if (fragmentEnterPasswordBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentEnterPasswordBinding5 = null;
            }
            CustomProgressbar loadingSpinner = fragmentEnterPasswordBinding5.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        } else if (enterPasswordUIState instanceof EnterPasswordUIState.Success) {
            FragmentEnterPasswordBinding fragmentEnterPasswordBinding6 = enterPasswordFragment.binding;
            if (fragmentEnterPasswordBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentEnterPasswordBinding6 = null;
            }
            CustomProgressbar loadingSpinner2 = fragmentEnterPasswordBinding6.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            FragmentEnterPasswordBinding fragmentEnterPasswordBinding7 = enterPasswordFragment.binding;
            if (fragmentEnterPasswordBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentEnterPasswordBinding7 = null;
            }
            TextInputEditText passwordInput = fragmentEnterPasswordBinding7.passwordInput;
            Intrinsics.checkNotNullExpressionValue(passwordInput, "passwordInput");
            EditTextExKt.hideKeyboard(passwordInput);
            if (!enterPasswordFragment.isModal()) {
                enterPasswordFragment.dismissLoginFlow();
                FragmentActivity activity = enterPasswordFragment.getActivity();
                MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
                if (mainActivity != null) {
                    mainActivity.checkAndUpdateTabbarMenuAfterLogin();
                }
                FragmentActivity activity2 = enterPasswordFragment.getActivity();
                MainActivity mainActivity2 = activity2 instanceof MainActivity ? (MainActivity) activity2 : null;
                if (mainActivity2 != null) {
                    mainActivity2.selectTab(R.id.profileFragment);
                }
            } else {
                enterPasswordFragment.dismissLoginFlow();
                NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(enterPasswordFragment).getCurrentBackStackEntry();
                if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null) {
                    savedStateHandle.set(LoginSignupFragment.DIALOG_STATUS_KEY, true);
                }
            }
        } else if (enterPasswordUIState instanceof EnterPasswordUIState.Error) {
            FragmentEnterPasswordBinding fragmentEnterPasswordBinding8 = enterPasswordFragment.binding;
            if (fragmentEnterPasswordBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentEnterPasswordBinding8 = null;
            }
            CustomProgressbar loadingSpinner3 = fragmentEnterPasswordBinding8.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner3, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner3, 0L, 1, null);
            FragmentEnterPasswordBinding fragmentEnterPasswordBinding9 = enterPasswordFragment.binding;
            if (fragmentEnterPasswordBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentEnterPasswordBinding2 = fragmentEnterPasswordBinding9;
            }
            TextInputEditText passwordInput2 = fragmentEnterPasswordBinding2.passwordInput;
            Intrinsics.checkNotNullExpressionValue(passwordInput2, "passwordInput");
            EditTextExKt.hideKeyboard(passwordInput2);
            String message = ((EnterPasswordUIState.Error) enterPasswordUIState).getMessage();
            if (message != null) {
                FDAlertManger.INSTANCE.showErrorMessageAlert(message, enterPasswordFragment.getContext());
            }
        } else if (enterPasswordUIState instanceof EnterPasswordUIState.NoInternetError) {
            FragmentEnterPasswordBinding fragmentEnterPasswordBinding10 = enterPasswordFragment.binding;
            if (fragmentEnterPasswordBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentEnterPasswordBinding10 = null;
            }
            CustomProgressbar loadingSpinner4 = fragmentEnterPasswordBinding10.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner4, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner4, 0L, 1, null);
            FragmentEnterPasswordBinding fragmentEnterPasswordBinding11 = enterPasswordFragment.binding;
            if (fragmentEnterPasswordBinding11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentEnterPasswordBinding3 = fragmentEnterPasswordBinding11;
            }
            TextInputEditText passwordInput3 = fragmentEnterPasswordBinding3.passwordInput;
            Intrinsics.checkNotNullExpressionValue(passwordInput3, "passwordInput");
            EditTextExKt.hideKeyboard(passwordInput3);
            FDAlertManger.INSTANCE.showNotConnectedToInternetAlert(enterPasswordFragment.getContext());
        } else if (enterPasswordUIState instanceof EnterPasswordUIState.ParseError) {
            FragmentEnterPasswordBinding fragmentEnterPasswordBinding12 = enterPasswordFragment.binding;
            if (fragmentEnterPasswordBinding12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentEnterPasswordBinding12 = null;
            }
            CustomProgressbar loadingSpinner5 = fragmentEnterPasswordBinding12.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner5, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner5, 0L, 1, null);
            FragmentEnterPasswordBinding fragmentEnterPasswordBinding13 = enterPasswordFragment.binding;
            if (fragmentEnterPasswordBinding13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentEnterPasswordBinding4 = fragmentEnterPasswordBinding13;
            }
            TextInputEditText passwordInput4 = fragmentEnterPasswordBinding4.passwordInput;
            Intrinsics.checkNotNullExpressionValue(passwordInput4, "passwordInput");
            EditTextExKt.hideKeyboard(passwordInput4);
            ParseError.Companion companion = ParseError.INSTANCE;
            EnterPasswordUIState.ParseError parseError = (EnterPasswordUIState.ParseError) enterPasswordUIState;
            String message2 = parseError.getMessage();
            if (message2 == null) {
                message2 = "";
            }
            FDAlertManger.INSTANCE.showErrorMessageAlert(companion.getRightMessage(message2, parseError.getCode(), enterPasswordFragment.getContext()), enterPasswordFragment.getContext());
        } else {
            if (!(enterPasswordUIState instanceof EnterPasswordUIState.UserNotActive)) {
                throw new NoWhenBranchMatchedException();
            }
            FragmentEnterPasswordBinding fragmentEnterPasswordBinding14 = enterPasswordFragment.binding;
            if (fragmentEnterPasswordBinding14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentEnterPasswordBinding14 = null;
            }
            CustomProgressbar loadingSpinner6 = fragmentEnterPasswordBinding14.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner6, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner6, 0L, 1, null);
            FragmentEnterPasswordBinding fragmentEnterPasswordBinding15 = enterPasswordFragment.binding;
            if (fragmentEnterPasswordBinding15 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentEnterPasswordBinding = fragmentEnterPasswordBinding15;
            }
            TextInputEditText passwordInput5 = fragmentEnterPasswordBinding.passwordInput;
            Intrinsics.checkNotNullExpressionValue(passwordInput5, "passwordInput");
            EditTextExKt.hideKeyboard(passwordInput5);
            FDAlertManger.INSTANCE.showAccountIsDeactivatedAlert(enterPasswordFragment.getContext());
        }
        return Unit.INSTANCE;
    }

    public final void loginUser(String email, String password) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        String str = email;
        if (str.length() == 0 || StringsKt.isBlank(str)) {
            return;
        }
        String str2 = password;
        if (str2.length() == 0 || StringsKt.isBlank(str2)) {
            return;
        }
        getViewModel().loginWithPassword(email, password);
    }
}
