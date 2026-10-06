package fast.dic.dict.services.parse;

import com.ironsource.Ta;
import com.ironsource.U3;
import com.parse.ParseClassName;
import com.parse.ParseSession;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDParseSession.kt */
/* JADX INFO: loaded from: classes11.dex */
@ParseClassName("_Session")
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR(\u0010\u000b\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR(\u0010\u000e\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\b\"\u0004\b\u0010\u0010\nR(\u0010\u0011\u001a\u0004\u0018\u00010\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\nÊ\u0001\f\b\u0015\u0012\b\b\u0004\u0012\u0004\b\b(\u0016¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/services/parse/FDParseSession;", "Lcom/parse/ParseSession;", "<init>", "()V", "value", "", "deviceModel", "getDeviceModel", "()Ljava/lang/String;", "setDeviceModel", "(Ljava/lang/String;)V", Ta.o, "getDeviceOS", "setDeviceOS", U3.j.n, "getDeviceOSVersion", "setDeviceOSVersion", "deviceName", "getDeviceName", "setDeviceName", "app", "Lcom/parse/ParseClassName;", "_Session"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDParseSession extends ParseSession {
    public final String getDeviceModel() {
        return getString("deviceModel");
    }

    public final void setDeviceModel(String str) {
        Intrinsics.checkNotNull(str);
        put("deviceModel", str);
    }

    public final String getDeviceOS() {
        return getString(Ta.o);
    }

    public final void setDeviceOS(String str) {
        Intrinsics.checkNotNull(str);
        put(Ta.o, str);
    }

    public final String getDeviceOSVersion() {
        return getString(U3.j.n);
    }

    public final void setDeviceOSVersion(String str) {
        Intrinsics.checkNotNull(str);
        put(U3.j.n, str);
    }

    public final String getDeviceName() {
        return getString("deviceName");
    }

    public final void setDeviceName(String str) {
        Intrinsics.checkNotNull(str);
        put("deviceName", str);
    }
}
