package fast.dic.dict.data.sync.model;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SyncSessionModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u001a\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\tHÆ\u0003J5\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0014\u0010\u001f\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010!\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\"\u001a\u00020\u0003HÖ\u0081\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006#"}, d2 = {"Lfast/dic/dict/data/sync/model/SyncSessionModel;", "", "session_id", "", "expires", "Ljava/util/Date;", "error", "", IronSourceConstants.EVENTS_ERROR_CODE, "", "<init>", "(Ljava/lang/String;Ljava/util/Date;ZI)V", "getSession_id", "()Ljava/lang/String;", "setSession_id", "(Ljava/lang/String;)V", "getExpires", "()Ljava/util/Date;", "setExpires", "(Ljava/util/Date;)V", "getError", "()Z", "setError", "(Z)V", "getErrorCode", "()I", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class SyncSessionModel {
    private boolean error;
    private final int errorCode;
    private Date expires;
    private String session_id;

    public SyncSessionModel() {
        this(null, null, false, 0, 15, null);
    }

    public static /* synthetic */ SyncSessionModel copy$default(SyncSessionModel syncSessionModel, String str, Date date, boolean z, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = syncSessionModel.session_id;
        }
        if ((i2 & 2) != 0) {
            date = syncSessionModel.expires;
        }
        if ((i2 & 4) != 0) {
            z = syncSessionModel.error;
        }
        if ((i2 & 8) != 0) {
            i = syncSessionModel.errorCode;
        }
        return syncSessionModel.copy(str, date, z, i);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSession_id() {
        return this.session_id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Date getExpires() {
        return this.expires;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getError() {
        return this.error;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getErrorCode() {
        return this.errorCode;
    }

    public final SyncSessionModel copy(String session_id, Date expires, boolean error, int errorCode) {
        return new SyncSessionModel(session_id, expires, error, errorCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SyncSessionModel)) {
            return false;
        }
        SyncSessionModel syncSessionModel = (SyncSessionModel) other;
        return Intrinsics.areEqual(this.session_id, syncSessionModel.session_id) && Intrinsics.areEqual(this.expires, syncSessionModel.expires) && this.error == syncSessionModel.error && this.errorCode == syncSessionModel.errorCode;
    }

    public int hashCode() {
        String str = this.session_id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Date date = this.expires;
        return ((((iHashCode + (date != null ? date.hashCode() : 0)) * 31) + Boolean.hashCode(this.error)) * 31) + Integer.hashCode(this.errorCode);
    }

    public String toString() {
        return "SyncSessionModel(session_id=" + this.session_id + ", expires=" + this.expires + ", error=" + this.error + ", errorCode=" + this.errorCode + ")";
    }

    public SyncSessionModel(String str, Date date, boolean z, int i) {
        this.session_id = str;
        this.expires = date;
        this.error = z;
        this.errorCode = i;
    }

    public /* synthetic */ SyncSessionModel(String str, Date date, boolean z, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : date, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? 0 : i);
    }

    public final String getSession_id() {
        return this.session_id;
    }

    public final void setSession_id(String str) {
        this.session_id = str;
    }

    public final Date getExpires() {
        return this.expires;
    }

    public final void setExpires(Date date) {
        this.expires = date;
    }

    public final boolean getError() {
        return this.error;
    }

    public final void setError(boolean z) {
        this.error = z;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }
}
