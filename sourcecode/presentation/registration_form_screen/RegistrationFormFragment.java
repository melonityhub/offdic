package fast.dic.dict.presentation.registration_form_screen;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.fragment.FragmentKt;
import com.google.android.material.textfield.TextInputEditText;
import com.ironsource.U3;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentRegistrationFormBinding;
import fast.dic.dict.services.parse.ParseError;
import fast.dic.dict.utils.ContextExtKt;
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

/* JADX INFO: compiled from: RegistrationFormFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000M\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002*\u0001\u0013\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\b\u0010 \u001a\u00020\u001eH\u0016J\b\u0010!\u001a\u00020\u001eH\u0016J\u0006\u0010\"\u001a\u00020\u001eJ\u0006\u0010#\u001a\u00020\u001eR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014Ê\u0001\u0002\b%¨\u0006$"}, d2 = {"Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "args", "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;", "getArgs", "()Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;", "viewModel", "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "inputChangesListener", "fast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1", "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, U3.i.u0, U3.i.t0, "signUpButtonEnable", "signUpUser", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class RegistrationFormFragment extends Hilt_RegistrationFormFragment {

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    private FragmentRegistrationFormBinding binding;
    private final RegistrationFormFragment$inputChangesListener$1 inputChangesListener;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    /* JADX WARN: Type inference failed for: r0v3, types: [fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$inputChangesListener$1] */
    public RegistrationFormFragment() {
        final RegistrationFormFragment registrationFormFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(RegistrationFormFragmentArgs.class), new Function0<Bundle>() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$special$$inlined$navArgs$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = registrationFormFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + registrationFormFragment + " has null arguments");
            }
        });
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return registrationFormFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(registrationFormFragment, Reflection.getOrCreateKotlinClass(RegistrationFormViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = registrationFormFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        this.inputChangesListener = new TextWatcher() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$inputChangesListener$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable p0) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
                this.this$0.signUpButtonEnable();
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final RegistrationFormFragmentArgs getArgs() {
        return (RegistrationFormFragmentArgs) this.args.getValue();
    }

    private final RegistrationFormViewModel getViewModel() {
        return (RegistrationFormViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentRegistrationFormBinding fragmentRegistrationFormBindingInflate = FragmentRegistrationFormBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentRegistrationFormBindingInflate, "inflate(...)");
        this.binding = fragmentRegistrationFormBindingInflate;
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding = null;
        if (fragmentRegistrationFormBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRegistrationFormBindingInflate = null;
        }
        fragmentRegistrationFormBindingInflate.editEmail.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FragmentKt.findNavController(this.f$0).navigateUp();
            }
        });
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding2 = this.binding;
        if (fragmentRegistrationFormBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRegistrationFormBinding2 = null;
        }
        fragmentRegistrationFormBinding2.userFullNameInput.addTextChangedListener(this.inputChangesListener);
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding3 = this.binding;
        if (fragmentRegistrationFormBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRegistrationFormBinding3 = null;
        }
        fragmentRegistrationFormBinding3.enterPasswordInput.addTextChangedListener(this.inputChangesListener);
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding4 = this.binding;
        if (fragmentRegistrationFormBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRegistrationFormBinding4 = null;
        }
        fragmentRegistrationFormBinding4.repeatEnterPasswordInput.addTextChangedListener(this.inputChangesListener);
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding5 = this.binding;
        if (fragmentRegistrationFormBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRegistrationFormBinding5 = null;
        }
        fragmentRegistrationFormBinding5.repeatEnterPasswordInput.setOnKeyListener(new View.OnKeyListener() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment.onCreateView.2
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                FragmentRegistrationFormBinding fragmentRegistrationFormBinding6 = RegistrationFormFragment.this.binding;
                if (fragmentRegistrationFormBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentRegistrationFormBinding6 = null;
                }
                TextInputEditText repeatEnterPasswordInput = fragmentRegistrationFormBinding6.repeatEnterPasswordInput;
                Intrinsics.checkNotNullExpressionValue(repeatEnterPasswordInput, "repeatEnterPasswordInput");
                if (!KeyEventExtKt.isReturnKey(repeatEnterPasswordInput, keyCode, event.getAction())) {
                    return false;
                }
                RegistrationFormFragment.this.signUpUser();
                return true;
            }
        });
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding6 = this.binding;
        if (fragmentRegistrationFormBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRegistrationFormBinding6 = null;
        }
        fragmentRegistrationFormBinding6.emailAddressLabel.setText(getString(R.string.register_description, getArgs().getEmail()));
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding7 = this.binding;
        if (fragmentRegistrationFormBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRegistrationFormBinding7 = null;
        }
        fragmentRegistrationFormBinding7.termsButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RegistrationFormFragment.onCreateView$lambda$1(this.f$0, view);
            }
        });
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding8 = this.binding;
        if (fragmentRegistrationFormBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRegistrationFormBinding8 = null;
        }
        fragmentRegistrationFormBinding8.signupButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.signUpUser();
            }
        });
        boolean zIsModal = isModal();
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding9 = this.binding;
        if (zIsModal) {
            if (fragmentRegistrationFormBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentRegistrationFormBinding9 = null;
            }
            fragmentRegistrationFormBinding9.topToolbarContainer.setVisibility(0);
        } else {
            if (fragmentRegistrationFormBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentRegistrationFormBinding9 = null;
            }
            fragmentRegistrationFormBinding9.topToolbarContainer.setVisibility(8);
        }
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding10 = this.binding;
        if (fragmentRegistrationFormBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentRegistrationFormBinding = fragmentRegistrationFormBinding10;
        }
        View root = fragmentRegistrationFormBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final void onCreateView$lambda$1(RegistrationFormFragment registrationFormFragment, View view) {
        Uri uri = Uri.parse("https://fastdic.com/terms-conditions" + (registrationFormFragment.getViewModel().getIsCurrentLanguagePersian() ? "/persian" : "") + "?disableSections=true");
        Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        Context context = registrationFormFragment.getContext();
        if (context != null) {
            ContextExtKt.startActivityWithIntent(context, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getViewModel().getUiState().observe(getViewLifecycleOwner(), new RegistrationFormFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RegistrationFormFragment.onViewCreated$lambda$0(this.f$0, (RegistrationFormUIState) obj);
            }
        }));
    }

    static final Unit onViewCreated$lambda$0(RegistrationFormFragment registrationFormFragment, RegistrationFormUIState registrationFormUIState) {
        if (registrationFormUIState instanceof RegistrationFormUIState.Loading) {
            FragmentRegistrationFormBinding fragmentRegistrationFormBinding = registrationFormFragment.binding;
            if (fragmentRegistrationFormBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentRegistrationFormBinding = null;
            }
            CustomProgressbar loadingSpinner = fragmentRegistrationFormBinding.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        } else if (registrationFormUIState instanceof RegistrationFormUIState.Success) {
            FragmentRegistrationFormBinding fragmentRegistrationFormBinding2 = registrationFormFragment.binding;
            if (fragmentRegistrationFormBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentRegistrationFormBinding2 = null;
            }
            CustomProgressbar loadingSpinner2 = fragmentRegistrationFormBinding2.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            if (!registrationFormFragment.isModal()) {
                NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(registrationFormFragment), R.id.finishRegistrationFragment, null, 2, null);
            } else {
                NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(registrationFormFragment), R.id.finishRegistrationFragmentDialog, null, 2, null);
            }
        } else if (registrationFormUIState instanceof RegistrationFormUIState.Error) {
            FragmentRegistrationFormBinding fragmentRegistrationFormBinding3 = registrationFormFragment.binding;
            if (fragmentRegistrationFormBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentRegistrationFormBinding3 = null;
            }
            CustomProgressbar loadingSpinner3 = fragmentRegistrationFormBinding3.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner3, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner3, 0L, 1, null);
            RegistrationFormUIState.Error error = (RegistrationFormUIState.Error) registrationFormUIState;
            if (error.getMessage() != null) {
                FDAlertManger.INSTANCE.showErrorMessageAlert(error.getMessage(), registrationFormFragment.getContext());
            } else {
                FDAlertManger.INSTANCE.showNoResponseFromServerAlert(registrationFormFragment.getContext());
            }
        } else if (registrationFormUIState instanceof RegistrationFormUIState.ParseError) {
            FragmentRegistrationFormBinding fragmentRegistrationFormBinding4 = registrationFormFragment.binding;
            if (fragmentRegistrationFormBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentRegistrationFormBinding4 = null;
            }
            CustomProgressbar loadingSpinner4 = fragmentRegistrationFormBinding4.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner4, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner4, 0L, 1, null);
            ParseError.Companion companion = ParseError.INSTANCE;
            RegistrationFormUIState.ParseError parseError = (RegistrationFormUIState.ParseError) registrationFormUIState;
            String message = parseError.getMessage();
            if (message == null) {
                message = "";
            }
            FDAlertManger.INSTANCE.showErrorMessageAlert(companion.getRightMessage(message, parseError.getCode(), registrationFormFragment.getContext()), registrationFormFragment.getContext());
        } else {
            if (!(registrationFormUIState instanceof RegistrationFormUIState.NoInternetError)) {
                throw new NoWhenBranchMatchedException();
            }
            FragmentRegistrationFormBinding fragmentRegistrationFormBinding5 = registrationFormFragment.binding;
            if (fragmentRegistrationFormBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentRegistrationFormBinding5 = null;
            }
            CustomProgressbar loadingSpinner5 = fragmentRegistrationFormBinding5.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner5, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner5, 0L, 1, null);
            FDAlertManger.INSTANCE.showNotConnectedToInternetAlert(registrationFormFragment.getContext());
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        requireActivity().getWindow().setSoftInputMode(16);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        requireActivity().getWindow().setSoftInputMode(32);
    }

    public final void signUpButtonEnable() {
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding = this.binding;
        if (fragmentRegistrationFormBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRegistrationFormBinding = null;
        }
        String string = StringsKt.trim((CharSequence) String.valueOf(fragmentRegistrationFormBinding.userFullNameInput.getText())).toString();
        String strValueOf = String.valueOf(fragmentRegistrationFormBinding.enterPasswordInput.getText());
        String strValueOf2 = String.valueOf(fragmentRegistrationFormBinding.repeatEnterPasswordInput.getText());
        fragmentRegistrationFormBinding.signupButton.setEnabled(string.length() > 0 && strValueOf.length() > 0 && strValueOf2.length() > 0 && Intrinsics.areEqual(strValueOf, strValueOf2));
    }

    public final void signUpUser() {
        FragmentRegistrationFormBinding fragmentRegistrationFormBinding = this.binding;
        if (fragmentRegistrationFormBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentRegistrationFormBinding = null;
        }
        String string = StringsKt.trim((CharSequence) String.valueOf(fragmentRegistrationFormBinding.userFullNameInput.getText())).toString();
        String strValueOf = String.valueOf(fragmentRegistrationFormBinding.enterPasswordInput.getText());
        String strValueOf2 = String.valueOf(fragmentRegistrationFormBinding.repeatEnterPasswordInput.getText());
        String email = getArgs().getEmail();
        if (StringsKt.isBlank(string) || StringsKt.isBlank(strValueOf) || StringsKt.isBlank(strValueOf2) || !Intrinsics.areEqual(strValueOf, strValueOf2) || StringsKt.isBlank(email)) {
            return;
        }
        getViewModel().submitRegistrationForm(email, strValueOf, string);
    }
}
