package fast.dic.dict.presentation.pricing_screen;

import fast.dic.dict.utils.StringExtKt;
import java.io.IOException;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;

/* JADX INFO: compiled from: Comparisons.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
public final class PricingFragment$fetchAndShowPricingPlan$lambda$0$1$$inlined$sortedBy$1<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t, T t2) throws IOException {
        String digitsFromString = StringExtKt.getDigitsFromString((String) t);
        Integer numValueOf = digitsFromString != null ? Integer.valueOf(Integer.parseInt(digitsFromString)) : null;
        String digitsFromString2 = StringExtKt.getDigitsFromString((String) t2);
        return ComparisonsKt.compareValues(numValueOf, digitsFromString2 != null ? Integer.valueOf(Integer.parseInt(digitsFromString2)) : null);
    }
}
