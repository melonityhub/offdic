package fast.dic.dict.presentation.pricing_screen.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.fastdic.android.modules.fdnumberstowords.utils.FDStringExtKt;
import com.fastdic.android.modules.fdnumberstowords.utils.ParsedAmount;
import com.google.android.material.tabs.TabLayout;
import com.mbridge.msdk.MBridgeConstans;
import fast.dic.dict.R;
import fast.dic.dict.presentation.pricing_screen.FreeMonthsKt;
import fast.dic.dict.utils.IntExtKt;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: BindingAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u001a*\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u001a\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0014\u0010\f\u001a\u00020\u0007*\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011\u001a\u001c\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\b\u0001\u0010\u0013\u001a\u00020\u0005:\u0002\b\u0014\u001a\u001c\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00172\f\b\u0001\u0010\u0018\u001a\u00020\u0005:\u0002\b\u0019\u001a\u0016\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0007\u001a\u0016\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0007\u001a\u0016\u0010\u001f\u001a\u00020\u00012\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0005¨\u0006#"}, d2 = {"bindingStrikeThrough", "", "textView", "Landroid/widget/TextView;", "months", "", "firstMonthPrice", "", "packagePrice", "bindingFreeMonthsBadge", "calculatePerMonthPrice", "price", "formatToCurrency", "", "locale", "Ljava/util/Locale;", "strikeThrough", "", "changeTextColor", "colorId", "Landroidx/annotation/ColorRes;", "changeImage", "imageView", "Landroid/widget/ImageView;", "image", "Landroidx/annotation/DrawableRes;", "updateFirstTabText", "tabLayout", "Lcom/google/android/material/tabs/TabLayout;", "text", "updateSecondTabText", "bindingForceDirection", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/View;", "layoutDirection", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class BindingAdapterKt {
    public static final void bindingStrikeThrough(TextView textView, int i, String str, String str2) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        textView.setText(calculatePerMonthPrice(str == null ? "" : str, i));
        textView.setVisibility(FreeMonthsKt.calculateFreeMonths(str, str2, i) == null ? 0 : 8);
    }

    public static final void bindingFreeMonthsBadge(TextView textView, int i, String str, String str2) throws IOException {
        String string;
        Intrinsics.checkNotNullParameter(textView, "textView");
        Integer numCalculateFreeMonths = FreeMonthsKt.calculateFreeMonths(str, str2, i);
        if (numCalculateFreeMonths == null) {
            textView.setVisibility(8);
            return;
        }
        String persianNumber = FDStringExtKt.isPersianNumber(str) ? FDStringExtKt.toPersianNumber(String.valueOf(numCalculateFreeMonths.intValue())) : String.valueOf(numCalculateFreeMonths.intValue());
        if (numCalculateFreeMonths.intValue() == 1) {
            string = textView.getContext().getString(R.string.free_month_badge);
        } else {
            string = textView.getContext().getString(R.string.free_months_badge, persianNumber);
        }
        textView.setText(string);
        textView.setVisibility(0);
    }

    private static final String calculatePerMonthPrice(String str, int i) {
        ParsedAmount amount;
        boolean zIsPersianNumber = FDStringExtKt.isPersianNumber(str);
        String englishNumber = FDStringExtKt.toEnglishNumber(str);
        if (englishNumber == null || (amount = FDStringExtKt.parseAmount(englishNumber)) == null) {
            return str;
        }
        double d = Double.parseDouble(amount.getNumber()) * ((double) i);
        String formattedNumber = amount.getFormattedNumber();
        if (zIsPersianNumber) {
            return FDStringExtKt.toPersianNumber(IntExtKt.formatNumberWithSeparator(Double.valueOf(d), StringsKt.first(formattedNumber))) + " " + amount.getWord();
        }
        return IntExtKt.formatNumberWithSeparator(Double.valueOf(d), StringsKt.first(formattedNumber)) + " " + amount.getWord();
    }

    public static /* synthetic */ String formatToCurrency$default(double d, Locale locale, int i, Object obj) {
        if ((i & 1) != 0) {
            locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        }
        return formatToCurrency(d, locale);
    }

    public static final String formatToCurrency(double d, Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String str = NumberFormat.getCurrencyInstance(locale).format(d);
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public static final void bindingStrikeThrough(TextView textView, boolean z) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        if (z) {
            textView.setPaintFlags(textView.getPaintFlags() | 16);
        } else {
            textView.setPaintFlags(textView.getPaintFlags() & (-17));
        }
    }

    public static final void changeTextColor(TextView textView, int i) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        textView.setTextColor(textView.getContext().getResources().getColor(i, textView.getContext().getTheme()));
    }

    public static final void changeImage(ImageView imageView, int i) {
        Intrinsics.checkNotNullParameter(imageView, "imageView");
        imageView.setImageResource(i);
    }

    public static final void updateFirstTabText(TabLayout tabLayout, String text) {
        Intrinsics.checkNotNullParameter(tabLayout, "tabLayout");
        Intrinsics.checkNotNullParameter(text, "text");
        TabLayout.Tab tabAt = tabLayout.getTabAt(0);
        if (tabAt != null) {
            tabAt.setText(text);
        }
    }

    public static final void updateSecondTabText(TabLayout tabLayout, String text) {
        Intrinsics.checkNotNullParameter(tabLayout, "tabLayout");
        Intrinsics.checkNotNullParameter(text, "text");
        TabLayout.Tab tabAt = tabLayout.getTabAt(1);
        if (tabAt != null) {
            tabAt.setText(text);
        }
    }

    public static final void bindingForceDirection(View view, int i) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setScaleX(i == 0 ? -1.0f : 0.0f);
        view.setScaleY(i == 0 ? 1.0f : 0.0f);
    }
}
