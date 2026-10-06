package fast.dic.dict.utils;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KeyEventExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u001a\u0012\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\t"}, d2 = {"isReturnKey", "", "Landroid/view/View;", "keyCode", "", "action", "isNextNavigationKey", "isSearchKey", "isDoneKey", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class KeyEventExtKt {
    public static final boolean isDoneKey(View view, int i) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return i == 6;
    }

    public static final boolean isNextNavigationKey(View view, int i) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return i == 134217728;
    }

    public static final boolean isSearchKey(View view, int i) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return i == 3;
    }

    public static final boolean isReturnKey(View view, int i, int i2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (i2 == 0) {
            return i == 66 || isNextNavigationKey(view, i) || isSearchKey(view, i) || isDoneKey(view, i);
        }
        return false;
    }
}
