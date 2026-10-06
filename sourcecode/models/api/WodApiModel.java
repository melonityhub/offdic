package fast.dic.dict.models.api;

import fast.dic.dict.utils.DateExtKt;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WodApiModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/models/api/WodApiModel;", "", "date", "", "word", "dateJalali", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDate", "()Ljava/lang/String;", "getWord", "getDateJalali", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class WodApiModel {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: default, reason: not valid java name */
    private static final WodApiModel f3860default = new WodApiModel(DateExtKt.toString$default(new Date(), "yyyy-MM-dd", null, 2, null), "Fast", DateExtKt.toString$default(new Date(), "yyyy-MM-dd", null, 2, null));
    private final String date;
    private final String dateJalali;
    private final String word;

    public WodApiModel() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ WodApiModel copy$default(WodApiModel wodApiModel, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wodApiModel.date;
        }
        if ((i & 2) != 0) {
            str2 = wodApiModel.word;
        }
        if ((i & 4) != 0) {
            str3 = wodApiModel.dateJalali;
        }
        return wodApiModel.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDate() {
        return this.date;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getWord() {
        return this.word;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDateJalali() {
        return this.dateJalali;
    }

    public final WodApiModel copy(String date, String word, String dateJalali) {
        return new WodApiModel(date, word, dateJalali);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WodApiModel)) {
            return false;
        }
        WodApiModel wodApiModel = (WodApiModel) other;
        return Intrinsics.areEqual(this.date, wodApiModel.date) && Intrinsics.areEqual(this.word, wodApiModel.word) && Intrinsics.areEqual(this.dateJalali, wodApiModel.dateJalali);
    }

    public int hashCode() {
        String str = this.date;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.word;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.dateJalali;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "WodApiModel(date=" + this.date + ", word=" + this.word + ", dateJalali=" + this.dateJalali + ")";
    }

    public WodApiModel(String str, String str2, String str3) {
        this.date = str;
        this.word = str2;
        this.dateJalali = str3;
    }

    public /* synthetic */ WodApiModel(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
    }

    public final String getDate() {
        return this.date;
    }

    public final String getWord() {
        return this.word;
    }

    public final String getDateJalali() {
        return this.dateJalali;
    }

    /* JADX INFO: compiled from: WodApiModel.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/models/api/WodApiModel$Companion;", "", "<init>", "()V", "default", "Lfast/dic/dict/models/api/WodApiModel;", "getDefault", "()Lfast/dic/dict/models/api/WodApiModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WodApiModel getDefault() {
            return WodApiModel.f3860default;
        }
    }
}
