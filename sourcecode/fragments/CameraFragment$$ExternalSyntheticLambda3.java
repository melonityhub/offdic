package fast.dic.dict.fragments;

import androidx.activity.result.ActivityResultCallback;
import com.canhub.cropper.CropImageView;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class CameraFragment$$ExternalSyntheticLambda3 implements ActivityResultCallback {
    public /* synthetic */ CameraFragment$$ExternalSyntheticLambda3() {
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        CameraFragment.cropImage$lambda$0(this.f$0, (CropImageView.CropResult) obj);
    }
}
