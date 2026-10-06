package fast.dic.dict.models.database;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: PersianSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0007\"\u0004\b\u0013\u0010\tR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0007\"\u0004\b\u001d\u0010\tR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010$\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010%\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u000e\"\u0004\b(\u0010\u0010R\"\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u000e\"\u0004\b+\u0010\u0010¨\u0006,"}, d2 = {"Lfast/dic/dict/models/database/PersianWordDetail;", "", "<init>", "()V", "persianMeanings", "", "getPersianMeanings", "()Ljava/lang/String;", "setPersianMeanings", "(Ljava/lang/String;)V", "pos", "", "Lfast/dic/dict/models/database/PosModel;", "getPos", "()Ljava/util/List;", "setPos", "(Ljava/util/List;)V", "phonetics", "getPhonetics", "setPhonetics", "detailId", "", "getDetailId", "()Ljava/lang/Integer;", "setDetailId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "meaning", "getMeaning", "setMeaning", "hasImage", "", "getHasImage", "()Ljava/lang/Boolean;", "setHasImage", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "sentenses", "Lfast/dic/dict/models/database/SentenseModel;", "getSentenses", "setSentenses", "categories", "getCategories", "setCategories", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PersianWordDetail {
    private List<String> categories;
    private Integer detailId;
    private Boolean hasImage;
    private String meaning;
    private String persianMeanings;
    private String phonetics;
    private List<PosModel> pos;
    private List<SentenseModel> sentenses;

    public final String getPersianMeanings() {
        return this.persianMeanings;
    }

    public final void setPersianMeanings(String str) {
        this.persianMeanings = str;
    }

    public final List<PosModel> getPos() {
        return this.pos;
    }

    public final void setPos(List<PosModel> list) {
        this.pos = list;
    }

    public final String getPhonetics() {
        return this.phonetics;
    }

    public final void setPhonetics(String str) {
        this.phonetics = str;
    }

    public final Integer getDetailId() {
        return this.detailId;
    }

    public final void setDetailId(Integer num) {
        this.detailId = num;
    }

    public final String getMeaning() {
        return this.meaning;
    }

    public final void setMeaning(String str) {
        this.meaning = str;
    }

    public final Boolean getHasImage() {
        return this.hasImage;
    }

    public final void setHasImage(Boolean bool) {
        this.hasImage = bool;
    }

    public final List<SentenseModel> getSentenses() {
        return this.sentenses;
    }

    public final void setSentenses(List<SentenseModel> list) {
        this.sentenses = list;
    }

    public final List<String> getCategories() {
        return this.categories;
    }

    public final void setCategories(List<String> list) {
        this.categories = list;
    }
}
