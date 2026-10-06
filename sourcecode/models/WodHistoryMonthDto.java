package fast.dic.dict.models;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WodHistoryDto.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J1\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0019\u001a\u00020\u001aHÖ\u0081\u0004J\n\u0010\u001b\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR%\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u0092\u0002\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\n¨\u0006\u001c"}, d2 = {"Lfast/dic/dict/models/WodHistoryMonthDto;", "", "word", "", "publishDate", "dateJalali", "month", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getWord", "()Ljava/lang/String;", "getPublishDate", "Lcom/google/gson/annotations/SerializedName;", "value", "publish_date", "getDateJalali", "getMonth", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class WodHistoryMonthDto {
    private final String dateJalali;
    private final String month;

    @SerializedName("publish_date")
    private final String publishDate;
    private final String word;

    public static /* synthetic */ WodHistoryMonthDto copy$default(WodHistoryMonthDto wodHistoryMonthDto, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wodHistoryMonthDto.word;
        }
        if ((i & 2) != 0) {
            str2 = wodHistoryMonthDto.publishDate;
        }
        if ((i & 4) != 0) {
            str3 = wodHistoryMonthDto.dateJalali;
        }
        if ((i & 8) != 0) {
            str4 = wodHistoryMonthDto.month;
        }
        return wodHistoryMonthDto.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getWord() {
        return this.word;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPublishDate() {
        return this.publishDate;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDateJalali() {
        return this.dateJalali;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getMonth() {
        return this.month;
    }

    public final WodHistoryMonthDto copy(String word, String publishDate, String dateJalali, String month) {
        Intrinsics.checkNotNullParameter(word, "word");
        Intrinsics.checkNotNullParameter(publishDate, "publishDate");
        Intrinsics.checkNotNullParameter(dateJalali, "dateJalali");
        Intrinsics.checkNotNullParameter(month, "month");
        return new WodHistoryMonthDto(word, publishDate, dateJalali, month);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WodHistoryMonthDto)) {
            return false;
        }
        WodHistoryMonthDto wodHistoryMonthDto = (WodHistoryMonthDto) other;
        return Intrinsics.areEqual(this.word, wodHistoryMonthDto.word) && Intrinsics.areEqual(this.publishDate, wodHistoryMonthDto.publishDate) && Intrinsics.areEqual(this.dateJalali, wodHistoryMonthDto.dateJalali) && Intrinsics.areEqual(this.month, wodHistoryMonthDto.month);
    }

    public int hashCode() {
        return (((((this.word.hashCode() * 31) + this.publishDate.hashCode()) * 31) + this.dateJalali.hashCode()) * 31) + this.month.hashCode();
    }

    public String toString() {
        return "WodHistoryMonthDto(word=" + this.word + ", publishDate=" + this.publishDate + ", dateJalali=" + this.dateJalali + ", month=" + this.month + ")";
    }

    public WodHistoryMonthDto(String word, String publishDate, String dateJalali, String month) {
        Intrinsics.checkNotNullParameter(word, "word");
        Intrinsics.checkNotNullParameter(publishDate, "publishDate");
        Intrinsics.checkNotNullParameter(dateJalali, "dateJalali");
        Intrinsics.checkNotNullParameter(month, "month");
        this.word = word;
        this.publishDate = publishDate;
        this.dateJalali = dateJalali;
        this.month = month;
    }

    public final String getWord() {
        return this.word;
    }

    public final String getPublishDate() {
        return this.publishDate;
    }

    public final String getDateJalali() {
        return this.dateJalali;
    }

    public final String getMonth() {
        return this.month;
    }
}
