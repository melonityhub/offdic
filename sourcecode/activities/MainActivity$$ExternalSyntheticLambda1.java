package fast.dic.dict.activities;

import androidx.lifecycle.Observer;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class MainActivity$$ExternalSyntheticLambda1 implements Observer {
    public final /* synthetic */ MainActivity f$1;

    public /* synthetic */ MainActivity$$ExternalSyntheticLambda1() {
        mainActivity = mainActivity;
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        MainActivity.setupToolbarTitle$lambda$1$1(destination, mainActivity, (String) obj);
    }
}
