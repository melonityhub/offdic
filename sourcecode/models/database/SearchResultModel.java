package fast.dic.dict.models.database;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u001c\b\u0002\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001d\u0010\u001f\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u000bHÆ\u0003JK\u0010\"\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u001c\b\u0002\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0014\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010&\u001a\u00020'HÖ\u0081\u0004J\n\u0010(\u001a\u00020\u0003HÖ\u0081\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R.\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006)"}, d2 = {"Lfast/dic/dict/models/database/SearchResultModel;", "", "originalWord", "", "suggestions", "Ljava/util/ArrayList;", "Lfast/dic/dict/models/database/ListModel;", "Lkotlin/collections/ArrayList;", "englishSearchResultModel", "Lfast/dic/dict/models/database/EnglishSearchResultModel;", "persianSearchResultModel", "Lfast/dic/dict/models/database/PersianSearchResultModel;", "<init>", "(Ljava/lang/String;Ljava/util/ArrayList;Lfast/dic/dict/models/database/EnglishSearchResultModel;Lfast/dic/dict/models/database/PersianSearchResultModel;)V", "getOriginalWord", "()Ljava/lang/String;", "setOriginalWord", "(Ljava/lang/String;)V", "getSuggestions", "()Ljava/util/ArrayList;", "setSuggestions", "(Ljava/util/ArrayList;)V", "getEnglishSearchResultModel", "()Lfast/dic/dict/models/database/EnglishSearchResultModel;", "setEnglishSearchResultModel", "(Lfast/dic/dict/models/database/EnglishSearchResultModel;)V", "getPersianSearchResultModel", "()Lfast/dic/dict/models/database/PersianSearchResultModel;", "setPersianSearchResultModel", "(Lfast/dic/dict/models/database/PersianSearchResultModel;)V", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class SearchResultModel {
    private EnglishSearchResultModel englishSearchResultModel;
    private String originalWord;
    private PersianSearchResultModel persianSearchResultModel;
    private ArrayList<ListModel> suggestions;

    public SearchResultModel() {
        this(null, null, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchResultModel copy$default(SearchResultModel searchResultModel, String str, ArrayList arrayList, EnglishSearchResultModel englishSearchResultModel, PersianSearchResultModel persianSearchResultModel, int i, Object obj) {
        if ((i & 1) != 0) {
            str = searchResultModel.originalWord;
        }
        if ((i & 2) != 0) {
            arrayList = searchResultModel.suggestions;
        }
        if ((i & 4) != 0) {
            englishSearchResultModel = searchResultModel.englishSearchResultModel;
        }
        if ((i & 8) != 0) {
            persianSearchResultModel = searchResultModel.persianSearchResultModel;
        }
        return searchResultModel.copy(str, arrayList, englishSearchResultModel, persianSearchResultModel);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOriginalWord() {
        return this.originalWord;
    }

    public final ArrayList<ListModel> component2() {
        return this.suggestions;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final EnglishSearchResultModel getEnglishSearchResultModel() {
        return this.englishSearchResultModel;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final PersianSearchResultModel getPersianSearchResultModel() {
        return this.persianSearchResultModel;
    }

    public final SearchResultModel copy(String originalWord, ArrayList<ListModel> suggestions, EnglishSearchResultModel englishSearchResultModel, PersianSearchResultModel persianSearchResultModel) {
        return new SearchResultModel(originalWord, suggestions, englishSearchResultModel, persianSearchResultModel);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchResultModel)) {
            return false;
        }
        SearchResultModel searchResultModel = (SearchResultModel) other;
        return Intrinsics.areEqual(this.originalWord, searchResultModel.originalWord) && Intrinsics.areEqual(this.suggestions, searchResultModel.suggestions) && Intrinsics.areEqual(this.englishSearchResultModel, searchResultModel.englishSearchResultModel) && Intrinsics.areEqual(this.persianSearchResultModel, searchResultModel.persianSearchResultModel);
    }

    public int hashCode() {
        String str = this.originalWord;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        ArrayList<ListModel> arrayList = this.suggestions;
        int iHashCode2 = (iHashCode + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        EnglishSearchResultModel englishSearchResultModel = this.englishSearchResultModel;
        int iHashCode3 = (iHashCode2 + (englishSearchResultModel == null ? 0 : englishSearchResultModel.hashCode())) * 31;
        PersianSearchResultModel persianSearchResultModel = this.persianSearchResultModel;
        return iHashCode3 + (persianSearchResultModel != null ? persianSearchResultModel.hashCode() : 0);
    }

    public String toString() {
        return "SearchResultModel(originalWord=" + this.originalWord + ", suggestions=" + this.suggestions + ", englishSearchResultModel=" + this.englishSearchResultModel + ", persianSearchResultModel=" + this.persianSearchResultModel + ")";
    }

    public SearchResultModel(String str, ArrayList<ListModel> arrayList, EnglishSearchResultModel englishSearchResultModel, PersianSearchResultModel persianSearchResultModel) {
        this.originalWord = str;
        this.suggestions = arrayList;
        this.englishSearchResultModel = englishSearchResultModel;
        this.persianSearchResultModel = persianSearchResultModel;
    }

    public /* synthetic */ SearchResultModel(String str, ArrayList arrayList, EnglishSearchResultModel englishSearchResultModel, PersianSearchResultModel persianSearchResultModel, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : arrayList, (i & 4) != 0 ? null : englishSearchResultModel, (i & 8) != 0 ? null : persianSearchResultModel);
    }

    public final String getOriginalWord() {
        return this.originalWord;
    }

    public final void setOriginalWord(String str) {
        this.originalWord = str;
    }

    public final ArrayList<ListModel> getSuggestions() {
        return this.suggestions;
    }

    public final void setSuggestions(ArrayList<ListModel> arrayList) {
        this.suggestions = arrayList;
    }

    public final EnglishSearchResultModel getEnglishSearchResultModel() {
        return this.englishSearchResultModel;
    }

    public final void setEnglishSearchResultModel(EnglishSearchResultModel englishSearchResultModel) {
        this.englishSearchResultModel = englishSearchResultModel;
    }

    public final PersianSearchResultModel getPersianSearchResultModel() {
        return this.persianSearchResultModel;
    }

    public final void setPersianSearchResultModel(PersianSearchResultModel persianSearchResultModel) {
        this.persianSearchResultModel = persianSearchResultModel;
    }
}
