package fast.dic.dict.models.database;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PosModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lfast/dic/dict/models/database/PosModel;", "", "pos", "", "posEquivalent", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getPos", "()Ljava/lang/String;", "getPosEquivalent", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class PosModel {
    private final String pos;
    private final String posEquivalent;

    public static /* synthetic */ PosModel copy$default(PosModel posModel, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = posModel.pos;
        }
        if ((i & 2) != 0) {
            str2 = posModel.posEquivalent;
        }
        return posModel.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPos() {
        return this.pos;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPosEquivalent() {
        return this.posEquivalent;
    }

    public final PosModel copy(String pos, String posEquivalent) {
        return new PosModel(pos, posEquivalent);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PosModel)) {
            return false;
        }
        PosModel posModel = (PosModel) other;
        return Intrinsics.areEqual(this.pos, posModel.pos) && Intrinsics.areEqual(this.posEquivalent, posModel.posEquivalent);
    }

    public int hashCode() {
        String str = this.pos;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.posEquivalent;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "PosModel(pos=" + this.pos + ", posEquivalent=" + this.posEquivalent + ")";
    }

    public PosModel(String str, String str2) {
        this.pos = str;
        this.posEquivalent = str2;
    }

    public final String getPos() {
        return this.pos;
    }

    public final String getPosEquivalent() {
        return this.posEquivalent;
    }
}
