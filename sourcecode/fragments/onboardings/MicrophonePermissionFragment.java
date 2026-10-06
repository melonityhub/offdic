package fast.dic.dict.fragments.onboardings;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentMicrophonePermissionBinding;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.PermissionUtilsKt;
import fast.dic.dict.utils.ViewExtKt;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MicrophonePermissionFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R-\u0010\b\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000b \f*\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n0\n0\t¢\u0006\u0002\b\rX\u0082\u0004¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u001d¨\u0006\u001c"}, d2 = {"Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;", "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/FragmentMicrophonePermissionBinding;", "granted", "", "requestMultiplePermissions", "Landroidx/activity/result/ActivityResultLauncher;", "", "", "kotlin.jvm.PlatformType", "Lorg/jspecify/annotations/NonNull;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDismiss", "", "dialog", "Landroid/content/DialogInterface;", "requestAudioPermissions", "Companion", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class MicrophonePermissionFragment extends Hilt_MicrophonePermissionFragment {
    public static final String PERMISSION_GRANTED_KEY = "PERMISSION_GRANTED_KEY";
    private FragmentMicrophonePermissionBinding binding;
    private boolean granted;
    private final ActivityResultLauncher<String[]> requestMultiplePermissions;

    public MicrophonePermissionFragment() {
        super(true);
        ActivityResultLauncher<String[]> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback() { // from class: fast.dic.dict.fragments.onboardings.MicrophonePermissionFragment$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                MicrophonePermissionFragment.requestMultiplePermissions$lambda$0(this.f$0, (Map) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestMultiplePermissions = activityResultLauncherRegisterForActivityResult;
    }

    static final void requestMultiplePermissions$lambda$0(MicrophonePermissionFragment microphonePermissionFragment, Map map) {
        Collection collectionValues = map.values();
        boolean z = true;
        if (!(collectionValues instanceof Collection) || !collectionValues.isEmpty()) {
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                if (!((Boolean) it.next()).booleanValue()) {
                    z = false;
                    break;
                }
            }
        }
        microphonePermissionFragment.granted = z;
        microphonePermissionFragment.dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentMicrophonePermissionBinding fragmentMicrophonePermissionBindingInflate = FragmentMicrophonePermissionBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentMicrophonePermissionBindingInflate, "inflate(...)");
        this.binding = fragmentMicrophonePermissionBindingInflate;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (PermissionUtilsKt.hasRecordAudioPermission(contextRequireContext)) {
            this.granted = true;
            dismiss();
        }
        FragmentMicrophonePermissionBinding fragmentMicrophonePermissionBinding = this.binding;
        FragmentMicrophonePermissionBinding fragmentMicrophonePermissionBinding2 = null;
        if (fragmentMicrophonePermissionBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMicrophonePermissionBinding = null;
        }
        ImageButton rightToolbarButton = fragmentMicrophonePermissionBinding.toolbarView.rightToolbarButton;
        Intrinsics.checkNotNullExpressionValue(rightToolbarButton, "rightToolbarButton");
        ViewExtKt.hideMeNow(rightToolbarButton);
        FragmentMicrophonePermissionBinding fragmentMicrophonePermissionBinding3 = this.binding;
        if (fragmentMicrophonePermissionBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMicrophonePermissionBinding3 = null;
        }
        fragmentMicrophonePermissionBinding3.toolbarView.leftToolbarButton.setText(R.string.close);
        FragmentMicrophonePermissionBinding fragmentMicrophonePermissionBinding4 = this.binding;
        if (fragmentMicrophonePermissionBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMicrophonePermissionBinding4 = null;
        }
        fragmentMicrophonePermissionBinding4.toolbarView.leftToolbarButton.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        FragmentMicrophonePermissionBinding fragmentMicrophonePermissionBinding5 = this.binding;
        if (fragmentMicrophonePermissionBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMicrophonePermissionBinding5 = null;
        }
        fragmentMicrophonePermissionBinding5.toolbarView.leftToolbarButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.onboardings.MicrophonePermissionFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        FragmentMicrophonePermissionBinding fragmentMicrophonePermissionBinding6 = this.binding;
        if (fragmentMicrophonePermissionBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMicrophonePermissionBinding6 = null;
        }
        fragmentMicrophonePermissionBinding6.continueButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.onboardings.MicrophonePermissionFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.requestAudioPermissions();
            }
        });
        FragmentMicrophonePermissionBinding fragmentMicrophonePermissionBinding7 = this.binding;
        if (fragmentMicrophonePermissionBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentMicrophonePermissionBinding2 = fragmentMicrophonePermissionBinding7;
        }
        RelativeLayout root = fragmentMicrophonePermissionBinding2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // fast.dic.dict.fragments.FullscreenBottomSheetFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        SavedStateHandle savedStateHandle;
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        LoggerKt.getLogger().debug("MicrophonePermissionFragment onDismiss called with granted: " + this.granted, new Object[0]);
        NavBackStackEntry previousBackStackEntry = FragmentKt.findNavController(this).getPreviousBackStackEntry();
        if (previousBackStackEntry != null && (savedStateHandle = previousBackStackEntry.getSavedStateHandle()) != null) {
            savedStateHandle.set(PERMISSION_GRANTED_KEY, Boolean.valueOf(this.granted));
        }
        super.onDismiss(dialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestAudioPermissions() {
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (!PermissionUtilsKt.hasRecordAudioPermission(contextRequireContext)) {
            this.requestMultiplePermissions.launch(new String[]{"android.permission.RECORD_AUDIO"});
        } else {
            this.granted = true;
            dismiss();
        }
    }
}
