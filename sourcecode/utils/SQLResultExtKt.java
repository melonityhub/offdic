package fast.dic.dict.utils;

import com.couchbase.lite.Result;
import fast.dic.dict.models.database.ListModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SQLResultExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a*\u0010\u0005\u001a\u00020\u0002*\u00020\u00062\u001e\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00030\u0001j\u0002`\b*2\u0010\u0000\"\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00030\u00012\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00030\u0001¨\u0006\t"}, d2 = {"convertResultToListModelClosure", "Lkotlin/Function1;", "Lfast/dic/dict/models/database/ListModel;", "", "", "toListModel", "Lcom/couchbase/lite/Result;", "closure", "Lfast/dic/dict/utils/convertResultToListModelClosure;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class SQLResultExtKt {
    /* JADX WARN: Code duplicated, block: B:9:0x0087  */
    public static final ListModel toListModel(Result result, Function1<? super ListModel, ? extends List<String>> closure) {
        Intrinsics.checkNotNullParameter(result, "<this>");
        Intrinsics.checkNotNullParameter(closure, "closure");
        ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
        listModel.setHistory(true);
        listModel.setWord(result.getString("word"));
        listModel.setWordId(Integer.valueOf(result.getInt("wordId")));
        listModel.setDocumentId(result.getString("id"));
        listModel.setCategory(Integer.valueOf(result.getInt("category")));
        int i = result.getInt("word_id");
        if (listModel.getWordId() == null) {
            listModel.setWordId(Integer.valueOf(i));
        } else {
            Integer wordId = listModel.getWordId();
            if (i > (wordId != null ? wordId.intValue() : 0)) {
                listModel.setWordId(Integer.valueOf(i));
            }
        }
        List<String> meanings = listModel.getMeanings();
        if (meanings == null || meanings.isEmpty()) {
            listModel.setMeanings(closure.invoke(listModel));
        }
        listModel.setMeaning(result.getString("meaning"));
        String meaning = listModel.getMeaning();
        if (meaning != null && meaning.length() != 0) {
            return listModel;
        }
        if (FDLanguageWord.INSTANCE.isEnglish(listModel.getWord())) {
            List<String> meanings2 = listModel.getMeanings();
            listModel.setMeaning(meanings2 != null ? CollectionsKt.joinToString$default(meanings2, "، ", null, null, 0, null, null, 62, null) : null);
            return listModel;
        }
        if (FDLanguageWord.INSTANCE.isPersian(listModel.getWord())) {
            List<String> meanings3 = listModel.getMeanings();
            listModel.setMeaning(meanings3 != null ? CollectionsKt.joinToString$default(meanings3, ", ", null, null, 0, null, null, 62, null) : null);
        }
        return listModel;
    }
}
