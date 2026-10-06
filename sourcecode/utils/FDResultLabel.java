package fast.dic.dict.utils;

import android.content.Context;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import fast.dic.dict.models.database.EnglishMeaningModel;
import fast.dic.dict.models.database.EnglishSearchResultModel;
import fast.dic.dict.models.database.PersianSearchResultModel;
import fast.dic.dict.models.database.PersianWordDetail;
import fast.dic.dict.models.database.SentenseModel;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDResultLabel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tJ\u0018\u0010\u0004\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\t¨\u0006\f"}, d2 = {"Lfast/dic/dict/utils/FDResultLabel;", "", "<init>", "()V", "getMeaningLabel", "", "englishSearchResult", "Lfast/dic/dict/models/database/EnglishSearchResultModel;", Names.CONTEXT, "Landroid/content/Context;", "persianSearchResult", "Lfast/dic/dict/models/database/PersianSearchResultModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDResultLabel {
    public final String getMeaningLabel(EnglishSearchResultModel englishSearchResult, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String str = "";
        if (englishSearchResult == null) {
            return "";
        }
        if (englishSearchResult.getEnglishNumbers() != null) {
            String string = context.getString(R.string.results_numbers);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        List<EnglishMeaningModel> meanings = englishSearchResult.getMeanings();
        if (meanings == null) {
            return "";
        }
        Iterator<EnglishMeaningModel> it = meanings.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            i++;
            List<SentenseModel> sentenses = it.next().getSentenses();
            if (sentenses != null) {
                for (SentenseModel sentenseModel : sentenses) {
                    i2++;
                }
            }
        }
        if (i == 1) {
            str = "" + context.getString(R.string.results_meaning) + " ";
        } else if (i > 1) {
            str = "" + context.getString(R.string.results_meanings) + " ";
        }
        if (i2 == 1) {
            return str + context.getString(R.string.results_sentence);
        }
        if (i2 <= 1) {
            return str;
        }
        return str + context.getString(R.string.results_sentences);
    }

    public final String getMeaningLabel(PersianSearchResultModel persianSearchResult, Context context) {
        List<PersianWordDetail> wordDetails;
        Intrinsics.checkNotNullParameter(context, "context");
        String str = "";
        if (persianSearchResult == null || (wordDetails = persianSearchResult.getWordDetails()) == null) {
            return "";
        }
        Iterator<PersianWordDetail> it = wordDetails.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            i++;
            List<SentenseModel> sentenses = it.next().getSentenses();
            if (sentenses != null) {
                for (SentenseModel sentenseModel : sentenses) {
                    i2++;
                }
            }
        }
        if (i == 1) {
            str = "" + context.getString(R.string.results_meaning) + " ";
        } else if (i > 1) {
            str = "" + context.getString(R.string.results_meanings) + " ";
        }
        if (i2 == 1) {
            return str + context.getString(R.string.results_sentence);
        }
        return i2 > 1 ? str + context.getString(R.string.results_sentences) : str;
    }
}
