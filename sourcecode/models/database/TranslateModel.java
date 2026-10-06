package fast.dic.dict.models.database;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TranslateModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005HÆ\u0003J7\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0014\u0010\u001b\u001a\u00020\u00032\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001d\u001a\u00020\u001eHÖ\u0081\u0004J\n\u0010\u001f\u001a\u00020\u0005HÖ\u0081\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000f\"\u0004\b\u0015\u0010\u0011¨\u0006 "}, d2 = {"Lfast/dic/dict/models/database/TranslateModel;", "", "successful", "", "sentence", "", "result", "language", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSuccessful", "()Z", "setSuccessful", "(Z)V", "getSentence", "()Ljava/lang/String;", "setSentence", "(Ljava/lang/String;)V", "getResult", "setResult", "getLanguage", "setLanguage", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class TranslateModel {
    private String language;
    private String result;
    private String sentence;
    private boolean successful;

    public TranslateModel() {
        this(false, null, null, null, 15, null);
    }

    public static /* synthetic */ TranslateModel copy$default(TranslateModel translateModel, boolean z, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = translateModel.successful;
        }
        if ((i & 2) != 0) {
            str = translateModel.sentence;
        }
        if ((i & 4) != 0) {
            str2 = translateModel.result;
        }
        if ((i & 8) != 0) {
            str3 = translateModel.language;
        }
        return translateModel.copy(z, str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSuccessful() {
        return this.successful;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSentence() {
        return this.sentence;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getResult() {
        return this.result;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getLanguage() {
        return this.language;
    }

    public final TranslateModel copy(boolean successful, String sentence, String result, String language) {
        return new TranslateModel(successful, sentence, result, language);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TranslateModel)) {
            return false;
        }
        TranslateModel translateModel = (TranslateModel) other;
        return this.successful == translateModel.successful && Intrinsics.areEqual(this.sentence, translateModel.sentence) && Intrinsics.areEqual(this.result, translateModel.result) && Intrinsics.areEqual(this.language, translateModel.language);
    }

    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.successful) * 31;
        String str = this.sentence;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.result;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.language;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "TranslateModel(successful=" + this.successful + ", sentence=" + this.sentence + ", result=" + this.result + ", language=" + this.language + ")";
    }

    public TranslateModel(boolean z, String str, String str2, String str3) {
        this.successful = z;
        this.sentence = str;
        this.result = str2;
        this.language = str3;
    }

    public /* synthetic */ TranslateModel(boolean z, String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3);
    }

    public final boolean getSuccessful() {
        return this.successful;
    }

    public final void setSuccessful(boolean z) {
        this.successful = z;
    }

    public final String getSentence() {
        return this.sentence;
    }

    public final void setSentence(String str) {
        this.sentence = str;
    }

    public final String getResult() {
        return this.result;
    }

    public final void setResult(String str) {
        this.result = str;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final void setLanguage(String str) {
        this.language = str;
    }
}
