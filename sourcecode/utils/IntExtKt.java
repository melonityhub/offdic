package fast.dic.dict.utils;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import com.yandex.div.core.dagger.Names;
import io.sentry.protocol.SentryStackFrame;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IntExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\f\n\u0002\b\u0002\u001a\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\u0003\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0002¢\u0006\u0002\u0010\u0003\u001a\u001c\u0010\u0005\u001a\u00020\u0002*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u0002\u001a\u0012\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f\u001a\u0019\u0010\r\u001a\u00020\u0001*\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011¨\u0006\u0012"}, d2 = {"getEnglishPos", "", "", "(Ljava/lang/Integer;)Ljava/lang/String;", "getPersianPos", "toDimensionUnit", "", Names.CONTEXT, "Landroid/content/Context;", "unit", "getMonthName", "isPersian", "", "formatNumberWithSeparator", "", SentryStackFrame.JsonKeys.SYMBOL, "", "(Ljava/lang/Double;C)Ljava/lang/String;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class IntExtKt {
    public static final String getEnglishPos(Integer num) {
        if (num == null) {
            return null;
        }
        num.intValue();
        return FDWordPartOfSpeech.INSTANCE.getEnglish(num.intValue());
    }

    public static final String getPersianPos(Integer num) {
        if (num == null) {
            return null;
        }
        num.intValue();
        return FDWordPartOfSpeech.INSTANCE.getPersian(num.intValue());
    }

    public static /* synthetic */ int toDimensionUnit$default(float f, Context context, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 1;
        }
        return toDimensionUnit(f, context, i);
    }

    public static final int toDimensionUnit(float f, Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        Resources resources = context.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "getResources(...)");
        return (int) TypedValue.applyDimension(i, f, resources.getDisplayMetrics());
    }

    public static final String getMonthName(int i, boolean z) {
        List listListOf = CollectionsKt.listOf((Object[]) new String[]{"فروردین", "اردیبهشت", "خرداد", "تیر", "مرداد", "شهریور", "مهر", "آبان", "آذر", "دی", "بهمن", "اسفند"});
        List listListOf2 = CollectionsKt.listOf((Object[]) new String[]{"Farvardin", "Ordibehesht", "Khordad", "Tir", "Mordad", "Shahrivar", "Mehr", "Aban", "Azar", "Dey", "Bahman", "Esfand"});
        if (z) {
            if (1 > i || i >= 13) {
                return "Invalid month number";
            }
            return (String) listListOf.get(i - 1);
        }
        if (1 > i || i >= 13) {
            return "Invalid month number";
        }
        return (String) listListOf2.get(i - 1);
    }

    public static final String formatNumberWithSeparator(Double d, char c) {
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols();
        decimalFormatSymbols.setGroupingSeparator(c);
        String str = new DecimalFormat("#,###", decimalFormatSymbols).format(d);
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }
}
