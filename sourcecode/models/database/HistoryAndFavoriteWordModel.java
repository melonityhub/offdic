package fast.dic.dict.models.database;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HistoryAndFavoriteWordModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010¨\u0006\u0013"}, d2 = {"Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;", "", "word", "", "word_id", "", "category", "<init>", "(Ljava/lang/String;II)V", "getWord", "()Ljava/lang/String;", "setWord", "(Ljava/lang/String;)V", "getWord_id", "()I", "setWord_id", "(I)V", "getCategory", "setCategory", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class HistoryAndFavoriteWordModel {
    private int category;
    private String word;
    private int word_id;

    public HistoryAndFavoriteWordModel(String word, int i, int i2) {
        Intrinsics.checkNotNullParameter(word, "word");
        this.word = word;
        this.word_id = i;
        this.category = i2;
    }

    public final int getCategory() {
        return this.category;
    }

    public final String getWord() {
        return this.word;
    }

    public final int getWord_id() {
        return this.word_id;
    }

    public final void setCategory(int i) {
        this.category = i;
    }

    public final void setWord(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.word = str;
    }

    public final void setWord_id(int i) {
        this.word_id = i;
    }
}
