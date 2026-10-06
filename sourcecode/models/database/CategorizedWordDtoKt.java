package fast.dic.dict.models.database;

import fast.dic.dict.utils.FDCategory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: CategorizedWordDto.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toListModel", "Lfast/dic/dict/models/database/ListModel;", "Lfast/dic/dict/models/database/CategorizedWordDto;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class CategorizedWordDtoKt {
    public static final ListModel toListModel(CategorizedWordDto categorizedWordDto) {
        ArrayList arrayList;
        List listSplit$default;
        Intrinsics.checkNotNullParameter(categorizedWordDto, "<this>");
        int wordId = (int) categorizedWordDto.getWordId();
        String word = categorizedWordDto.getWord();
        String meaning = categorizedWordDto.getMeaning();
        String meaning2 = categorizedWordDto.getMeaning();
        if (meaning2 == null || (listSplit$default = StringsKt.split$default((CharSequence) meaning2, new String[]{"||"}, false, 0, 6, (Object) null)) == null) {
            arrayList = null;
        } else {
            List list = listSplit$default;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList2.add(StringsKt.trim((CharSequence) it.next()).toString());
            }
            arrayList = arrayList2;
        }
        return new ListModel(false, false, Integer.valueOf(wordId), 0, null, arrayList, null, null, null, null, false, null, null, false, meaning, null, new FDCategory().findLanguage(categorizedWordDto.getWord()), null, word, null, 0, 1753051, null);
    }
}
