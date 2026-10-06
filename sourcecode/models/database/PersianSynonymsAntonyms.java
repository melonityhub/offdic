package fast.dic.dict.models.database;

import kotlin.Metadata;

/* JADX INFO: compiled from: PersianSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/models/database/PersianSynonymsAntonyms;", "", "<init>", "()V", "persianSynonymsAntonymsId", "", "getPersianSynonymsAntonymsId", "()Ljava/lang/Integer;", "setPersianSynonymsAntonymsId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "wordId", "getWordId", "setWordId", "synonymAntonym", "", "getSynonymAntonym", "()Ljava/lang/String;", "setSynonymAntonym", "(Ljava/lang/String;)V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PersianSynonymsAntonyms {
    private Integer persianSynonymsAntonymsId;
    private String synonymAntonym;
    private Integer wordId;

    public final Integer getPersianSynonymsAntonymsId() {
        return this.persianSynonymsAntonymsId;
    }

    public final void setPersianSynonymsAntonymsId(Integer num) {
        this.persianSynonymsAntonymsId = num;
    }

    public final Integer getWordId() {
        return this.wordId;
    }

    public final void setWordId(Integer num) {
        this.wordId = num;
    }

    public final String getSynonymAntonym() {
        return this.synonymAntonym;
    }

    public final void setSynonymAntonym(String str) {
        this.synonymAntonym = str;
    }
}
