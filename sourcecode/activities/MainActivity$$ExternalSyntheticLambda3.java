package fast.dic.dict.activities;

import android.os.Bundle;
import androidx.fragment.app.FragmentResultListener;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class MainActivity$$ExternalSyntheticLambda3 implements FragmentResultListener {
    public final /* synthetic */ MainActivity f$1;

    public /* synthetic */ MainActivity$$ExternalSyntheticLambda3() {
        this = mainActivity;
    }

    @Override // androidx.fragment.app.FragmentResultListener
    public final void onFragmentResult(String str, Bundle bundle) {
        MainActivity.setupToolbarTitle$lambda$0(navController, this, str, bundle);
    }
}
