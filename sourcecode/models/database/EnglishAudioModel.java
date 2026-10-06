package fast.dic.dict.models.database;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EnglishSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0003HÖ\u0081\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/models/database/EnglishAudioModel;", "", "filename", "", "phonetic", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getFilename", "()Ljava/lang/String;", "setFilename", "(Ljava/lang/String;)V", "getPhonetic", "setPhonetic", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class EnglishAudioModel {
    private String filename;
    private String phonetic;

    public EnglishAudioModel() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ EnglishAudioModel copy$default(EnglishAudioModel englishAudioModel, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = englishAudioModel.filename;
        }
        if ((i & 2) != 0) {
            str2 = englishAudioModel.phonetic;
        }
        return englishAudioModel.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFilename() {
        return this.filename;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPhonetic() {
        return this.phonetic;
    }

    public final EnglishAudioModel copy(String filename, String phonetic) {
        return new EnglishAudioModel(filename, phonetic);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EnglishAudioModel)) {
            return false;
        }
        EnglishAudioModel englishAudioModel = (EnglishAudioModel) other;
        return Intrinsics.areEqual(this.filename, englishAudioModel.filename) && Intrinsics.areEqual(this.phonetic, englishAudioModel.phonetic);
    }

    public int hashCode() {
        String str = this.filename;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.phonetic;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "EnglishAudioModel(filename=" + this.filename + ", phonetic=" + this.phonetic + ")";
    }

    public EnglishAudioModel(String str, String str2) {
        this.filename = str;
        this.phonetic = str2;
    }

    public /* synthetic */ EnglishAudioModel(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }

    public final String getFilename() {
        return this.filename;
    }

    public final String getPhonetic() {
        return this.phonetic;
    }

    public final void setFilename(String str) {
        this.filename = str;
    }

    public final void setPhonetic(String str) {
        this.phonetic = str;
    }
}
