package fast.dic.dict.presentation.common;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SyncUIState.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\nHÆ\u0003JD\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0014\u0010\u001d\u001a\u00020\u00032\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001f\u001a\u00020\bHÖ\u0081\u0004J\n\u0010 \u001a\u00020\u0006HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006!"}, d2 = {"Lfast/dic/dict/presentation/common/SyncUIState;", "", "loading", "", "isSuccess", "errorMessage", "", IronSourceConstants.EVENTS_ERROR_CODE, "", "syncDate", "Ljava/util/Date;", "<init>", "(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;)V", "getLoading", "()Z", "getErrorMessage", "()Ljava/lang/String;", "getErrorCode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSyncDate", "()Ljava/util/Date;", "component1", "component2", "component3", "component4", "component5", "copy", "(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;)Lfast/dic/dict/presentation/common/SyncUIState;", "equals", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class SyncUIState {
    private final Integer errorCode;
    private final String errorMessage;
    private final boolean isSuccess;
    private final boolean loading;
    private final Date syncDate;

    public SyncUIState() {
        this(false, false, null, null, null, 31, null);
    }

    public static /* synthetic */ SyncUIState copy$default(SyncUIState syncUIState, boolean z, boolean z2, String str, Integer num, Date date, int i, Object obj) {
        if ((i & 1) != 0) {
            z = syncUIState.loading;
        }
        if ((i & 2) != 0) {
            z2 = syncUIState.isSuccess;
        }
        if ((i & 4) != 0) {
            str = syncUIState.errorMessage;
        }
        if ((i & 8) != 0) {
            num = syncUIState.errorCode;
        }
        if ((i & 16) != 0) {
            date = syncUIState.syncDate;
        }
        Date date2 = date;
        String str2 = str;
        return syncUIState.copy(z, z2, str2, num, date2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getLoading() {
        return this.loading;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getErrorCode() {
        return this.errorCode;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Date getSyncDate() {
        return this.syncDate;
    }

    public final SyncUIState copy(boolean loading, boolean isSuccess, String errorMessage, Integer errorCode, Date syncDate) {
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        return new SyncUIState(loading, isSuccess, errorMessage, errorCode, syncDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SyncUIState)) {
            return false;
        }
        SyncUIState syncUIState = (SyncUIState) other;
        return this.loading == syncUIState.loading && this.isSuccess == syncUIState.isSuccess && Intrinsics.areEqual(this.errorMessage, syncUIState.errorMessage) && Intrinsics.areEqual(this.errorCode, syncUIState.errorCode) && Intrinsics.areEqual(this.syncDate, syncUIState.syncDate);
    }

    public int hashCode() {
        int iHashCode = ((((Boolean.hashCode(this.loading) * 31) + Boolean.hashCode(this.isSuccess)) * 31) + this.errorMessage.hashCode()) * 31;
        Integer num = this.errorCode;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Date date = this.syncDate;
        return iHashCode2 + (date != null ? date.hashCode() : 0);
    }

    public String toString() {
        return "SyncUIState(loading=" + this.loading + ", isSuccess=" + this.isSuccess + ", errorMessage=" + this.errorMessage + ", errorCode=" + this.errorCode + ", syncDate=" + this.syncDate + ")";
    }

    public SyncUIState(boolean z, boolean z2, String errorMessage, Integer num, Date date) {
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        this.loading = z;
        this.isSuccess = z2;
        this.errorMessage = errorMessage;
        this.errorCode = num;
        this.syncDate = date;
    }

    public final boolean getLoading() {
        return this.loading;
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public /* synthetic */ SyncUIState(boolean z, boolean z2, String str, Integer num, Date date, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? null : num, (i & 16) != 0 ? null : date);
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final Integer getErrorCode() {
        return this.errorCode;
    }

    public final Date getSyncDate() {
        return this.syncDate;
    }
}
