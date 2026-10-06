package fast.dic.dict.fragments.onboardings;

import androidx.activity.result.ActivityResultCallback;
import androidx.navigation.fragment.FragmentKt;
import fast.dic.dict.R;
import fast.dic.dict.utils.NavControllerExtensionKt;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class PushNotificationOnBoardingFragment$$ExternalSyntheticLambda1 implements ActivityResultCallback {
    public /* synthetic */ PushNotificationOnBoardingFragment$$ExternalSyntheticLambda1() {
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(this.f$0), R.id.advertisementOnBoardingFragment, null, 2, null);
    }
}
