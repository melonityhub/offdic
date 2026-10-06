package fast.dic.dict.models.database;

import kotlin.Metadata;

/* JADX INFO: compiled from: EnglishSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0007\"\u0004\b\u0016\u0010\t¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/models/database/EnglishIdiomModel;", "", "<init>", "()V", "englishWord", "", "getEnglishWord", "()Ljava/lang/String;", "setEnglishWord", "(Ljava/lang/String;)V", "englishDetailId", "", "getEnglishDetailId", "()Ljava/lang/Integer;", "setEnglishDetailId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "englishIdiomId", "getEnglishIdiomId", "setEnglishIdiomId", "persianMeaning", "getPersianMeaning", "setPersianMeaning", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class EnglishIdiomModel {
    private Integer englishDetailId;
    private Integer englishIdiomId;
    private String englishWord;
    private String persianMeaning;

    public final String getEnglishWord() {
        return this.englishWord;
    }

    public final void setEnglishWord(String str) {
        this.englishWord = str;
    }

    public final Integer getEnglishDetailId() {
        return this.englishDetailId;
    }

    public final void setEnglishDetailId(Integer num) {
        this.englishDetailId = num;
    }

    public final Integer getEnglishIdiomId() {
        return this.englishIdiomId;
    }

    public final void setEnglishIdiomId(Integer num) {
        this.englishIdiomId = num;
    }

    public final String getPersianMeaning() {
        return this.persianMeaning;
    }

    public final void setPersianMeaning(String str) {
        this.persianMeaning = str;
    }
}
