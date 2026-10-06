package fast.dic.dict.utils;

import android.text.format.DateUtils;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DateExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u001a\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0002\u001a\n\u0010\b\u001a\u00020\u0007*\u00020\t\u001a\n\u0010\n\u001a\u00020\u0002*\u00020\u0002\u001a\n\u0010\u000b\u001a\u00020\u0002*\u00020\u0002¨\u0006\f"}, d2 = {"toString", "", "Ljava/util/Date;", "format", "locale", "Ljava/util/Locale;", "isToday", "", "isTomorrowOrLater", "", "nextDayAtMidnight", "yesterday", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class DateExtKt {
    public static /* synthetic */ String toString$default(Date date, String str, Locale locale, int i, Object obj) {
        if ((i & 2) != 0) {
            locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        }
        return toString(date, str, locale);
    }

    public static final String toString(Date date, String format, Locale locale) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String str = new SimpleDateFormat(format, locale).format(date);
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public static final boolean isToday(Date date) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        return DateUtils.isToday(date.getTime());
    }

    public static final boolean isTomorrowOrLater(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j);
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        return calendar2.after(calendar);
    }

    public static final Date nextDayAtMidnight(Date date) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(6, 1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Date time = calendar.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
        return time;
    }

    public static final Date yesterday(Date date) {
        Intrinsics.checkNotNullParameter(date, "<this>");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(6, -1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Date time = calendar.getTime();
        Intrinsics.checkNotNullExpressionValue(time, "getTime(...)");
        return time;
    }
}
