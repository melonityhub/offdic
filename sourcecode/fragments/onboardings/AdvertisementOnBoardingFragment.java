package fast.dic.dict.fragments.onboardings;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import com.parse.ParseException;
import com.parse.ParseUser;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.activities.MainActivity;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentAdvertisementOnBoardingBinding;
import fast.dic.dict.services.parse.FDParseUser;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdvertisementOnBoardingFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J$\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u0015¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;", "Lfast/dic/dict/bases/BaseFragment;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onBackPressed", "", "onClick", "", "button", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class AdvertisementOnBoardingFragment extends Hilt_AdvertisementOnBoardingFragment implements View.OnClickListener {
    private FragmentAdvertisementOnBoardingBinding binding;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) throws ParseException {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentAdvertisementOnBoardingBinding fragmentAdvertisementOnBoardingBindingInflate = FragmentAdvertisementOnBoardingBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentAdvertisementOnBoardingBindingInflate, "inflate(...)");
        this.binding = fragmentAdvertisementOnBoardingBindingInflate;
        FragmentAdvertisementOnBoardingBinding fragmentAdvertisementOnBoardingBinding = null;
        if (fragmentAdvertisementOnBoardingBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAdvertisementOnBoardingBindingInflate = null;
        }
        fragmentAdvertisementOnBoardingBindingInflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentAdvertisementOnBoardingBinding fragmentAdvertisementOnBoardingBinding2 = this.binding;
        if (fragmentAdvertisementOnBoardingBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAdvertisementOnBoardingBinding2 = null;
        }
        AdvertisementOnBoardingFragment advertisementOnBoardingFragment = this;
        fragmentAdvertisementOnBoardingBinding2.continueButton.setOnClickListener(advertisementOnBoardingFragment);
        FragmentAdvertisementOnBoardingBinding fragmentAdvertisementOnBoardingBinding3 = this.binding;
        if (fragmentAdvertisementOnBoardingBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAdvertisementOnBoardingBinding3 = null;
        }
        fragmentAdvertisementOnBoardingBinding3.purchaseButton.setOnClickListener(advertisementOnBoardingFragment);
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser != null && !fDParseUser.isFree()) {
            FragmentAdvertisementOnBoardingBinding fragmentAdvertisementOnBoardingBinding4 = this.binding;
            if (fragmentAdvertisementOnBoardingBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentAdvertisementOnBoardingBinding4 = null;
            }
            fragmentAdvertisementOnBoardingBinding4.setSecondaryButtonTitle(getString(R.string.i_have_subscription));
        } else {
            FragmentAdvertisementOnBoardingBinding fragmentAdvertisementOnBoardingBinding5 = this.binding;
            if (fragmentAdvertisementOnBoardingBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentAdvertisementOnBoardingBinding5 = null;
            }
            fragmentAdvertisementOnBoardingBinding5.setSecondaryButtonTitle(getString(R.string.remove_ads_and_by_pro_subscription));
        }
        FragmentAdvertisementOnBoardingBinding fragmentAdvertisementOnBoardingBinding6 = this.binding;
        if (fragmentAdvertisementOnBoardingBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAdvertisementOnBoardingBinding6 = null;
        }
        ViewCompat.setOnApplyWindowInsetsListener(fragmentAdvertisementOnBoardingBinding6.getRoot(), new OnApplyWindowInsetsListener() { // from class: fast.dic.dict.fragments.onboardings.AdvertisementOnBoardingFragment$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return AdvertisementOnBoardingFragment.onCreateView$lambda$0(view, windowInsetsCompat);
            }
        });
        FragmentAdvertisementOnBoardingBinding fragmentAdvertisementOnBoardingBinding7 = this.binding;
        if (fragmentAdvertisementOnBoardingBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentAdvertisementOnBoardingBinding = fragmentAdvertisementOnBoardingBinding7;
        }
        View root = fragmentAdvertisementOnBoardingBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final WindowInsetsCompat onCreateView$lambda$0(View v, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        v.setPadding(v.getPaddingLeft(), v.getPaddingTop(), v.getPaddingRight(), insets2.bottom);
        return insets;
    }

    @Override // fast.dic.dict.bases.BaseFragment
    public boolean onBackPressed() {
        FragmentKt.findNavController(this).popBackStack(R.id.languageOnBoardingFragment, false);
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View button) throws ParseException {
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        new LocalStorage(contextRequireContext).setSeenOnBoarding(true);
        AdvertisementOnBoardingFragment advertisementOnBoardingFragment = this;
        FragmentKt.findNavController(advertisementOnBoardingFragment).popBackStack(R.id.homeFragment, false);
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || fDParseUser.isFree()) {
            Intrinsics.checkNotNull(button);
            if (button.getId() != R.id.continue_button) {
                FragmentActivity activity = getActivity();
                MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
                if (mainActivity != null) {
                    mainActivity.selectMoreTab();
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("fromOnBoarding", true);
                FragmentKt.findNavController(advertisementOnBoardingFragment).navigate(R.id.newPricingFragment, bundle);
            }
        }
    }
}
