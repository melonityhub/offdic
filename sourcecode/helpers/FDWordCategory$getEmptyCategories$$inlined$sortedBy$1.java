package fast.dic.dict.helpers;

import fast.dic.dict.models.WordCategoryModel;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;

/* JADX INFO: compiled from: Comparisons.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
public final class FDWordCategory$getEmptyCategories$$inlined$sortedBy$1<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        String name = ((WordCategoryModel) t).getName();
        if (name == null) {
            name = "";
        }
        String str = name;
        String name2 = ((WordCategoryModel) t2).getName();
        return ComparisonsKt.compareValues(str, name2 != null ? name2 : "");
    }
}
