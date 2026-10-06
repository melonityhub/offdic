package fast.dic.dict.presentation.wod_history_screen;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;

/* JADX INFO: compiled from: Comparisons.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
public final class WodHistoryViewModel$getYears$$inlined$sortedByDescending$1<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return ComparisonsKt.compareValues(Integer.valueOf(Integer.parseInt((String) t2)), Integer.valueOf(Integer.parseInt((String) t)));
    }
}
