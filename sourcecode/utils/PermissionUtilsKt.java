package fast.dic.dict.utils;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.yandex.div.core.dagger.Names;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PermissionUtils.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0004"}, d2 = {"hasRecordAudioPermission", "", Names.CONTEXT, "Landroid/content/Context;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class PermissionUtilsKt {
    public static final boolean hasRecordAudioPermission(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return ContextCompat.checkSelfPermission(context, "android.permission.RECORD_AUDIO") == 0;
    }
}
