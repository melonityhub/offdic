package fast.dic.dict.fragments.onboardings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.navigation.fragment.FragmentKt;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentPushNotificationOnBoardingBinding;
import fast.dic.dict.utils.NavControllerExtensionKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PushNotificationOnBoardingFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J \u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\rH\u0017b\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\u0003\u0010BR!\u0010\u0005\u001a\u0015\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00070\u00070\u0006¢\u0006\u0002\b\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u001a¨\u0006\u0019"}, d2 = {"Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragment;", "Lfast/dic/dict/bases/BaseFragment;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "pushNotificationPermissionLauncher", "Landroidx/activity/result/ActivityResultLauncher;", "", "kotlin.jvm.PlatformType", "Lorg/jspecify/annotations/NonNull;", "binding", "Lfast/dic/dict/databinding/FragmentPushNotificationOnBoardingBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onClick", "", "button", "Landroidx/annotation/RequiresApi;", "value", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class PushNotificationOnBoardingFragment extends Hilt_PushNotificationOnBoardingFragment implements View.OnClickListener {
    private FragmentPushNotificationOnBoardingBinding binding;
    private final ActivityResultLauncher<String> pushNotificationPermissionLauncher;

    public PushNotificationOnBoardingFragment() {
        ActivityResultLauncher<String> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() { // from class: fast.dic.dict.fragments.onboardings.PushNotificationOnBoardingFragment$$ExternalSyntheticLambda1
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(this.f$0), R.id.advertisementOnBoardingFragment, null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.pushNotificationPermissionLauncher = activityResultLauncherRegisterForActivityResult;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentPushNotificationOnBoardingBinding fragmentPushNotificationOnBoardingBindingInflate = FragmentPushNotificationOnBoardingBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentPushNotificationOnBoardingBindingInflate, "inflate(...)");
        this.binding = fragmentPushNotificationOnBoardingBindingInflate;
        FragmentPushNotificationOnBoardingBinding fragmentPushNotificationOnBoardingBinding = null;
        if (fragmentPushNotificationOnBoardingBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentPushNotificationOnBoardingBindingInflate = null;
        }
        fragmentPushNotificationOnBoardingBindingInflate.continueButton.setOnClickListener(this);
        FragmentPushNotificationOnBoardingBinding fragmentPushNotificationOnBoardingBinding2 = this.binding;
        if (fragmentPushNotificationOnBoardingBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentPushNotificationOnBoardingBinding2 = null;
        }
        ViewCompat.setOnApplyWindowInsetsListener(fragmentPushNotificationOnBoardingBinding2.getRoot(), new OnApplyWindowInsetsListener() { // from class: fast.dic.dict.fragments.onboardings.PushNotificationOnBoardingFragment$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return PushNotificationOnBoardingFragment.onCreateView$lambda$0(view, windowInsetsCompat);
            }
        });
        FragmentPushNotificationOnBoardingBinding fragmentPushNotificationOnBoardingBinding3 = this.binding;
        if (fragmentPushNotificationOnBoardingBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentPushNotificationOnBoardingBinding = fragmentPushNotificationOnBoardingBinding3;
        }
        return fragmentPushNotificationOnBoardingBinding.getRoot();
    }

    static final WindowInsetsCompat onCreateView$lambda$0(View v, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        v.setPadding(v.getPaddingLeft(), v.getPaddingTop(), v.getPaddingRight(), insets2.bottom);
        return insets;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View button) {
        this.pushNotificationPermissionLauncher.launch("android.permission.POST_NOTIFICATIONS");
    }
}
