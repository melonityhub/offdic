package fast.dic.dict.bases;

import android.os.Bundle;
import androidx.fragment.app.FragmentResultListener;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class BaseFragment$$ExternalSyntheticLambda0 implements FragmentResultListener {
    public final /* synthetic */ String f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ BaseFragment$$ExternalSyntheticLambda0() {
        key = str;
        callback = function0;
    }

    @Override // androidx.fragment.app.FragmentResultListener
    public final void onFragmentResult(String str, Bundle bundle) {
        BaseFragment.observeOnDialogDismiss$lambda$0(key, callback, str, bundle);
    }
}
