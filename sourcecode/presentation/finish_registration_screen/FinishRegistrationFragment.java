package fast.dic.dict.presentation.finish_registration_screen;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import androidx.navigation.fragment.NavHostFragment;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentFinishRegistrationBinding;
import fast.dic.dict.presentation.login_screen.LoginSignupFragment;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FinishRegistrationFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u000f¨\u0006\u000e"}, d2 = {"Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/FragmentFinishRegistrationBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class FinishRegistrationFragment extends Hilt_FinishRegistrationFragment {
    private FragmentFinishRegistrationBinding binding;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentFinishRegistrationBinding fragmentFinishRegistrationBindingInflate = FragmentFinishRegistrationBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentFinishRegistrationBindingInflate, "inflate(...)");
        this.binding = fragmentFinishRegistrationBindingInflate;
        FragmentFinishRegistrationBinding fragmentFinishRegistrationBinding = null;
        if (fragmentFinishRegistrationBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFinishRegistrationBindingInflate = null;
        }
        fragmentFinishRegistrationBindingInflate.returnToProfile.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.finish_registration_screen.FinishRegistrationFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FinishRegistrationFragment.onCreateView$lambda$0(this.f$0, view);
            }
        });
        FragmentFinishRegistrationBinding fragmentFinishRegistrationBinding2 = this.binding;
        if (fragmentFinishRegistrationBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentFinishRegistrationBinding = fragmentFinishRegistrationBinding2;
        }
        return fragmentFinishRegistrationBinding.getRoot();
    }

    static final void onCreateView$lambda$0(FinishRegistrationFragment finishRegistrationFragment, View view) {
        SavedStateHandle savedStateHandle;
        if (!finishRegistrationFragment.isModal()) {
            try {
                Boolean.valueOf(NavHostFragment.INSTANCE.findNavController(finishRegistrationFragment).popBackStack(R.id.profileFragment, false));
                return;
            } catch (Exception e) {
                e.printStackTrace();
                Unit unit = Unit.INSTANCE;
                return;
            }
        }
        finishRegistrationFragment.dismissLoginFlow();
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(finishRegistrationFragment).getCurrentBackStackEntry();
        if (currentBackStackEntry == null || (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) == null) {
            return;
        }
        savedStateHandle.set(LoginSignupFragment.DIALOG_STATUS_KEY, true);
    }
}
