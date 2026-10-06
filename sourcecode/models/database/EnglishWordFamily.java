package fast.dic.dict.models.database;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: EnglishSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\b\"\u0004\b\u0010\u0010\nR\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\nR\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\b\"\u0004\b\u0016\u0010\n¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/models/database/EnglishWordFamily;", "", "<init>", "()V", "noun", "", "", "getNoun", "()Ljava/util/List;", "setNoun", "(Ljava/util/List;)V", "adjective", "getAdjective", "setAdjective", "verbTransitive", "getVerbTransitive", "setVerbTransitive", "verbIntransitive", "getVerbIntransitive", "setVerbIntransitive", "adverb", "getAdverb", "setAdverb", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class EnglishWordFamily {
    private List<String> adjective;
    private List<String> adverb;
    private List<String> noun;
    private List<String> verbIntransitive;
    private List<String> verbTransitive;

    public final List<String> getNoun() {
        return this.noun;
    }

    public final void setNoun(List<String> list) {
        this.noun = list;
    }

    public final List<String> getAdjective() {
        return this.adjective;
    }

    public final void setAdjective(List<String> list) {
        this.adjective = list;
    }

    public final List<String> getVerbTransitive() {
        return this.verbTransitive;
    }

    public final void setVerbTransitive(List<String> list) {
        this.verbTransitive = list;
    }

    public final List<String> getVerbIntransitive() {
        return this.verbIntransitive;
    }

    public final void setVerbIntransitive(List<String> list) {
        this.verbIntransitive = list;
    }

    public final List<String> getAdverb() {
        return this.adverb;
    }

    public final void setAdverb(List<String> list) {
        this.adverb = list;
    }
}
