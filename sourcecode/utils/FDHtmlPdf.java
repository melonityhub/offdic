package fast.dic.dict.utils;

import android.text.format.DateFormat;
import fast.dic.dict.models.database.ListModel;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDHtmlPdf.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007J\u0016\u0010\t\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002¨\u0006\n"}, d2 = {"Lfast/dic/dict/utils/FDHtmlPdf;", "", "<init>", "()V", "generateWordListHtml", "", "wordsListModels", "", "Lfast/dic/dict/models/database/ListModel;", "generateHtmlForWords", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDHtmlPdf {
    public static final FDHtmlPdf INSTANCE = new FDHtmlPdf();

    private FDHtmlPdf() {
    }

    public final String generateWordListHtml(List<ListModel> wordsListModels) {
        Intrinsics.checkNotNullParameter(wordsListModels, "wordsListModels");
        return "<html><link type=\"text/css\" rel=\"stylesheet\" href=\"file:///android_asset/css/style-pdf.css\"/><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" /><body><div class=\"logo\"><img src=\"file:///android_asset/images/fd-logo.svg\"/></div><div class=\"header\"><div class=\"persian\">دیکشنری دو زبانه انگلیسی به فارسی و فارسی به انگلیسی</div><div class=\"english\">English to Persian/Farsi and Persian/Farsi to English dictionary</div><div class=\"date\">" + ((Object) DateFormat.format("yyyy/MM/dd 'at' HH:mm", new Date().getTime())) + "</div><div class=\"website\">www.fastdic.com</div></div><table>" + generateHtmlForWords(wordsListModels) + "</table></body></html>";
    }

    private final String generateHtmlForWords(List<ListModel> wordsListModels) {
        String str = "";
        for (ListModel listModel : wordsListModels) {
            String str2 = ((Object) str) + "<div class=\"row\">";
            String str3 = FDLanguageWord.INSTANCE.find(listModel.getWord()) == FDLanguageWord.LanguageType.Persian ? "rtl" : "ltr";
            String str4 = FDLanguageWord.INSTANCE.find(listModel.getWord()) == FDLanguageWord.LanguageType.Persian ? "ltr" : "rtl";
            String str5 = ((Object) str2) + "<p><strong class=\"" + str3 + "\">" + listModel.getWord() + "</strong></p>";
            List<String> meanings = listModel.getMeanings();
            if (meanings != null) {
                Iterator<T> it = meanings.iterator();
                while (it.hasNext()) {
                    str5 = ((Object) str5) + "<p class=\"" + str4 + "\">" + ((String) it.next()) + "</p>";
                }
            }
            List<String> meanings2 = listModel.getMeanings();
            if (meanings2 != null && meanings2.size() == 0) {
                str5 = ((Object) str5) + "<p class=\"" + str4 + "\">" + listModel.getMeaning() + "</p>";
            }
            str = ((Object) str5) + "</div>";
        }
        return str;
    }
}
