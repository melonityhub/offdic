package fast.dic.dict.helpers.database;

import android.content.Context;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.qualifiers.ApplicationContext;
import fast.dic.dict.R;
import fast.dic.dict.models.database.EnglishMeaningModel;
import fast.dic.dict.models.database.EnglishSearchResultModel;
import fast.dic.dict.models.database.PersianSearchResultModel;
import fast.dic.dict.models.database.PersianWordDetail;
import fast.dic.dict.models.database.SentenseModel;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDResultLabel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\f\b\u0001\u0010\u0002\u001a\u00020\u0003:\u0002\b\u0004\u001a\u0002\b\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0003J\u0010\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014R#\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u0092\u0002\u0002\b\u0004¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0006¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/helpers/database/FDResultLabel;", "", Names.CONTEXT, "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "<init>", "(Landroid/content/Context;)V", "Ljavax/inject/Inject;", "getContext", "()Landroid/content/Context;", "setContext", "updateContext", "", "newContext", "getMeaningLabelEnglish", "", "englishSearchResult", "Lfast/dic/dict/models/database/EnglishSearchResultModel;", "getMeaningLabelPersian", "persianSearchResult", "Lfast/dic/dict/models/database/PersianSearchResultModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDResultLabel {

    @ApplicationContext
    private Context context;

    @Inject
    public FDResultLabel(@ApplicationContext Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public final Context getContext() {
        return this.context;
    }

    public final void setContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void updateContext(Context newContext) {
        Intrinsics.checkNotNullParameter(newContext, "newContext");
        this.context = newContext;
    }

    public final String getMeaningLabelEnglish(EnglishSearchResultModel englishSearchResult) {
        String str = "";
        if (englishSearchResult == null) {
            return "";
        }
        if (englishSearchResult.isNumber()) {
            String string = this.context.getString(R.string.results_numbers);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        List<EnglishMeaningModel> meanings = englishSearchResult.getMeanings();
        if (meanings == null) {
            return "";
        }
        Iterator<T> it = meanings.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            i++;
            List<SentenseModel> sentenses = ((EnglishMeaningModel) it.next()).getSentenses();
            if (sentenses != null) {
                for (SentenseModel sentenseModel : sentenses) {
                    i2++;
                }
            }
        }
        if (i == 1) {
            str = "" + this.context.getString(R.string.results_meaning) + " ";
        }
        if (i > 1) {
            str = str + this.context.getString(R.string.results_meanings) + " ";
        }
        if (i2 == 1) {
            str = str + this.context.getString(R.string.results_sentence);
        }
        if (i2 <= 1) {
            return str;
        }
        return str + this.context.getString(R.string.results_sentences);
    }

    public final String getMeaningLabelPersian(PersianSearchResultModel persianSearchResult) {
        List<PersianWordDetail> wordDetails;
        String str = "";
        if (persianSearchResult == null || (wordDetails = persianSearchResult.getWordDetails()) == null) {
            return "";
        }
        Iterator<T> it = wordDetails.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            i++;
            List<SentenseModel> sentenses = ((PersianWordDetail) it.next()).getSentenses();
            if (sentenses != null) {
                for (SentenseModel sentenseModel : sentenses) {
                    i2++;
                }
            }
        }
        if (i == 1) {
            str = "" + this.context.getString(R.string.results_meaning) + " ";
        }
        if (i > 1) {
            str = str + this.context.getString(R.string.results_meanings) + " ";
        }
        if (i2 == 1) {
            str = str + this.context.getString(R.string.results_sentence);
        }
        return i2 > 1 ? str + this.context.getString(R.string.results_sentences) : str;
    }
}
