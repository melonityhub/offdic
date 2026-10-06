package fast.dic.dict.models.database;

import kotlin.Metadata;

/* JADX INFO: compiled from: EnglishSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\tR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0011\"\u0004\b\u0019\u0010\u0013R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013¨\u0006\u001d"}, d2 = {"Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;", "", "<init>", "()V", "englishSynonymsAntonymsId", "", "getEnglishSynonymsAntonymsId", "()Ljava/lang/Integer;", "setEnglishSynonymsAntonymsId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "wordId", "getWordId", "setWordId", "definitions", "", "getDefinitions", "()Ljava/lang/String;", "setDefinitions", "(Ljava/lang/String;)V", "synonyms", "getSynonyms", "setSynonyms", "antonyms", "getAntonyms", "setAntonyms", "pos", "getPos", "setPos", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class EnglishSynonymsAntonymModel {
    private String antonyms;
    private String definitions;
    private Integer englishSynonymsAntonymsId;
    private String pos;
    private String synonyms;
    private Integer wordId;

    public final Integer getEnglishSynonymsAntonymsId() {
        return this.englishSynonymsAntonymsId;
    }

    public final void setEnglishSynonymsAntonymsId(Integer num) {
        this.englishSynonymsAntonymsId = num;
    }

    public final Integer getWordId() {
        return this.wordId;
    }

    public final void setWordId(Integer num) {
        this.wordId = num;
    }

    public final String getDefinitions() {
        return this.definitions;
    }

    public final void setDefinitions(String str) {
        this.definitions = str;
    }

    public final String getSynonyms() {
        return this.synonyms;
    }

    public final void setSynonyms(String str) {
        this.synonyms = str;
    }

    public final String getAntonyms() {
        return this.antonyms;
    }

    public final void setAntonyms(String str) {
        this.antonyms = str;
    }

    public final String getPos() {
        return this.pos;
    }

    public final void setPos(String str) {
        this.pos = str;
    }
}
