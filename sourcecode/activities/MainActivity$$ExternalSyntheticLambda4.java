package fast.dic.dict.activities;

import android.os.Bundle;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class MainActivity$$ExternalSyntheticLambda4 implements NavController.OnDestinationChangedListener {
    public /* synthetic */ MainActivity$$ExternalSyntheticLambda4() {
    }

    @Override // androidx.navigation.NavController.OnDestinationChangedListener
    public final void onDestinationChanged(NavController navController, NavDestination navDestination, Bundle bundle) {
        MainActivity.setupToolbarTitle$lambda$1(this.f$0, navController, navDestination, bundle);
    }
}
