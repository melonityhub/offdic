package fast.dic.dict.utils;

import androidx.media3.muxer.WebmConstants;
import com.parse.ParseException;
import io.sentry.metrics.MetricsUnit;
import java.util.Calendar;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PersianDate.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0013\b\u0016\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0002\u0010\u0006B?\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\b\u0012\b\b\u0002\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u0002\u0010\u000eJ\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J \u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\b2\u0006\u0010!\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\bH\u0002J\n\u0010#\u001a\u00020$H\u0096\u0080\u0004R\u001e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u001e\u0010\u0015\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u001e\u0010\u000b\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u001e\u0010\f\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u001e\u0010\r\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0012¨\u0006%"}, d2 = {"Lfast/dic/dict/utils/PersianDate;", "", "<init>", "()V", "date", "Ljava/util/Date;", "(Ljava/util/Date;)V", "year", "", "month", MetricsUnit.Duration.DAY, MetricsUnit.Duration.HOUR, MetricsUnit.Duration.MINUTE, MetricsUnit.Duration.SECOND, "(IIIIII)V", "value", "shYear", "getShYear", "()I", "shMonth", "getShMonth", "shDay", "getShDay", "getHour", "getMinute", "getSecond", "initFromGregorian", "", "calendar", "Ljava/util/Calendar;", "gregorianToJalali", "", "gYear", "gMonth", "gDay", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PersianDate {
    private int hour;
    private int minute;
    private int second;
    private int shDay;
    private int shMonth;
    private int shYear;

    public final int getShYear() {
        return this.shYear;
    }

    public final int getShMonth() {
        return this.shMonth;
    }

    public final int getShDay() {
        return this.shDay;
    }

    public final int getHour() {
        return this.hour;
    }

    public final int getMinute() {
        return this.minute;
    }

    public final int getSecond() {
        return this.second;
    }

    public PersianDate() {
        Calendar calendar = Calendar.getInstance();
        Intrinsics.checkNotNull(calendar);
        initFromGregorian(calendar);
    }

    public PersianDate(Date date) {
        Calendar calendar = Calendar.getInstance();
        if (date != null) {
            calendar.setTime(date);
        }
        Intrinsics.checkNotNull(calendar);
        initFromGregorian(calendar);
    }

    public PersianDate(int i, int i2, int i3, int i4, int i5, int i6) {
        this.shYear = i;
        this.shMonth = i2;
        this.shDay = i3;
        this.hour = i4;
        this.minute = i5;
        this.second = i6;
    }

    public /* synthetic */ PersianDate(int i, int i2, int i3, int i4, int i5, int i6, int i7, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3, (i7 & 8) != 0 ? 0 : i4, (i7 & 16) != 0 ? 0 : i5, (i7 & 32) != 0 ? 0 : i6);
    }

    private final void initFromGregorian(Calendar calendar) {
        int i = calendar.get(1);
        int i2 = calendar.get(2) + 1;
        int i3 = calendar.get(5);
        this.hour = calendar.get(11);
        this.minute = calendar.get(12);
        this.second = calendar.get(13);
        int[] iArrGregorianToJalali = gregorianToJalali(i, i2, i3);
        this.shYear = iArrGregorianToJalali[0];
        this.shMonth = iArrGregorianToJalali[1];
        this.shDay = iArrGregorianToJalali[2];
    }

    private final int[] gregorianToJalali(int gYear, int gMonth, int gDay) {
        int i;
        int i2;
        int i3 = ((((gYear * 365) + 355666) + ((gYear + 3) / 4)) - ((gYear + 99) / 100)) + ((gYear + 399) / 400) + gDay + new int[]{0, 31, 59, 90, ParseException.CACHE_MISS, 151, WebmConstants.MkvEbmlElement.SAMPLING_FREQUENCY, 212, 243, 273, 304, 334}[gMonth - 1];
        int i4 = ((i3 / 12053) * 33) - 1595;
        int i5 = i3 % 12053;
        int i6 = i4 + ((i5 / 1461) * 4);
        int i7 = i5 % 1461;
        if (i7 > 365) {
            int i8 = i7 - 1;
            i6 += i8 / 365;
            i7 = i8 % 365;
        }
        if (i7 < 186) {
            i = (i7 / 31) + 1;
            i2 = i7 % 31;
        } else {
            int i9 = i7 - WebmConstants.MkvEbmlElement.PIXEL_HEIGHT;
            i = (i9 / 30) + 7;
            i2 = i9 % 30;
        }
        return new int[]{i6, i, i2 + 1};
    }

    public String toString() {
        return this.shYear + "/" + this.shMonth + "/" + this.shDay;
    }
}
