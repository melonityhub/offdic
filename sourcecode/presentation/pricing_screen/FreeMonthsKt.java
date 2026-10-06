package fast.dic.dict.presentation.pricing_screen;

import com.fastdic.android.modules.fdnumberstowords.utils.FDStringExtKt;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: FreeMonths.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u001a)\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\b\u001a\u0015\u0010\t\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0002\u0010\n\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"PRICE_TIER_TOLERANCE", "", "calculateFreeMonths", "", "firstMonthPrice", "", "packagePrice", "months", "(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;", "toPriceDigits", "(Ljava/lang/String;)Ljava/lang/Double;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class FreeMonthsKt {
    private static final double PRICE_TIER_TOLERANCE = 0.2d;

    public static final Integer calculateFreeMonths(String str, String str2, int i) throws IOException {
        Double priceDigits = toPriceDigits(str);
        if (priceDigits != null) {
            double dDoubleValue = priceDigits.doubleValue();
            Double priceDigits2 = toPriceDigits(str2);
            if (priceDigits2 != null) {
                double dDoubleValue2 = priceDigits2.doubleValue();
                if (dDoubleValue > 0.0d && dDoubleValue2 > 0.0d) {
                    Integer numValueOf = Integer.valueOf((int) Math.floor((((double) i) - (dDoubleValue2 / dDoubleValue)) + PRICE_TIER_TOLERANCE));
                    int iIntValue = numValueOf.intValue();
                    if (1 <= iIntValue && iIntValue < i) {
                        return numValueOf;
                    }
                }
            }
        }
        return null;
    }

    private static final Double toPriceDigits(String str) throws IOException {
        String englishNumber = FDStringExtKt.toEnglishNumber(str);
        if (englishNumber == null) {
            return null;
        }
        String str2 = englishNumber;
        StringBuilder sb = new StringBuilder();
        int length = str2.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str2.charAt(i);
            if (Character.isDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        String string = sb.toString();
        if (string != null) {
            return StringsKt.toDoubleOrNull(string);
        }
        return null;
    }
}
