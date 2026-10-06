package fast.dic.dict.models.database;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: EnglishSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/models/database/EnglishIdiomGroupModel;", "", "<init>", "()V", "englishIdiomId", "", "getEnglishIdiomId", "()Ljava/lang/Integer;", "setEnglishIdiomId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "englishWord", "", "getEnglishWord", "()Ljava/lang/String;", "setEnglishWord", "(Ljava/lang/String;)V", "persianMeanings", "", "getPersianMeanings", "()Ljava/util/List;", "setPersianMeanings", "(Ljava/util/List;)V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class EnglishIdiomGroupModel {
    private Integer englishIdiomId;
    private String englishWord;
    private List<String> persianMeanings;

    public final Integer getEnglishIdiomId() {
        return this.englishIdiomId;
    }

    public final void setEnglishIdiomId(Integer num) {
        this.englishIdiomId = num;
    }

    public final String getEnglishWord() {
        return this.englishWord;
    }

    public final void setEnglishWord(String str) {
        this.englishWord = str;
    }

    public final List<String> getPersianMeanings() {
        return this.persianMeanings;
    }

    public final void setPersianMeanings(List<String> list) {
        this.persianMeanings = list;
    }
}
