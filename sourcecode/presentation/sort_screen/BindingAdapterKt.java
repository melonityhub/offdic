package fast.dic.dict.presentation.sort_screen;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.R;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.utils.ContextExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BindingAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0016\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\t"}, d2 = {"bindingSelectedCardView", "", "cardView", "Lcom/google/android/material/card/MaterialCardView;", "selected", "", "bindingSelectedTextView", "textView", "Landroid/widget/TextView;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class BindingAdapterKt {
    public static final void bindingSelectedCardView(MaterialCardView cardView, boolean z) {
        Intrinsics.checkNotNullParameter(cardView, "cardView");
        if (z) {
            cardView.setStrokeWidth(5);
            Context context = cardView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            cardView.setStrokeColor(ContextExtKt.getColorFromAttr$default(context, R.attr.tableViewSelectedBackground, null, false, 6, null));
            return;
        }
        cardView.setStrokeWidth(1);
        Context context2 = cardView.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        cardView.setStrokeColor(ContextExtKt.getColorFromAttr$default(context2, R.attr.tableViewBorder, null, false, 6, null));
    }

    public static final void bindingSelectedTextView(TextView textView, boolean z) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        Drawable drawable = ContextCompat.getDrawable(textView.getContext(), R.drawable.selected_icon);
        Context context = textView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        boolean zCurrentLanguageIsPersian = new LocalStorage(context).currentLanguageIsPersian();
        if (!z) {
            textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        } else if (zCurrentLanguageIsPersian) {
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
        }
    }
}
