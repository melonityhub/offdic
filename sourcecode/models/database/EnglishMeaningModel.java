package fast.dic.dict.models.database;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EnglishSearchResultModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b5\b\u0086\b\u0018\u00002\u00020\u0001B\u009d\u0001\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0011\u00105\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u00107\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u00109\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010;\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010)J\u0010\u0010<\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u0010=\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0011\u0010>\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0003HÆ\u0003J\u0011\u0010?\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0003J¤\u0001\u0010@\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00032\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010AJ\u0014\u0010B\u001a\u00020\r2\b\u0010C\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010D\u001a\u00020\u0006HÖ\u0081\u0004J\n\u0010E\u001a\u00020\bHÖ\u0081\u0004R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\"\u0010\u001a\"\u0004\b#\u0010\u001cR\u001c\u0010\n\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001f\"\u0004\b%\u0010!R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001f\"\u0004\b'\u0010!R\u001e\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u0010\n\u0002\u0010,\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b-\u0010\u001a\"\u0004\b.\u0010\u001cR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b/\u0010\u001a\"\u0004\b0\u0010\u001cR\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0016\"\u0004\b2\u0010\u0018R\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0016\"\u0004\b4\u0010\u0018¨\u0006F"}, d2 = {"Lfast/dic/dict/models/database/EnglishMeaningModel;", "", "pos", "", "Lfast/dic/dict/models/database/PosModel;", "detailId", "", "meaning", "", "formalInformal", "cefr", "descriptionHtml", "hasImage", "", "britishAmerican", "countableUncountable", "sentenses", "Lfast/dic/dict/models/database/SentenseModel;", "categories", "<init>", "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V", "getPos", "()Ljava/util/List;", "setPos", "(Ljava/util/List;)V", "getDetailId", "()Ljava/lang/Integer;", "setDetailId", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getMeaning", "()Ljava/lang/String;", "setMeaning", "(Ljava/lang/String;)V", "getFormalInformal", "setFormalInformal", "getCefr", "setCefr", "getDescriptionHtml", "setDescriptionHtml", "getHasImage", "()Ljava/lang/Boolean;", "setHasImage", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getBritishAmerican", "setBritishAmerican", "getCountableUncountable", "setCountableUncountable", "getSentenses", "setSentenses", "getCategories", "setCategories", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lfast/dic/dict/models/database/EnglishMeaningModel;", "equals", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class EnglishMeaningModel {
    private Integer britishAmerican;
    private List<String> categories;
    private String cefr;
    private Integer countableUncountable;
    private String descriptionHtml;
    private Integer detailId;
    private Integer formalInformal;
    private Boolean hasImage;
    private String meaning;
    private List<PosModel> pos;
    private List<SentenseModel> sentenses;

    public EnglishMeaningModel() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EnglishMeaningModel copy$default(EnglishMeaningModel englishMeaningModel, List list, Integer num, String str, Integer num2, String str2, String str3, Boolean bool, Integer num3, Integer num4, List list2, List list3, int i, Object obj) {
        if ((i & 1) != 0) {
            list = englishMeaningModel.pos;
        }
        if ((i & 2) != 0) {
            num = englishMeaningModel.detailId;
        }
        if ((i & 4) != 0) {
            str = englishMeaningModel.meaning;
        }
        if ((i & 8) != 0) {
            num2 = englishMeaningModel.formalInformal;
        }
        if ((i & 16) != 0) {
            str2 = englishMeaningModel.cefr;
        }
        if ((i & 32) != 0) {
            str3 = englishMeaningModel.descriptionHtml;
        }
        if ((i & 64) != 0) {
            bool = englishMeaningModel.hasImage;
        }
        if ((i & 128) != 0) {
            num3 = englishMeaningModel.britishAmerican;
        }
        if ((i & 256) != 0) {
            num4 = englishMeaningModel.countableUncountable;
        }
        if ((i & 512) != 0) {
            list2 = englishMeaningModel.sentenses;
        }
        if ((i & 1024) != 0) {
            list3 = englishMeaningModel.categories;
        }
        List list4 = list2;
        List list5 = list3;
        Integer num5 = num3;
        Integer num6 = num4;
        String str4 = str3;
        Boolean bool2 = bool;
        String str5 = str2;
        String str6 = str;
        return englishMeaningModel.copy(list, num, str6, num2, str5, str4, bool2, num5, num6, list4, list5);
    }

    public final List<PosModel> component1() {
        return this.pos;
    }

    public final List<SentenseModel> component10() {
        return this.sentenses;
    }

    public final List<String> component11() {
        return this.categories;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getDetailId() {
        return this.detailId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMeaning() {
        return this.meaning;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getFormalInformal() {
        return this.formalInformal;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCefr() {
        return this.cefr;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDescriptionHtml() {
        return this.descriptionHtml;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Boolean getHasImage() {
        return this.hasImage;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getBritishAmerican() {
        return this.britishAmerican;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getCountableUncountable() {
        return this.countableUncountable;
    }

    public final EnglishMeaningModel copy(List<PosModel> pos, Integer detailId, String meaning, Integer formalInformal, String cefr, String descriptionHtml, Boolean hasImage, Integer britishAmerican, Integer countableUncountable, List<SentenseModel> sentenses, List<String> categories) {
        return new EnglishMeaningModel(pos, detailId, meaning, formalInformal, cefr, descriptionHtml, hasImage, britishAmerican, countableUncountable, sentenses, categories);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EnglishMeaningModel)) {
            return false;
        }
        EnglishMeaningModel englishMeaningModel = (EnglishMeaningModel) other;
        return Intrinsics.areEqual(this.pos, englishMeaningModel.pos) && Intrinsics.areEqual(this.detailId, englishMeaningModel.detailId) && Intrinsics.areEqual(this.meaning, englishMeaningModel.meaning) && Intrinsics.areEqual(this.formalInformal, englishMeaningModel.formalInformal) && Intrinsics.areEqual(this.cefr, englishMeaningModel.cefr) && Intrinsics.areEqual(this.descriptionHtml, englishMeaningModel.descriptionHtml) && Intrinsics.areEqual(this.hasImage, englishMeaningModel.hasImage) && Intrinsics.areEqual(this.britishAmerican, englishMeaningModel.britishAmerican) && Intrinsics.areEqual(this.countableUncountable, englishMeaningModel.countableUncountable) && Intrinsics.areEqual(this.sentenses, englishMeaningModel.sentenses) && Intrinsics.areEqual(this.categories, englishMeaningModel.categories);
    }

    public int hashCode() {
        List<PosModel> list = this.pos;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Integer num = this.detailId;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.meaning;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.formalInformal;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str2 = this.cefr;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.descriptionHtml;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.hasImage;
        int iHashCode7 = (iHashCode6 + (bool == null ? 0 : bool.hashCode())) * 31;
        Integer num3 = this.britishAmerican;
        int iHashCode8 = (iHashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.countableUncountable;
        int iHashCode9 = (iHashCode8 + (num4 == null ? 0 : num4.hashCode())) * 31;
        List<SentenseModel> list2 = this.sentenses;
        int iHashCode10 = (iHashCode9 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<String> list3 = this.categories;
        return iHashCode10 + (list3 != null ? list3.hashCode() : 0);
    }

    public String toString() {
        return "EnglishMeaningModel(pos=" + this.pos + ", detailId=" + this.detailId + ", meaning=" + this.meaning + ", formalInformal=" + this.formalInformal + ", cefr=" + this.cefr + ", descriptionHtml=" + this.descriptionHtml + ", hasImage=" + this.hasImage + ", britishAmerican=" + this.britishAmerican + ", countableUncountable=" + this.countableUncountable + ", sentenses=" + this.sentenses + ", categories=" + this.categories + ")";
    }

    public EnglishMeaningModel(List<PosModel> list, Integer num, String str, Integer num2, String str2, String str3, Boolean bool, Integer num3, Integer num4, List<SentenseModel> list2, List<String> list3) {
        this.pos = list;
        this.detailId = num;
        this.meaning = str;
        this.formalInformal = num2;
        this.cefr = str2;
        this.descriptionHtml = str3;
        this.hasImage = bool;
        this.britishAmerican = num3;
        this.countableUncountable = num4;
        this.sentenses = list2;
        this.categories = list3;
    }

    public /* synthetic */ EnglishMeaningModel(List list, Integer num, String str, Integer num2, String str2, String str3, Boolean bool, Integer num3, Integer num4, List list2, List list3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : num2, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : bool, (i & 128) != 0 ? null : num3, (i & 256) != 0 ? null : num4, (i & 512) != 0 ? null : list2, (i & 1024) != 0 ? null : list3);
    }

    public final List<PosModel> getPos() {
        return this.pos;
    }

    public final void setPos(List<PosModel> list) {
        this.pos = list;
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

    public final Integer getFormalInformal() {
        return this.formalInformal;
    }

    public final void setFormalInformal(Integer num) {
        this.formalInformal = num;
    }

    public final String getCefr() {
        return this.cefr;
    }

    public final void setCefr(String str) {
        this.cefr = str;
    }

    public final String getDescriptionHtml() {
        return this.descriptionHtml;
    }

    public final void setDescriptionHtml(String str) {
        this.descriptionHtml = str;
    }

    public final Boolean getHasImage() {
        return this.hasImage;
    }

    public final void setHasImage(Boolean bool) {
        this.hasImage = bool;
    }

    public final Integer getBritishAmerican() {
        return this.britishAmerican;
    }

    public final void setBritishAmerican(Integer num) {
        this.britishAmerican = num;
    }

    public final Integer getCountableUncountable() {
        return this.countableUncountable;
    }

    public final void setCountableUncountable(Integer num) {
        this.countableUncountable = num;
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
