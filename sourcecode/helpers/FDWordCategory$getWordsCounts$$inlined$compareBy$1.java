package fast.dic.dict.helpers;

import fast.dic.dict.models.WordCategoryModel;
import java.util.Comparator;
import kotlin.Metadata;

/* JADX INFO: compiled from: Comparisons.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
public final class FDWordCategory$getWordsCounts$$inlined$compareBy$1<T> implements Comparator {
    final /* synthetic */ Comparator $comparator;

    public FDWordCategory$getWordsCounts$$inlined$compareBy$1() {
        collator2 = comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        Comparator comparator = collator2;
        String name = ((WordCategoryModel) t).getName();
        if (name == null) {
            name = "";
        }
        String name2 = ((WordCategoryModel) t2).getName();
        return comparator.compare(name, name2 != null ? name2 : "");
    }
}
