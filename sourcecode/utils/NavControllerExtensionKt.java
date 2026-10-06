package fast.dic.dict.utils;

import android.os.Bundle;
import androidx.navigation.NavController;
import androidx.navigation.NavOptions;
import fast.dic.dict.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NavControllerExtension.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\f\b\u0001\u0010\u0003\u001a\u00020\u0004:\u0002\b\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a$\u0010\b\u001a\u00020\u0001*\u00020\u00022\f\b\u0001\u0010\u0003\u001a\u00020\u0004:\u0002\b\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¨\u0006\t"}, d2 = {"navigateWithSlideAnimation", "", "Landroidx/navigation/NavController;", "resId", "", "Landroidx/annotation/IdRes;", "args", "Landroid/os/Bundle;", "openModal", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class NavControllerExtensionKt {
    public static /* synthetic */ void navigateWithSlideAnimation$default(NavController navController, int i, Bundle bundle, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bundle = null;
        }
        navigateWithSlideAnimation(navController, i, bundle);
    }

    public static final void navigateWithSlideAnimation(NavController navController, int i, Bundle bundle) {
        Intrinsics.checkNotNullParameter(navController, "<this>");
        navController.navigate(i, bundle, new NavOptions.Builder().setEnterAnim(R.anim.slide_in_right).setExitAnim(R.anim.slide_out_left).setPopEnterAnim(R.anim.slide_in_left).setPopExitAnim(R.anim.slide_out_right).setRestoreState(true).build());
    }

    public static /* synthetic */ void openModal$default(NavController navController, int i, Bundle bundle, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bundle = null;
        }
        openModal(navController, i, bundle);
    }

    public static final void openModal(NavController navController, int i, Bundle bundle) {
        Intrinsics.checkNotNullParameter(navController, "<this>");
        navController.navigate(i, bundle, new NavOptions.Builder().setEnterAnim(R.anim.slide_in_up).setExitAnim(R.anim.fade_out).setPopEnterAnim(R.anim.fade_in).setPopExitAnim(R.anim.slide_out_down).setRestoreState(true).build());
    }
}
