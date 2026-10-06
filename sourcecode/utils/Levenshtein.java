package fast.dic.dict.utils;

import com.amazon.aps.shared.metrics.model.ApsMetricsDataMap;
import kotlin.Metadata;

/* JADX INFO: compiled from: Levenshtein.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0007¨\u0006\t"}, d2 = {"Lfast/dic/dict/utils/Levenshtein;", "", "<init>", "()V", "getLevenshteinDistance", "", "s", "", ApsMetricsDataMap.APSMETRICS_FIELD_TIMESTAMP, "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class Levenshtein {
    public static final Levenshtein INSTANCE = new Levenshtein();

    private Levenshtein() {
    }

    public final int getLevenshteinDistance(String s, String t) {
        if (s == null || t == null) {
            throw new IllegalArgumentException("Strings must not be null".toString());
        }
        int length = s.length();
        int length2 = t.length();
        if (length == 0) {
            return length2;
        }
        if (length2 == 0) {
            return length;
        }
        if (length > length2) {
            length2 = s.length();
            length = length2;
        } else {
            t = s;
            s = t;
        }
        int i = length + 1;
        int[] iArr = new int[i];
        int[] iArr2 = new int[i];
        for (int i2 = 0; i2 <= length; i2++) {
            iArr[i2] = i2;
        }
        int i3 = 1;
        while (i3 <= length2) {
            char cCharAt = s.charAt(i3 - 1);
            iArr2[0] = i3;
            for (int i4 = 1; i4 <= length; i4++) {
                int i5 = i4 - 1;
                iArr2[i4] = Math.min(Math.min(iArr2[i5] + 1, iArr[i4] + 1), iArr[i5] + (t.charAt(i5) == cCharAt ? 0 : 1));
            }
            i3++;
            int[] iArr3 = iArr;
            iArr = iArr2;
            iArr2 = iArr3;
        }
        return iArr[length];
    }
}
