package fast.dic.dict.utils;

import android.content.Context;
import android.graphics.Typeface;
import androidx.core.content.res.ResourcesCompat;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TypefaceExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\b\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\t\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0012\u0010\n\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u000b\u001a\u00020\u0001*\u00020\u0001¨\u0006\f"}, d2 = {"iranSansWeb", "Landroid/graphics/Typeface;", Names.CONTEXT, "Landroid/content/Context;", "iranSansWebBold", "iranSansWebLight", "iranSansWebMedium", "helvetica", "helveticaBold", "helveticaMedium", "helveticaLight", "systemDefault", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class TypefaceExtKt {
    public static final Typeface iranSansWeb(Typeface typeface, Context context) {
        Intrinsics.checkNotNullParameter(typeface, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Typeface font = ResourcesCompat.getFont(context, R.font.iransansweb);
            Intrinsics.checkNotNull(font);
            return font;
        } catch (Exception unused) {
            return typeface;
        }
    }

    public static final Typeface iranSansWebBold(Typeface typeface, Context context) {
        Intrinsics.checkNotNullParameter(typeface, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Typeface font = ResourcesCompat.getFont(context, R.font.iransansxbold);
            Intrinsics.checkNotNull(font);
            return font;
        } catch (Exception unused) {
            return typeface;
        }
    }

    public static final Typeface iranSansWebLight(Typeface typeface, Context context) {
        Intrinsics.checkNotNullParameter(typeface, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Typeface font = ResourcesCompat.getFont(context, R.font.iransansxregular);
            Intrinsics.checkNotNull(font);
            return font;
        } catch (Exception unused) {
            return typeface;
        }
    }

    public static final Typeface iranSansWebMedium(Typeface typeface, Context context) {
        Intrinsics.checkNotNullParameter(typeface, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Typeface font = ResourcesCompat.getFont(context, R.font.iransansxregular);
            Intrinsics.checkNotNull(font);
            return font;
        } catch (Exception unused) {
            return typeface;
        }
    }

    public static final Typeface helvetica(Typeface typeface, Context context) {
        Intrinsics.checkNotNullParameter(typeface, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Typeface font = ResourcesCompat.getFont(context, R.font.helvetica);
            Intrinsics.checkNotNull(font);
            return font;
        } catch (Exception unused) {
            return typeface;
        }
    }

    public static final Typeface helveticaBold(Typeface typeface, Context context) {
        Intrinsics.checkNotNullParameter(typeface, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Typeface font = ResourcesCompat.getFont(context, R.font.helveticaneuebold);
            Intrinsics.checkNotNull(font);
            return font;
        } catch (Exception unused) {
            return typeface;
        }
    }

    public static final Typeface helveticaMedium(Typeface typeface, Context context) {
        Intrinsics.checkNotNullParameter(typeface, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Typeface font = ResourcesCompat.getFont(context, R.font.helveticaneuemedium);
            Intrinsics.checkNotNull(font);
            return font;
        } catch (Exception unused) {
            return typeface;
        }
    }

    public static final Typeface helveticaLight(Typeface typeface, Context context) {
        Intrinsics.checkNotNullParameter(typeface, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Typeface font = ResourcesCompat.getFont(context, R.font.helveticaneuelight);
            Intrinsics.checkNotNull(font);
            return font;
        } catch (Exception unused) {
            return typeface;
        }
    }

    public static final Typeface systemDefault(Typeface typeface) {
        Intrinsics.checkNotNullParameter(typeface, "<this>");
        Typeface DEFAULT = Typeface.DEFAULT;
        Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
        return DEFAULT;
    }
}
