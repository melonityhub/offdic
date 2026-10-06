package fast.dic.dict;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.ironsource.L6;
import com.mbridge.msdk.MBridgeConstans;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.IntExtKt;
import fast.dic.dict.utils.StringExtKt;
import fast.dic.dict.utils.TypefaceExtKt;
import im.delight.android.webview.AdvancedWebView;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BindingAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\b\n\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u001d\u0010\b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\f\u001a\u0016\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u0007\u001a#\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\t2\u000e\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000b:\u0002\b\u0011¢\u0006\u0002\u0010\f\u001a\u001c\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00132\f\b\u0001\u0010\n\u001a\u00020\u000b:\u0002\b\u0014\u001a\u0018\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005\u001a\u0016\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0007\u001a\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002\u001a\u001d\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\f\u001a*\u0010 \u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u000bH\u0007b\u0010\b\"\u0012\f\b#\u0012\b\b\fJ\u0004\b\b($\u001a*\u0010 \u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u000bH\u0007b\u0010\b\"\u0012\f\b#\u0012\b\b\fJ\u0004\b\b($\u001a\u001c\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020'2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020*0)\u001a\u0016\u0010+\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0007\u001a\u0016\u0010.\u001a\u00020\u00012\u0006\u0010&\u001a\u00020'2\u0006\u0010/\u001a\u00020\u0007\u001a\u0016\u00100\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u000b\u001a7\u00101\u001a\u0002022*\u00103\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u000b0504\"\u000e\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020\u000b05¢\u0006\u0002\u00107\u001a\u0016\u00108\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\t2\u0006\u00109\u001a\u00020\u0007\u001a\u0016\u0010:\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\t2\u0006\u00109\u001a\u00020\u0007\u001a\u001d\u0010;\u001a\u00020\u00012\u0006\u0010<\u001a\u00020\t2\b\u0010=\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\f\u001a\u0016\u0010>\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020,2\u0006\u0010?\u001a\u00020\u0007¨\u0006@"}, d2 = {"setHtml", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lim/delight/android/webview/AdvancedWebView;", "html", "", "isDark", "", "setRightIcon", "Landroid/widget/TextView;", "drawableId", "", "(Landroid/widget/TextView;Ljava/lang/Integer;)V", "setPersianAlignment", "isPersianLanguage", "setStringResource", "resId", "Landroidx/annotation/StringRes;", "setImageSrcId", "Landroid/widget/ImageView;", "Landroidx/annotation/DrawableRes;", "setImageCatId", "iconId", "setButtonLoading", "button", "Lcom/google/android/material/button/MaterialButton;", "loading", "getProgressBarDrawable", "Landroid/graphics/drawable/Drawable;", Names.CONTEXT, "Landroid/content/Context;", "setLeftIcon", "setIconTintColor", "colorId", "Landroid/annotation/SuppressLint;", "value", "UseCompatTextViewDrawableApis", "setAdapter", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", L6.G1, "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "setLockBackgroundWithAttribute", "Lcom/google/android/material/card/MaterialCardView;", "locked", "setEnableDecorator", "state", "setTextColor", "colorStateListOf", "Landroid/content/res/ColorStateList;", "mapping", "", "Lkotlin/Pair;", "", "([Lkotlin/Pair;)Landroid/content/res/ColorStateList;", "setIsEnglishWordForFont", "isEnglish", "setIsEnglishMeaningForFont", "setLocalizedNumber", "textView", "number", "setSelectedState", "selected", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class BindingAdapterKt {
    public static final void setHtml(AdvancedWebView view, String str, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (str == null) {
            return;
        }
        view.loadDataWithBaseURL(null, StringExtKt.changeHtmlThemeMode(str, z), "text/html", "UTF-8", AndroidWebViewClient.BLANK_PAGE);
    }

    public static final void setRightIcon(TextView view, Integer num) {
        Drawable drawable;
        Intrinsics.checkNotNullParameter(view, "view");
        if (num != null) {
            drawable = ContextCompat.getDrawable(view.getContext(), num.intValue());
        } else {
            drawable = null;
        }
        view.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
    }

    public static final void setPersianAlignment(TextView view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setGravity(!z ? GravityCompat.END : GravityCompat.START);
    }

    public static final void setStringResource(TextView view, Integer num) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (num != null) {
            view.setText(view.getContext().getString(num.intValue()));
        }
    }

    public static final void setImageSrcId(ImageView view, int i) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setImageResource(i);
    }

    public static final void setImageCatId(ImageView view, String str) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (str != null) {
            Context context = view.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            int drawableByStringName = ContextExtKt.getDrawableByStringName(context, str);
            if (drawableByStringName != 0) {
                view.setImageResource(drawableByStringName);
                return;
            } else {
                view.setImageResource(R.drawable.c60);
                return;
            }
        }
        view.setImageDrawable(null);
    }

    public static final void setButtonLoading(MaterialButton button, boolean z) {
        Object obj;
        Intrinsics.checkNotNullParameter(button, "button");
        button.setMaxLines(1);
        button.setEnabled(!z);
        button.setEllipsize(TextUtils.TruncateAt.END);
        button.setIconGravity(1);
        if (z) {
            Drawable icon = button.getIcon();
            if (!(icon instanceof Animatable)) {
                obj = icon;
                Context context = button.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                Drawable progressBarDrawable = getProgressBarDrawable(context);
                button.m2681x11712a47(progressBarDrawable);
                obj = progressBarDrawable;
            }
            obj = icon;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.graphics.drawable.Animatable");
            ((Animatable) obj).start();
            return;
        }
        button.m2681x11712a47(null);
    }

    private static final Drawable getProgressBarDrawable(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.progressBarStyleSmall, typedValue, false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(typedValue.data, new int[]{android.R.attr.indeterminateDrawable});
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        return drawable;
    }

    public static final void setLeftIcon(TextView view, Integer num) {
        Drawable drawable;
        Intrinsics.checkNotNullParameter(view, "view");
        if (num != null) {
            drawable = ContextCompat.getDrawable(view.getContext(), num.intValue());
        } else {
            drawable = null;
        }
        view.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
    }

    public static final void setIconTintColor(TextView view, int i) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setCompoundDrawableTintList(colorStateListOf(TuplesKt.to(new int[]{android.R.attr.state_enabled}, Integer.valueOf(view.getContext().getResources().getColor(i, view.getContext().getTheme()))), TuplesKt.to(new int[]{android.R.attr.state_active}, Integer.valueOf(view.getContext().getResources().getColor(i, view.getContext().getTheme())))));
    }

    public static final void setIconTintColor(ImageView view, int i) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setImageTintList(colorStateListOf(TuplesKt.to(new int[]{android.R.attr.state_enabled}, Integer.valueOf(view.getContext().getResources().getColor(i, view.getContext().getTheme()))), TuplesKt.to(new int[]{android.R.attr.state_active}, Integer.valueOf(view.getContext().getResources().getColor(i, view.getContext().getTheme())))));
    }

    public static final void setAdapter(RecyclerView recyclerView, RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        recyclerView.setAdapter(adapter);
    }

    public static final void setLockBackgroundWithAttribute(MaterialCardView view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (z) {
            Context context = view.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            view.setBackgroundColor(ContextExtKt.getColorFromAttr$default(context, R.attr.transparentBackground, null, false, 6, null));
            return;
        }
        view.setBackgroundColor(0);
    }

    public static final void setEnableDecorator(RecyclerView recyclerView, boolean z) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (z) {
            Context context = recyclerView.getContext();
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            DividerItemDecoration dividerItemDecoration = new DividerItemDecoration(context, ((LinearLayoutManager) layoutManager).getOrientation());
            Context context2 = recyclerView.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            dividerItemDecoration.setDrawable(new ColorDrawable(ContextExtKt.getColorFromAttr$default(context2, R.attr.segmentedColor, null, false, 6, null)));
            recyclerView.addItemDecoration(dividerItemDecoration);
        }
    }

    public static final void setTextColor(TextView view, int i) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setTextColor(view.getContext().getResources().getColor(i, view.getContext().getTheme()));
    }

    public static final ColorStateList colorStateListOf(Pair<int[], Integer>... mapping) {
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        Pair pairUnzip = ArraysKt.unzip(mapping);
        return new ColorStateList((int[][]) ((List) pairUnzip.component1()).toArray(new int[0][]), CollectionsKt.toIntArray((List) pairUnzip.component2()));
    }

    public static final void setIsEnglishWordForFont(TextView view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        Context context = view.getContext();
        if (z) {
            Intrinsics.checkNotNull(context);
            view.setTextColor(ContextExtKt.getColorFromAttr$default(context, R.attr.label, null, false, 6, null));
            Typeface DEFAULT = Typeface.DEFAULT;
            Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
            view.setTypeface(TypefaceExtKt.helveticaLight(DEFAULT, context));
        } else {
            Intrinsics.checkNotNull(context);
            view.setTextColor(ContextExtKt.getColorFromAttr$default(context, R.attr.secondaryLabel, null, false, 6, null));
            Typeface DEFAULT2 = Typeface.DEFAULT;
            Intrinsics.checkNotNullExpressionValue(DEFAULT2, "DEFAULT");
            view.setTypeface(TypefaceExtKt.iranSansWebLight(DEFAULT2, context));
        }
        view.setTextSize(18.0f);
    }

    public static final void setIsEnglishMeaningForFont(TextView view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        Context context = view.getContext();
        if (z) {
            Intrinsics.checkNotNull(context);
            view.setTextColor(ContextExtKt.getColorFromAttr$default(context, R.attr.label, null, false, 6, null));
            Typeface DEFAULT = Typeface.DEFAULT;
            Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
            view.setTypeface(TypefaceExtKt.helveticaLight(DEFAULT, context));
        } else {
            Intrinsics.checkNotNull(context);
            view.setTextColor(ContextExtKt.getColorFromAttr$default(context, R.attr.secondaryLabel, null, false, 6, null));
            Typeface DEFAULT2 = Typeface.DEFAULT;
            Intrinsics.checkNotNullExpressionValue(DEFAULT2, "DEFAULT");
            view.setTypeface(TypefaceExtKt.iranSansWebLight(DEFAULT2, context));
        }
        view.setTextSize(14.0f);
    }

    public static final void setLocalizedNumber(TextView textView, Integer num) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        Context context = textView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        if (new LocalStorage(context).currentLanguageIsPersian()) {
            textView.setText(FDLanguageWord.INSTANCE.replaceNumbersToFarsi(String.valueOf(num != null ? num.intValue() : 0)));
        } else {
            textView.setText(String.valueOf(num != null ? num.intValue() : 0));
        }
    }

    public static final void setSelectedState(MaterialCardView view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "view");
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        view.setStrokeWidth(IntExtKt.toDimensionUnit$default(z ? 3.0f : 1.0f, context, 0, 2, null));
        if (z) {
            Context context2 = view.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            view.setStrokeColor(ContextExtKt.getColorFromAttr$default(context2, R.attr.tableViewSelectedBackground, null, false, 6, null));
        } else {
            Context context3 = view.getContext();
            Intrinsics.checkNotNullExpressionValue(context3, "getContext(...)");
            view.setStrokeColor(ContextExtKt.getColorFromAttr$default(context3, R.attr.tableViewBorder, null, false, 6, null));
        }
    }
}
