package fast.dic.dict.fragments.onboardings;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.databinding.FragmentCameraPermissionBinding;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CameraPermissionFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\b\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0017H\u0002J\u0006\u0010\u001b\u001a\u00020\u0017J\b\u0010\u001c\u001a\u00020\u0017H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R-\u0010\b\u001a!\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000b \f*\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n0\n0\t¢\u0006\u0002\b\rX\u0082\u0004¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u001f¨\u0006\u001e"}, d2 = {"Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;", "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;", "<init>", "()V", "granted", "", "binding", "Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;", "requestMultiplePermissions", "Landroidx/activity/result/ActivityResultLauncher;", "", "", "kotlin.jvm.PlatformType", "Lorg/jspecify/annotations/NonNull;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDismiss", "", "dialog", "Landroid/content/DialogInterface;", "requestForCameraPermission", "notifyDismiss", "askPermissionForReadStorage", "Companion", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class CameraPermissionFragment extends Hilt_CameraPermissionFragment {
    public static final String PERMISSION_GRANTED_KEY = "camera_permission_granted";
    private FragmentCameraPermissionBinding binding;
    private boolean granted;
    private final ActivityResultLauncher<String[]> requestMultiplePermissions;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String[] REQUIRED_PERMISSIONS = (String[]) CollectionsKt.mutableListOf("android.permission.CAMERA").toArray(new String[0]);

    public CameraPermissionFragment() {
        super(false);
        ActivityResultLauncher<String[]> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback() { // from class: fast.dic.dict.fragments.onboardings.CameraPermissionFragment$$ExternalSyntheticLambda0
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                CameraPermissionFragment.requestMultiplePermissions$lambda$0(this.f$0, (Map) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestMultiplePermissions = activityResultLauncherRegisterForActivityResult;
    }

    static final void requestMultiplePermissions$lambda$0(CameraPermissionFragment cameraPermissionFragment, Map map) {
        if (Intrinsics.areEqual(map.get(ArraysKt.first(REQUIRED_PERMISSIONS)), (Object) true)) {
            cameraPermissionFragment.askPermissionForReadStorage();
            return;
        }
        for (String str : INSTANCE.readImagePermission()) {
            if (map.containsKey(str)) {
                cameraPermissionFragment.granted = true;
                cameraPermissionFragment.notifyDismiss();
                return;
            }
        }
        cameraPermissionFragment.granted = false;
        cameraPermissionFragment.notifyDismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentCameraPermissionBinding fragmentCameraPermissionBindingInflate = FragmentCameraPermissionBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentCameraPermissionBindingInflate, "inflate(...)");
        this.binding = fragmentCameraPermissionBindingInflate;
        Companion companion = INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (companion.isCameraPermissionGranted(contextRequireContext)) {
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            if (companion.isStoragePermissionGranted(fragmentActivityRequireActivity)) {
                this.granted = true;
                notifyDismiss();
            }
        }
        FragmentCameraPermissionBinding fragmentCameraPermissionBinding = this.binding;
        FragmentCameraPermissionBinding fragmentCameraPermissionBinding2 = null;
        if (fragmentCameraPermissionBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentCameraPermissionBinding = null;
        }
        fragmentCameraPermissionBinding.setOnBackListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.onboardings.CameraPermissionFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.notifyDismiss();
            }
        });
        FragmentCameraPermissionBinding fragmentCameraPermissionBinding3 = this.binding;
        if (fragmentCameraPermissionBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentCameraPermissionBinding3 = null;
        }
        fragmentCameraPermissionBinding3.continueButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.onboardings.CameraPermissionFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.requestForCameraPermission();
            }
        });
        FragmentCameraPermissionBinding fragmentCameraPermissionBinding4 = this.binding;
        if (fragmentCameraPermissionBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentCameraPermissionBinding2 = fragmentCameraPermissionBinding4;
        }
        View root = fragmentCameraPermissionBinding2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // fast.dic.dict.fragments.FullscreenBottomSheetFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        SavedStateHandle savedStateHandle;
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        NavBackStackEntry previousBackStackEntry = FragmentKt.findNavController(this).getPreviousBackStackEntry();
        if (previousBackStackEntry != null && (savedStateHandle = previousBackStackEntry.getSavedStateHandle()) != null) {
            savedStateHandle.set(PERMISSION_GRANTED_KEY, Boolean.valueOf(this.granted));
        }
        super.onDismiss(dialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestForCameraPermission() {
        Companion companion = INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (companion.isCameraPermissionGranted(contextRequireContext)) {
            askPermissionForReadStorage();
        } else {
            this.requestMultiplePermissions.launch(REQUIRED_PERMISSIONS);
        }
    }

    public final void notifyDismiss() {
        SavedStateHandle savedStateHandle;
        CameraPermissionFragment cameraPermissionFragment = this;
        NavBackStackEntry previousBackStackEntry = FragmentKt.findNavController(cameraPermissionFragment).getPreviousBackStackEntry();
        if (previousBackStackEntry != null && (savedStateHandle = previousBackStackEntry.getSavedStateHandle()) != null) {
            savedStateHandle.set(PERMISSION_GRANTED_KEY, Boolean.valueOf(this.granted));
        }
        FragmentKt.findNavController(cameraPermissionFragment).navigateUp();
    }

    private final void askPermissionForReadStorage() {
        Companion companion = INSTANCE;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        if (companion.isStoragePermissionGranted(fragmentActivityRequireActivity)) {
            notifyDismiss();
        } else {
            this.requestMultiplePermissions.launch(companion.readImagePermission());
        }
    }

    /* JADX INFO: compiled from: CameraPermissionFragment.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0002¢\u0006\u0002\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$Companion;", "", "<init>", "()V", MicrophonePermissionFragment.PERMISSION_GRANTED_KEY, "", "REQUIRED_PERMISSIONS", "", "[Ljava/lang/String;", "isCameraPermissionGranted", "", Names.CONTEXT, "Landroid/content/Context;", "isStoragePermissionGranted", "activity", "Landroid/app/Activity;", "readImagePermission", "()[Ljava/lang/String;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean isCameraPermissionGranted(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            for (String str : CameraPermissionFragment.REQUIRED_PERMISSIONS) {
                if (ContextCompat.checkSelfPermission(context, str) != 0) {
                    return false;
                }
            }
            return true;
        }

        public final boolean isStoragePermissionGranted(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            for (String str : readImagePermission()) {
                if (ContextCompat.checkSelfPermission(activity, str) == 0) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String[] readImagePermission() {
            if (Build.VERSION.SDK_INT >= 33) {
                if (Build.VERSION.SDK_INT >= 34) {
                    return new String[]{"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"};
                }
                return new String[]{"android.permission.READ_MEDIA_IMAGES"};
            }
            return new String[]{"android.permission.READ_EXTERNAL_STORAGE"};
        }
    }
}
