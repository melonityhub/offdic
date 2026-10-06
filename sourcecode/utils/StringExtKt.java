package fast.dic.dict.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.Html;
import com.fastdic.android.modules.fdnumberstowords.utils.FDStringExtKt;
import com.ironsource.C4232z5;
import com.startapp.simple.bloomfilter.codec.IOUtils;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.p000const.ConstKt;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.CharsKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: StringExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\u001a \u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007b\u0010\b\u0003\u0012\f\b\u0004\u0012\b\b\fJ\u0004\b\b(\u0005\u001a\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007*\u00020\u00022\b\b\u0002\u0010\b\u001a\u00020\t\u001a\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007*\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\t\u001a\u000e\u0010\f\u001a\u0004\u0018\u00010\u0002*\u0004\u0018\u00010\u0002\u001a\u000e\u0010\r\u001a\u0004\u0018\u00010\u0002*\u0004\u0018\u00010\u0002\u001a\u000e\u0010\u000e\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0002\u001a\u000e\u0010\u000f\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0002\u001a\u000e\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u0004\u0018\u00010\u0002\u001a\n\u0010\u0012\u001a\u00020\u0002*\u00020\u0002\u001a\f\u0010\u0013\u001a\u0004\u0018\u00010\u0002*\u00020\u0002\u001a\f\u0010\u0014\u001a\u00020\u0002*\u0004\u0018\u00010\u0002\u001a\n\u0010\u0015\u001a\u00020\u0002*\u00020\u0002\u001a\n\u0010\u0016\u001a\u00020\u0002*\u00020\u0002\u001a\n\u0010\u0017\u001a\u00020\u0002*\u00020\u0002\u001a\n\u0010\u0018\u001a\u00020\u0002*\u00020\u0002\u001a\u0012\u0010\u0019\u001a\u00020\u001a*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001c\u001a\n\u0010\u001d\u001a\u00020\t*\u00020\u0002\u001a\u0010\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007*\u00020\u0002\u001a\u0010\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007*\u00020\u0002\u001a\u001c\u0010 \u001a\u00020\u0002*\u00020\u00022\u0006\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$\u001a\u0018\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007*\u00020\u00022\u0006\u0010&\u001a\u00020\t\u001a\n\u0010'\u001a\u00020\u0002*\u00020\u0002\u001a\u0012\u0010(\u001a\u00020\u0002*\u00020\u00022\u0006\u0010)\u001a\u00020*¨\u0006+"}, d2 = {"isoStringToDate", "Ljava/util/Date;", "", "Landroid/annotation/SuppressLint;", "value", "SimpleDateFormat", "chunkSentence", "", "limit", "", "splitTextIntoChunks", "maxChunkSize", "getDigitsFromString", "getNonDigitsFromString", "currentUTCTimeZoneDate", "toDate", "toFile", "Ljava/io/File;", "urlEncoded", "urlDecode", "removeHtmlBreakingLines", "removeHtmlTags", "removeLines", "capitalized", "replaceNewLineWithBr", "getBitmapFromPath", "Landroid/graphics/Bitmap;", Names.CONTEXT, "Landroid/content/Context;", "wordCount", "words", "extractCurrency", "formatToCurrency", "amount", "", "locale", "Ljava/util/Locale;", "transformTextToLine", "wordsPerLine", "toUrlEncode", "changeHtmlThemeMode", "isDarkMode", "", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class StringExtKt {
    public static final Date isoStringToDate(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            return new SimpleDateFormat("yyyy-MM-dd").parse(str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static /* synthetic */ List chunkSentence$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 4000;
        }
        return chunkSentence(str, i);
    }

    public static final List<String> chunkSentence(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() < i && i > 100) {
            return CollectionsKt.listOf(str);
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < str.length()) {
            int length = i2 + i;
            if (length > str.length()) {
                length = (str.length() - i2) + i2;
            }
            String strSubstring = str.substring(i2, length);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            System.out.println((Object) ("temp=" + strSubstring));
            int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) strSubstring, ' ', 0, false, 6, (Object) null);
            if (iLastIndexOf$default > -1 && length < str.length()) {
                String strSubstring2 = strSubstring.substring(0, iLastIndexOf$default);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                arrayList.add(strSubstring2);
                System.out.println((Object) ("p=" + i2 + ", r=" + length + ", l=" + iLastIndexOf$default + " => " + strSubstring2));
                i2 = length - (i - iLastIndexOf$default);
            } else {
                arrayList.add(strSubstring);
                i2 = length;
            }
        }
        return arrayList;
    }

    public static /* synthetic */ List splitTextIntoChunks$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 4000;
        }
        return splitTextIntoChunks(str, i);
    }

    public static final List<String> splitTextIntoChunks(String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < str.length()) {
            int iCoerceAtMost = RangesKt.coerceAtMost(i2 + i, str.length());
            if (iCoerceAtMost < str.length() && !CharsKt.isWhitespace(str.charAt(iCoerceAtMost))) {
                Integer numValueOf = Integer.valueOf(StringsKt.lastIndexOf$default((CharSequence) str, ' ', iCoerceAtMost - 1, false, 4, (Object) null));
                if (numValueOf.intValue() < i2) {
                    numValueOf = null;
                }
                if (numValueOf != null) {
                    iCoerceAtMost = numValueOf.intValue();
                }
            }
            String strSubstring = str.substring(i2, iCoerceAtMost);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            arrayList.add(strSubstring);
            i2 = iCoerceAtMost;
        }
        return arrayList;
    }

    public static final Date currentUTCTimeZoneDate(String str) {
        if (str == null) {
            return null;
        }
        Date date = toDate(str);
        return date == null ? new Date() : date;
    }

    public static final Date toDate(String str) {
        if (str == null) {
            return null;
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yy'-'MM'-'dd'T'HH:mm:ss'Z'", Locale.getDefault());
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        try {
            return simpleDateFormat.parse(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static final File toFile(String str) {
        if (str == null) {
            return null;
        }
        return new File(str);
    }

    public static final String urlEncoded(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String strEncode = URLEncoder.encode(StringsKt.trimEnd((CharSequence) StringsKt.trimStart((CharSequence) str).toString()).toString(), C4232z5.O);
        Intrinsics.checkNotNullExpressionValue(strEncode, "encode(...)");
        return strEncode;
    }

    public static final String urlDecode(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return URLDecoder.decode(str, "UTF-8");
    }

    public static final String removeHtmlBreakingLines(String str) {
        if (str == null) {
            return "";
        }
        return StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(str, "<br />", IOUtils.LINE_SEPARATOR_UNIX, false, 4, (Object) null), "<br/>", IOUtils.LINE_SEPARATOR_UNIX, false, 4, (Object) null), "<br>", IOUtils.LINE_SEPARATOR_UNIX, false, 4, (Object) null);
    }

    public static final String removeHtmlTags(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return Html.fromHtml(str, 63).toString();
    }

    public static final String removeLines(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.replace$default(str, IOUtils.LINE_SEPARATOR_UNIX, " ", false, 4, (Object) null);
    }

    public static final String capitalized(String str) {
        String strValueOf;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char cCharAt = str.charAt(0);
        if (Character.isLowerCase(cCharAt)) {
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            strValueOf = CharsKt.titlecase(cCharAt, locale);
        } else {
            strValueOf = String.valueOf(cCharAt);
        }
        StringBuilder sbAppend = sb.append((Object) strValueOf);
        String strSubstring = str.substring(1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return sbAppend.append(strSubstring).toString();
    }

    public static final String replaceNewLineWithBr(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.replace$default(str, IOUtils.LINE_SEPARATOR_UNIX, "<br />", false, 4, (Object) null);
    }

    public static final Bitmap getBitmapFromPath(String str, Context context) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(context.getContentResolver().openInputStream(Uri.parse(str)));
        Intrinsics.checkNotNullExpressionValue(bitmapDecodeStream, "decodeStream(...)");
        return bitmapDecodeStream;
    }

    public static final int wordCount(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return words(str).size();
    }

    public static final List<String> words(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String str2 = str;
        if (str2.length() == 0 || StringsKt.isBlank(str2)) {
            return CollectionsKt.emptyList();
        }
        return new Regex("\\s+").split(StringsKt.trimEnd((CharSequence) StringsKt.trimStart((CharSequence) str2).toString()).toString(), 0);
    }

    public static final List<String> extractCurrency(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Regex regex = new Regex("([\\p{Sc}]) ?(\\d+(\\.\\d{1,2})?)");
        String englishNumber = FDStringExtKt.toEnglishNumber(str);
        if (englishNumber == null) {
            englishNumber = "";
        }
        List<String> list = (List) SequencesKt.firstOrNull(SequencesKt.map(Regex.findAll$default(regex, englishNumber, 0, 2, null), new Function1() { // from class: fast.dic.dict.utils.StringExtKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return StringExtKt.extractCurrency$lambda$0((MatchResult) obj);
            }
        }));
        return list == null ? CollectionsKt.emptyList() : list;
    }

    static final List extractCurrency$lambda$0(MatchResult matchResult) throws IOException {
        Intrinsics.checkNotNullParameter(matchResult, "matchResult");
        String digitsFromString = getDigitsFromString(matchResult.getGroupValues().get(1));
        return (digitsFromString == null || digitsFromString.length() == 0) ? CollectionsKt.listOf((Object[]) new String[]{matchResult.getGroupValues().get(2), matchResult.getGroupValues().get(1)}) : CollectionsKt.listOf((Object[]) new String[]{matchResult.getGroupValues().get(1), matchResult.getGroupValues().get(2)});
    }

    public static /* synthetic */ String formatToCurrency$default(String str, double d, Locale locale, int i, Object obj) {
        if ((i & 2) != 0) {
            locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        }
        return formatToCurrency(str, d, locale);
    }

    public static final String formatToCurrency(String str, double d, Locale locale) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String str2 = NumberFormat.getCurrencyInstance(locale).format(d);
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        return str2;
    }

    public static final List<String> transformTextToLine(String str, int i) {
        String str2;
        String str3;
        Intrinsics.checkNotNullParameter(str, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = words(str).iterator();
        loop0: while (true) {
            str2 = "";
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                str3 = ((Object) str2) + ((String) it.next());
                i2++;
                if (i2 == i) {
                    break;
                }
                str2 = ((Object) str3) + " ";
            }
            arrayList.add(str3);
        }
        if (str2.length() == 0) {
            return arrayList;
        }
        arrayList.add(str2);
        return arrayList;
    }

    public static final String toUrlEncode(String str) throws UnsupportedEncodingException {
        Intrinsics.checkNotNullParameter(str, "<this>");
        String strEncode = URLEncoder.encode(str, C4232z5.O);
        Intrinsics.checkNotNullExpressionValue(strEncode, "encode(...)");
        return strEncode;
    }

    public static final String changeHtmlThemeMode(String str, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return StringsKt.replace$default(str, StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.DARK_MODE_CLASS, false, 2, (Object) null) ? ConstKt.DARK_MODE_CLASS : ConstKt.LIGHT_MODE_CLASS, z ? ConstKt.DARK_MODE_CLASS : ConstKt.LIGHT_MODE_CLASS, false, 4, (Object) null);
    }

    public static final String getDigitsFromString(String str) throws IOException {
        if (str == null) {
            return null;
        }
        String str2 = str;
        StringBuilder sb = new StringBuilder();
        int length = str2.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str2.charAt(i);
            if (Character.isDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static final String getNonDigitsFromString(String str) throws IOException {
        if (str == null) {
            return null;
        }
        String str2 = str;
        StringBuilder sb = new StringBuilder();
        int length = str2.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str2.charAt(i);
            if (!Character.isDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }
}
