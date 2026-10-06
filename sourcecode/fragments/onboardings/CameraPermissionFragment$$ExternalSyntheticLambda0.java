package fast.dic.dict.fragments.onboardings;

import androidx.activity.result.ActivityResultCallback;
import java.util.Map;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class CameraPermissionFragment$$ExternalSyntheticLambda0 implements ActivityResultCallback {
    public /* synthetic */ CameraPermissionFragment$$ExternalSyntheticLambda0() {
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        CameraPermissionFragment.requestMultiplePermissions$lambda$0(this.f$0, (Map) obj);
    }
}
