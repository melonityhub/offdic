package fast.dic.dict.presentation.profile_screen;

import android.view.View;
import androidx.navigation.fragment.FragmentKt;
import fast.dic.dict.R;
import fast.dic.dict.utils.NavControllerExtensionKt;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class ProfileFragment$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public /* synthetic */ ProfileFragment$$ExternalSyntheticLambda1() {
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(this.f$0), R.id.updateProfileFragment, null, 2, null);
    }
}
