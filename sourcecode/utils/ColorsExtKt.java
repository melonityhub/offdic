package fast.dic.dict.utils;

import android.content.Context;
import android.graphics.Color;
import androidx.core.view.ViewCompat;
import com.google.android.material.color.MaterialColors;
import com.yandex.div.core.dagger.Names;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ColorsExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0001¨\u0006\u0005"}, d2 = {"toColor", "", Names.CONTEXT, "Landroid/content/Context;", "getInverseColor", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class ColorsExtKt {
    public static final int toColor(int i, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return MaterialColors.getColor(context, i, ViewCompat.MEASURED_STATE_MASK);
    }

    public static final int getInverseColor(int i) {
        return Color.argb(Color.alpha(i), 255 - Color.red(i), 255 - Color.green(i), 255 - Color.blue(i));
    }
}
