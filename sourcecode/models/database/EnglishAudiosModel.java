package fast.dic.dict.models.database;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EnglishSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0012\b\u0002\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\u0012\b\u0002\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0003J\u0013\u0010\u000f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0003J1\u0010\u0010\u001a\u00020\u00002\u0012\b\u0002\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\u0012\b\u0002\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0017HÖ\u0081\u0004R$\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000b¨\u0006\u0018"}, d2 = {"Lfast/dic/dict/models/database/EnglishAudiosModel;", "", "american", "", "Lfast/dic/dict/models/database/EnglishAudioModel;", "british", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getAmerican", "()Ljava/util/List;", "setAmerican", "(Ljava/util/List;)V", "getBritish", "setBritish", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class EnglishAudiosModel {
    private List<EnglishAudioModel> american;
    private List<EnglishAudioModel> british;

    public EnglishAudiosModel() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EnglishAudiosModel copy$default(EnglishAudiosModel englishAudiosModel, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = englishAudiosModel.american;
        }
        if ((i & 2) != 0) {
            list2 = englishAudiosModel.british;
        }
        return englishAudiosModel.copy(list, list2);
    }

    public final List<EnglishAudioModel> component1() {
        return this.american;
    }

    public final List<EnglishAudioModel> component2() {
        return this.british;
    }

    public final EnglishAudiosModel copy(List<EnglishAudioModel> american, List<EnglishAudioModel> british) {
        return new EnglishAudiosModel(american, british);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EnglishAudiosModel)) {
            return false;
        }
        EnglishAudiosModel englishAudiosModel = (EnglishAudiosModel) other;
        return Intrinsics.areEqual(this.american, englishAudiosModel.american) && Intrinsics.areEqual(this.british, englishAudiosModel.british);
    }

    public int hashCode() {
        List<EnglishAudioModel> list = this.american;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<EnglishAudioModel> list2 = this.british;
        return iHashCode + (list2 != null ? list2.hashCode() : 0);
    }

    public String toString() {
        return "EnglishAudiosModel(american=" + this.american + ", british=" + this.british + ")";
    }

    public EnglishAudiosModel(List<EnglishAudioModel> list, List<EnglishAudioModel> list2) {
        this.american = list;
        this.british = list2;
    }

    public /* synthetic */ EnglishAudiosModel(List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : list2);
    }

    public final List<EnglishAudioModel> getAmerican() {
        return this.american;
    }

    public final void setAmerican(List<EnglishAudioModel> list) {
        this.american = list;
    }

    public final List<EnglishAudioModel> getBritish() {
        return this.british;
    }

    public final void setBritish(List<EnglishAudioModel> list) {
        this.british = list;
    }
}
