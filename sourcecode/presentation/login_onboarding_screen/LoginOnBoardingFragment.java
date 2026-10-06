package fast.dic.dict.presentation.login_onboarding_screen;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.navigation.fragment.FragmentKt;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentLoginOnboardingBinding;
import fast.dic.dict.utils.FDParseUserExtensionKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoginOnBoardingFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u0012¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/FragmentLoginOnboardingBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class LoginOnBoardingFragment extends Hilt_LoginOnBoardingFragment {
    private FragmentLoginOnboardingBinding binding;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentLoginOnboardingBinding fragmentLoginOnboardingBindingInflate = FragmentLoginOnboardingBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentLoginOnboardingBindingInflate, "inflate(...)");
        this.binding = fragmentLoginOnboardingBindingInflate;
        FragmentLoginOnboardingBinding fragmentLoginOnboardingBinding = null;
        if (fragmentLoginOnboardingBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLoginOnboardingBindingInflate = null;
        }
        fragmentLoginOnboardingBindingInflate.continueButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.login_onboarding_screen.LoginOnBoardingFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(this.f$0), R.id.loginSignupFragment, null, 2, null);
            }
        });
        FragmentLoginOnboardingBinding fragmentLoginOnboardingBinding2 = this.binding;
        if (fragmentLoginOnboardingBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLoginOnboardingBinding = fragmentLoginOnboardingBinding2;
        }
        View root = fragmentLoginOnboardingBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (FDParseUserExtensionKt.isLoggedIn()) {
            FragmentKt.findNavController(this).navigate(R.id.profileFragment);
        }
    }
}
