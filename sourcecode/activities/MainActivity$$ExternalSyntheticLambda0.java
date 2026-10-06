package fast.dic.dict.activities;

import android.view.MenuItem;
import androidx.navigation.NavController;
import com.google.android.material.navigation.NavigationBarView;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class MainActivity$$ExternalSyntheticLambda0 implements NavigationBarView.OnItemReselectedListener {
    public final /* synthetic */ NavController f$1;

    public /* synthetic */ MainActivity$$ExternalSyntheticLambda0() {
        navController = navController;
    }

    @Override // com.google.android.material.navigation.NavigationBarView.OnItemReselectedListener
    public final void onNavigationItemReselected(MenuItem menuItem) {
        MainActivity.setupBottomNavigation$lambda$0(this.f$0, navController, menuItem);
    }
}
