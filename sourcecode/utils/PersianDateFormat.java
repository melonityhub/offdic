package fast.dic.dict.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: PersianDate.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/utils/PersianDateFormat;", "", "pattern", "", "<init>", "(Ljava/lang/String;)V", "format", "persianDate", "Lfast/dic/dict/utils/PersianDate;", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PersianDateFormat {
    private static final String[] MONTH_NAMES = {"فروردین", "اردیبهشت", "خرداد", "تیر", "مرداد", "شهریور", "مهر", "آبان", "آذر", "دی", "بهمن", "اسفند"};
    private final String pattern;

    public PersianDateFormat(String pattern) {
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        this.pattern = pattern;
    }

    public final String format(PersianDate persianDate) {
        char c;
        Intrinsics.checkNotNullParameter(persianDate, "persianDate");
        char[] charArray = StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(this.pattern, "Y", String.valueOf(persianDate.getShYear()), false, 4, (Object) null), "F", MONTH_NAMES[persianDate.getShMonth() - 1], false, 4, (Object) null), "d", StringsKt.padStart(String.valueOf(persianDate.getShDay()), 2, '0'), false, 4, (Object) null), "H", StringsKt.padStart(String.valueOf(persianDate.getHour()), 2, '0'), false, 4, (Object) null).toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "toCharArray(...)");
        StringBuilder sb = new StringBuilder();
        int length = charArray.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char c2 = charArray[i2];
            if (c2 == 'm') {
                if (i > 0 || (i2 > 0 && ((c = charArray[i2 - 1]) == 'H' || c == ':'))) {
                    sb.append(StringsKt.padStart(String.valueOf(persianDate.getMinute()), 2, '0'));
                } else {
                    sb.append(StringsKt.padStart(String.valueOf(persianDate.getShMonth()), 2, '0'));
                }
                Integer.valueOf(i);
                i++;
            } else {
                sb.append(c2);
            }
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return StringsKt.replace$default(string, "s", StringsKt.padStart(String.valueOf(persianDate.getSecond()), 2, '0'), false, 4, (Object) null);
    }
}
