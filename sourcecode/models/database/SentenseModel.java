package fast.dic.dict.models.database;

import androidx.core.text.util.LocalePreferences;
import kotlin.Metadata;

/* JADX INFO: compiled from: EnglishSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/models/database/SentenseModel;", "", "<init>", "()V", "english", "", "getEnglish", "()Ljava/lang/String;", "setEnglish", "(Ljava/lang/String;)V", LocalePreferences.CalendarType.PERSIAN, "getPersian", "setPersian", "english_sentence_id", "", "getEnglish_sentence_id", "()Ljava/lang/Integer;", "setEnglish_sentence_id", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SentenseModel {
    private String english;
    private Integer english_sentence_id;
    private String persian;

    public final String getEnglish() {
        return this.english;
    }

    public final void setEnglish(String str) {
        this.english = str;
    }

    public final String getPersian() {
        return this.persian;
    }

    public final void setPersian(String str) {
        this.persian = str;
    }

    public final Integer getEnglish_sentence_id() {
        return this.english_sentence_id;
    }

    public final void setEnglish_sentence_id(Integer num) {
        this.english_sentence_id = num;
    }
}
