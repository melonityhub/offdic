package fast.dic.dict.models.database;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: EnglishSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\b\"\u0004\b\u0010\u0010\n¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/models/database/EnglishIdiomsModel;", "", "<init>", "()V", "idioms", "", "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;", "getIdioms", "()Ljava/util/List;", "setIdioms", "(Ljava/util/List;)V", "collocations", "getCollocations", "setCollocations", "phrasalVerbs", "getPhrasalVerbs", "setPhrasalVerbs", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class EnglishIdiomsModel {
    private List<EnglishIdiomGroupModel> collocations;
    private List<EnglishIdiomGroupModel> idioms;
    private List<EnglishIdiomGroupModel> phrasalVerbs;

    public final List<EnglishIdiomGroupModel> getIdioms() {
        return this.idioms;
    }

    public final void setIdioms(List<EnglishIdiomGroupModel> list) {
        this.idioms = list;
    }

    public final List<EnglishIdiomGroupModel> getCollocations() {
        return this.collocations;
    }

    public final void setCollocations(List<EnglishIdiomGroupModel> list) {
        this.collocations = list;
    }

    public final List<EnglishIdiomGroupModel> getPhrasalVerbs() {
        return this.phrasalVerbs;
    }

    public final void setPhrasalVerbs(List<EnglishIdiomGroupModel> list) {
        this.phrasalVerbs = list;
    }
}
