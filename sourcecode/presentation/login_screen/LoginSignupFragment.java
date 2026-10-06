package fast.dic.dict.presentation.login_screen;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.fragment.FragmentKt;
import com.google.android.material.textfield.TextInputEditText;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentLoginSignupBinding;
import fast.dic.dict.presentation.enter_password_screen.EnterPasswordFragmentArgs;
import fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragmentArgs;
import fast.dic.dict.utils.EditTextExKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.KeyEventExtKt;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: LoginSignupFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0017\u001a\u00020\u0015H\u0016J\b\u0010\u0018\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u000e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001eR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b!¨\u0006 "}, d2 = {"Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "viewModel", "Lfast/dic/dict/presentation/login_screen/LoginViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/login_screen/LoginViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lfast/dic/dict/databinding/FragmentLoginSignupBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onStart", "onStop", "onDismiss", "dialog", "Landroid/content/DialogInterface;", "checkEmailForSignInOrUp", "email", "", "Companion", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class LoginSignupFragment extends Hilt_LoginSignupFragment {
    public static final String DIALOG_STATUS_KEY = "login_dialog_dismissed";
    private FragmentLoginSignupBinding binding;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public LoginSignupFragment() {
        final LoginSignupFragment loginSignupFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.login_screen.LoginSignupFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return loginSignupFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.login_screen.LoginSignupFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(loginSignupFragment, Reflection.getOrCreateKotlinClass(LoginViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.login_screen.LoginSignupFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.login_screen.LoginSignupFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.login_screen.LoginSignupFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = loginSignupFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    private final LoginViewModel getViewModel() {
        return (LoginViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentLoginSignupBinding fragmentLoginSignupBindingInflate = FragmentLoginSignupBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentLoginSignupBindingInflate, "inflate(...)");
        this.binding = fragmentLoginSignupBindingInflate;
        FragmentLoginSignupBinding fragmentLoginSignupBinding = null;
        if (fragmentLoginSignupBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginSignupBindingInflate = null;
        }
        fragmentLoginSignupBindingInflate.closeButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.login_screen.LoginSignupFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FragmentKt.findNavController(this.f$0).popBackStack();
            }
        });
        FragmentLoginSignupBinding fragmentLoginSignupBinding2 = this.binding;
        if (fragmentLoginSignupBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginSignupBinding2 = null;
        }
        fragmentLoginSignupBinding2.forgetPassword.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.login_screen.LoginSignupFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginSignupFragment.onCreateView$lambda$1(this.f$0, view);
            }
        });
        FragmentLoginSignupBinding fragmentLoginSignupBinding3 = this.binding;
        if (fragmentLoginSignupBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginSignupBinding3 = null;
        }
        fragmentLoginSignupBinding3.emailAddressInput.setOnKeyListener(new View.OnKeyListener() { // from class: fast.dic.dict.presentation.login_screen.LoginSignupFragment.onCreateView.3
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                FragmentLoginSignupBinding fragmentLoginSignupBinding4 = LoginSignupFragment.this.binding;
                FragmentLoginSignupBinding fragmentLoginSignupBinding5 = null;
                if (fragmentLoginSignupBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentLoginSignupBinding4 = null;
                }
                TextInputEditText emailAddressInput = fragmentLoginSignupBinding4.emailAddressInput;
                Intrinsics.checkNotNullExpressionValue(emailAddressInput, "emailAddressInput");
                if (!KeyEventExtKt.isReturnKey(emailAddressInput, keyCode, event.getAction())) {
                    return false;
                }
                LoginSignupFragment loginSignupFragment = LoginSignupFragment.this;
                FragmentLoginSignupBinding fragmentLoginSignupBinding6 = loginSignupFragment.binding;
                if (fragmentLoginSignupBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    fragmentLoginSignupBinding5 = fragmentLoginSignupBinding6;
                }
                loginSignupFragment.checkEmailForSignInOrUp(String.valueOf(fragmentLoginSignupBinding5.emailAddressInput.getText()));
                return true;
            }
        });
        FragmentLoginSignupBinding fragmentLoginSignupBinding4 = this.binding;
        if (fragmentLoginSignupBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginSignupBinding4 = null;
        }
        fragmentLoginSignupBinding4.emailAddressInput.addTextChangedListener(new TextWatcher() { // from class: fast.dic.dict.presentation.login_screen.LoginSignupFragment.onCreateView.4
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable p0) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
                FragmentLoginSignupBinding fragmentLoginSignupBinding5 = LoginSignupFragment.this.binding;
                if (fragmentLoginSignupBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentLoginSignupBinding5 = null;
                }
                fragmentLoginSignupBinding5.okAndNavigateButton.setEnabled((String.valueOf(p0).length() == 0 || StringsKt.isBlank(String.valueOf(p0))) ? false : true);
            }
        });
        FragmentLoginSignupBinding fragmentLoginSignupBinding5 = this.binding;
        if (fragmentLoginSignupBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginSignupBinding5 = null;
        }
        fragmentLoginSignupBinding5.okAndNavigateButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.login_screen.LoginSignupFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginSignupFragment.onCreateView$lambda$2(this.f$0, view);
            }
        });
        boolean zIsModal = isModal();
        FragmentLoginSignupBinding fragmentLoginSignupBinding6 = this.binding;
        if (zIsModal) {
            if (fragmentLoginSignupBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginSignupBinding6 = null;
            }
            fragmentLoginSignupBinding6.topToolbarContainer.setVisibility(0);
        } else {
            if (fragmentLoginSignupBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginSignupBinding6 = null;
            }
            fragmentLoginSignupBinding6.topToolbarContainer.setVisibility(8);
        }
        FragmentLoginSignupBinding fragmentLoginSignupBinding7 = this.binding;
        if (fragmentLoginSignupBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginSignupBinding7 = null;
        }
        fragmentLoginSignupBinding7.emailAddressInput.clearFocus();
        FragmentLoginSignupBinding fragmentLoginSignupBinding8 = this.binding;
        if (fragmentLoginSignupBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginSignupBinding8 = null;
        }
        fragmentLoginSignupBinding8.emailAddressInput.requestFocus();
        FragmentLoginSignupBinding fragmentLoginSignupBinding9 = this.binding;
        if (fragmentLoginSignupBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginSignupBinding9 = null;
        }
        TextInputEditText emailAddressInput = fragmentLoginSignupBinding9.emailAddressInput;
        Intrinsics.checkNotNullExpressionValue(emailAddressInput, "emailAddressInput");
        EditTextExKt.showKeyboard(emailAddressInput);
        FragmentLoginSignupBinding fragmentLoginSignupBinding10 = this.binding;
        if (fragmentLoginSignupBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLoginSignupBinding = fragmentLoginSignupBinding10;
        }
        View root = fragmentLoginSignupBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final void onCreateView$lambda$1(LoginSignupFragment loginSignupFragment, View view) {
        if (!loginSignupFragment.isModal()) {
            NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(loginSignupFragment), R.id.forgetPasswordFragment, null, 2, null);
        } else {
            NavControllerExtensionKt.openModal$default(FragmentKt.findNavController(loginSignupFragment), R.id.forgetPasswordFragmentDialog, null, 2, null);
        }
    }

    static final void onCreateView$lambda$2(LoginSignupFragment loginSignupFragment, View view) {
        FragmentLoginSignupBinding fragmentLoginSignupBinding = loginSignupFragment.binding;
        if (fragmentLoginSignupBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginSignupBinding = null;
        }
        loginSignupFragment.checkEmailForSignInOrUp(String.valueOf(fragmentLoginSignupBinding.emailAddressInput.getText()));
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getViewModel().getUiState().observe(getViewLifecycleOwner(), new LoginSignupFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.login_screen.LoginSignupFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LoginSignupFragment.onViewCreated$lambda$0(this.f$0, (LoginViewModelUIState) obj);
            }
        }));
    }

    static final Unit onViewCreated$lambda$0(LoginSignupFragment loginSignupFragment, LoginViewModelUIState loginViewModelUIState) {
        if (loginViewModelUIState instanceof LoginViewModelUIState.Loading) {
            FragmentLoginSignupBinding fragmentLoginSignupBinding = loginSignupFragment.binding;
            if (fragmentLoginSignupBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginSignupBinding = null;
            }
            CustomProgressbar loadingSpinner = fragmentLoginSignupBinding.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        } else if (loginViewModelUIState instanceof LoginViewModelUIState.EmailExists) {
            FragmentLoginSignupBinding fragmentLoginSignupBinding2 = loginSignupFragment.binding;
            if (fragmentLoginSignupBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginSignupBinding2 = null;
            }
            CustomProgressbar loadingSpinner2 = fragmentLoginSignupBinding2.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            EnterPasswordFragmentArgs enterPasswordFragmentArgs = new EnterPasswordFragmentArgs(((LoginViewModelUIState.EmailExists) loginViewModelUIState).getEmail());
            if (!loginSignupFragment.isModal()) {
                NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(loginSignupFragment), R.id.enterPasswordFragment, enterPasswordFragmentArgs.toBundle());
            } else {
                NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(loginSignupFragment), R.id.enterPasswordFragmentDialog, enterPasswordFragmentArgs.toBundle());
            }
            loginSignupFragment.getViewModel().resetState();
        } else if (loginViewModelUIState instanceof LoginViewModelUIState.NewUser) {
            FragmentLoginSignupBinding fragmentLoginSignupBinding3 = loginSignupFragment.binding;
            if (fragmentLoginSignupBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginSignupBinding3 = null;
            }
            CustomProgressbar loadingSpinner3 = fragmentLoginSignupBinding3.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner3, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner3, 0L, 1, null);
            RegistrationFormFragmentArgs registrationFormFragmentArgs = new RegistrationFormFragmentArgs(((LoginViewModelUIState.NewUser) loginViewModelUIState).getEmail());
            if (!loginSignupFragment.isModal()) {
                NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(loginSignupFragment), R.id.registrationFormFragment, registrationFormFragmentArgs.toBundle());
            } else {
                NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(loginSignupFragment), R.id.registrationFormFragmentDialog, registrationFormFragmentArgs.toBundle());
            }
            loginSignupFragment.getViewModel().resetState();
        } else if (loginViewModelUIState instanceof LoginViewModelUIState.Error) {
            FragmentLoginSignupBinding fragmentLoginSignupBinding4 = loginSignupFragment.binding;
            if (fragmentLoginSignupBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginSignupBinding4 = null;
            }
            CustomProgressbar loadingSpinner4 = fragmentLoginSignupBinding4.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner4, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner4, 0L, 1, null);
            LoginViewModelUIState.Error error = (LoginViewModelUIState.Error) loginViewModelUIState;
            if (Intrinsics.areEqual(error.getMessage(), "i/o failure")) {
                Context context = loginSignupFragment.getContext();
                if (context != null) {
                    FDAlertManger.INSTANCE.showNotConnectedToInternetAlert(context);
                }
            } else if (error.getMessage() != null) {
                Context context2 = loginSignupFragment.getContext();
                if (context2 != null) {
                    FDAlertManger.INSTANCE.showErrorMessageAlert(error.getMessage(), context2);
                }
            } else {
                Context context3 = loginSignupFragment.getContext();
                if (context3 != null) {
                    FDAlertManger.INSTANCE.showNoResponseFromServerAlert(context3);
                }
            }
        } else if (loginViewModelUIState instanceof LoginViewModelUIState.NoInternetError) {
            FragmentLoginSignupBinding fragmentLoginSignupBinding5 = loginSignupFragment.binding;
            if (fragmentLoginSignupBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLoginSignupBinding5 = null;
            }
            CustomProgressbar loadingSpinner5 = fragmentLoginSignupBinding5.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner5, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner5, 0L, 1, null);
            FDAlertManger.INSTANCE.showNotConnectedToInternetAlert(loginSignupFragment.requireContext());
        } else {
            LoggerKt.getLogger().debug("State not handled for login screen!", new Object[0]);
        }
        return Unit.INSTANCE;
    }

    @Override // fast.dic.dict.bases.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        ViewParent parent = requireView().getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return;
        }
        viewGroup.getLayoutParams().height = -1;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        FragmentLoginSignupBinding fragmentLoginSignupBinding = this.binding;
        FragmentLoginSignupBinding fragmentLoginSignupBinding2 = null;
        if (fragmentLoginSignupBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginSignupBinding = null;
        }
        fragmentLoginSignupBinding.emailAddressInput.clearFocus();
        FragmentLoginSignupBinding fragmentLoginSignupBinding3 = this.binding;
        if (fragmentLoginSignupBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLoginSignupBinding2 = fragmentLoginSignupBinding3;
        }
        TextInputEditText emailAddressInput = fragmentLoginSignupBinding2.emailAddressInput;
        Intrinsics.checkNotNullExpressionValue(emailAddressInput, "emailAddressInput");
        EditTextExKt.hideKeyboard(emailAddressInput);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
    }

    public final void checkEmailForSignInOrUp(String email) {
        Intrinsics.checkNotNullParameter(email, "email");
        if (email.length() == 0) {
            return;
        }
        getViewModel().checkUserEmail(email);
    }
}
