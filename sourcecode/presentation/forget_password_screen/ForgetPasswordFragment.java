package fast.dic.dict.presentation.forget_password_screen;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
import fast.dic.dict.databinding.FragmentForgetPasswordBinding;
import fast.dic.dict.utils.EditTextExKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.KeyEventExtKt;
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

/* JADX INFO: compiled from: ForgetPasswordFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u001b¨\u0006\u001a"}, d2 = {"Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "viewModel", "Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "resetPassword", "email", "", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class ForgetPasswordFragment extends Hilt_ForgetPasswordFragment {
    private FragmentForgetPasswordBinding binding;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public ForgetPasswordFragment() {
        final ForgetPasswordFragment forgetPasswordFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return forgetPasswordFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(forgetPasswordFragment, Reflection.getOrCreateKotlinClass(ForgetPasswordViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = forgetPasswordFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    private final ForgetPasswordViewModel getViewModel() {
        return (ForgetPasswordViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentForgetPasswordBinding fragmentForgetPasswordBindingInflate = FragmentForgetPasswordBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentForgetPasswordBindingInflate, "inflate(...)");
        this.binding = fragmentForgetPasswordBindingInflate;
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding = null;
        if (fragmentForgetPasswordBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentForgetPasswordBindingInflate = null;
        }
        fragmentForgetPasswordBindingInflate.backButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ForgetPasswordFragment.onCreateView$lambda$0(this.f$0, view);
            }
        });
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding2 = this.binding;
        if (fragmentForgetPasswordBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentForgetPasswordBinding2 = null;
        }
        fragmentForgetPasswordBinding2.sendRestPasswordButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ForgetPasswordFragment.onCreateView$lambda$1(this.f$0, view);
            }
        });
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding3 = this.binding;
        if (fragmentForgetPasswordBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentForgetPasswordBinding3 = null;
        }
        fragmentForgetPasswordBinding3.emailAddressInput.setOnKeyListener(new View.OnKeyListener() { // from class: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment.onCreateView.3
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                FragmentForgetPasswordBinding fragmentForgetPasswordBinding4 = ForgetPasswordFragment.this.binding;
                FragmentForgetPasswordBinding fragmentForgetPasswordBinding5 = null;
                if (fragmentForgetPasswordBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentForgetPasswordBinding4 = null;
                }
                TextInputEditText emailAddressInput = fragmentForgetPasswordBinding4.emailAddressInput;
                Intrinsics.checkNotNullExpressionValue(emailAddressInput, "emailAddressInput");
                if (!KeyEventExtKt.isReturnKey(emailAddressInput, keyCode, event.getAction())) {
                    return false;
                }
                ForgetPasswordFragment forgetPasswordFragment = ForgetPasswordFragment.this;
                FragmentForgetPasswordBinding fragmentForgetPasswordBinding6 = forgetPasswordFragment.binding;
                if (fragmentForgetPasswordBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    fragmentForgetPasswordBinding5 = fragmentForgetPasswordBinding6;
                }
                forgetPasswordFragment.resetPassword(String.valueOf(fragmentForgetPasswordBinding5.emailAddressInput.getText()));
                return true;
            }
        });
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding4 = this.binding;
        if (fragmentForgetPasswordBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentForgetPasswordBinding4 = null;
        }
        fragmentForgetPasswordBinding4.emailAddressInput.addTextChangedListener(new TextWatcher() { // from class: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment.onCreateView.4
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable p0) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
                FragmentForgetPasswordBinding fragmentForgetPasswordBinding5 = ForgetPasswordFragment.this.binding;
                if (fragmentForgetPasswordBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentForgetPasswordBinding5 = null;
                }
                fragmentForgetPasswordBinding5.sendRestPasswordButton.setEnabled((String.valueOf(p0).length() == 0 || StringsKt.isBlank(String.valueOf(p0))) ? false : true);
            }
        });
        boolean zIsModal = isModal();
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding5 = this.binding;
        if (zIsModal) {
            if (fragmentForgetPasswordBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentForgetPasswordBinding5 = null;
            }
            fragmentForgetPasswordBinding5.topToolbarContainer.setVisibility(0);
        } else {
            if (fragmentForgetPasswordBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentForgetPasswordBinding5 = null;
            }
            fragmentForgetPasswordBinding5.topToolbarContainer.setVisibility(8);
        }
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding6 = this.binding;
        if (fragmentForgetPasswordBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentForgetPasswordBinding6 = null;
        }
        fragmentForgetPasswordBinding6.emailAddressInput.clearFocus();
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding7 = this.binding;
        if (fragmentForgetPasswordBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentForgetPasswordBinding7 = null;
        }
        fragmentForgetPasswordBinding7.emailAddressInput.requestFocus();
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding8 = this.binding;
        if (fragmentForgetPasswordBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentForgetPasswordBinding8 = null;
        }
        TextInputEditText emailAddressInput = fragmentForgetPasswordBinding8.emailAddressInput;
        Intrinsics.checkNotNullExpressionValue(emailAddressInput, "emailAddressInput");
        EditTextExKt.showKeyboard(emailAddressInput);
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding9 = this.binding;
        if (fragmentForgetPasswordBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentForgetPasswordBinding = fragmentForgetPasswordBinding9;
        }
        FrameLayout root = fragmentForgetPasswordBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final void onCreateView$lambda$0(ForgetPasswordFragment forgetPasswordFragment, View view) {
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding = forgetPasswordFragment.binding;
        if (fragmentForgetPasswordBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentForgetPasswordBinding = null;
        }
        TextInputEditText emailAddressInput = fragmentForgetPasswordBinding.emailAddressInput;
        Intrinsics.checkNotNullExpressionValue(emailAddressInput, "emailAddressInput");
        EditTextExKt.hideKeyboard(emailAddressInput);
        FragmentKt.findNavController(forgetPasswordFragment).popBackStack();
    }

    static final void onCreateView$lambda$1(ForgetPasswordFragment forgetPasswordFragment, View view) {
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding = forgetPasswordFragment.binding;
        if (fragmentForgetPasswordBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentForgetPasswordBinding = null;
        }
        forgetPasswordFragment.resetPassword(String.valueOf(fragmentForgetPasswordBinding.emailAddressInput.getText()));
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getViewModel().getUiState().observe(getViewLifecycleOwner(), new ForgetPasswordFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ForgetPasswordFragment.onViewCreated$lambda$0(this.f$0, (ForgetPasswordUIState) obj);
            }
        }));
    }

    static final Unit onViewCreated$lambda$0(ForgetPasswordFragment forgetPasswordFragment, ForgetPasswordUIState forgetPasswordUIState) {
        String string;
        String string2;
        String string3;
        Resources resources;
        Resources resources2;
        FragmentForgetPasswordBinding fragmentForgetPasswordBinding = null;
        if (forgetPasswordUIState instanceof ForgetPasswordUIState.Loading) {
            FragmentForgetPasswordBinding fragmentForgetPasswordBinding2 = forgetPasswordFragment.binding;
            if (fragmentForgetPasswordBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentForgetPasswordBinding2 = null;
            }
            CustomProgressbar loadingSpinner = fragmentForgetPasswordBinding2.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        } else if (forgetPasswordUIState instanceof ForgetPasswordUIState.Success) {
            FragmentForgetPasswordBinding fragmentForgetPasswordBinding3 = forgetPasswordFragment.binding;
            if (fragmentForgetPasswordBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentForgetPasswordBinding3 = null;
            }
            CustomProgressbar loadingSpinner2 = fragmentForgetPasswordBinding3.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            FragmentForgetPasswordBinding fragmentForgetPasswordBinding4 = forgetPasswordFragment.binding;
            if (fragmentForgetPasswordBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentForgetPasswordBinding = fragmentForgetPasswordBinding4;
            }
            TextInputEditText emailAddressInput = fragmentForgetPasswordBinding.emailAddressInput;
            Intrinsics.checkNotNullExpressionValue(emailAddressInput, "emailAddressInput");
            EditTextExKt.hideKeyboard(emailAddressInput);
            FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
            Context context = forgetPasswordFragment.getContext();
            String str = "";
            if (context == null || (resources2 = context.getResources()) == null || (string = resources2.getString(R.string.reset_password)) == null) {
                string = "";
            }
            Context context2 = forgetPasswordFragment.getContext();
            if (context2 == null || (resources = context2.getResources()) == null || (string2 = resources.getString(R.string.an_email_sent_to_change_your_password)) == null) {
                string2 = "";
            }
            Context context3 = forgetPasswordFragment.getContext();
            if (context3 != null && (string3 = context3.getString(R.string.close)) != null) {
                str = string3;
            }
            fDAlertManger.showAlertWithOutForeCloseApp(string, string2, str, forgetPasswordFragment.getContext());
        } else if (forgetPasswordUIState instanceof ForgetPasswordUIState.Error) {
            FragmentForgetPasswordBinding fragmentForgetPasswordBinding5 = forgetPasswordFragment.binding;
            if (fragmentForgetPasswordBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentForgetPasswordBinding5 = null;
            }
            CustomProgressbar loadingSpinner3 = fragmentForgetPasswordBinding5.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner3, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner3, 0L, 1, null);
            ForgetPasswordUIState.Error error = (ForgetPasswordUIState.Error) forgetPasswordUIState;
            if (error.getMessage() != null) {
                FDAlertManger.INSTANCE.showErrorMessageAlert(error.getMessage(), forgetPasswordFragment.getContext());
            } else {
                FDAlertManger.INSTANCE.showNoResponseFromServerAlert(forgetPasswordFragment.getContext());
            }
        } else {
            if (!(forgetPasswordUIState instanceof ForgetPasswordUIState.NoInternetError)) {
                throw new NoWhenBranchMatchedException();
            }
            FragmentForgetPasswordBinding fragmentForgetPasswordBinding6 = forgetPasswordFragment.binding;
            if (fragmentForgetPasswordBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentForgetPasswordBinding6 = null;
            }
            CustomProgressbar loadingSpinner4 = fragmentForgetPasswordBinding6.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner4, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner4, 0L, 1, null);
        }
        return Unit.INSTANCE;
    }

    public final void resetPassword(String email) {
        Intrinsics.checkNotNullParameter(email, "email");
        String str = email;
        if (str.length() == 0 || StringsKt.isBlank(str)) {
            return;
        }
        getViewModel().sendRestPasswordLink(email);
    }
}
