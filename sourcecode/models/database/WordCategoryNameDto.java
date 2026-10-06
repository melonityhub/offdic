package fast.dic.dict.models.database;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CategoryNameModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J+\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0014\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001a\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u001b\u001a\u00020\u0005HÖ\u0081\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010¨\u0006\u001c"}, d2 = {"Lfast/dic/dict/models/database/WordCategoryNameDto;", "", "id", "", "persianCategoryName", "", "englishCategoryName", "<init>", "(ILjava/lang/String;Ljava/lang/String;)V", "getId", "()I", "setId", "(I)V", "getPersianCategoryName", "()Ljava/lang/String;", "setPersianCategoryName", "(Ljava/lang/String;)V", "getEnglishCategoryName", "setEnglishCategoryName", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class WordCategoryNameDto {
    private String englishCategoryName;
    private int id;
    private String persianCategoryName;

    public WordCategoryNameDto() {
        this(0, null, null, 7, null);
    }

    public static /* synthetic */ WordCategoryNameDto copy$default(WordCategoryNameDto wordCategoryNameDto, int i, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = wordCategoryNameDto.id;
        }
        if ((i2 & 2) != 0) {
            str = wordCategoryNameDto.persianCategoryName;
        }
        if ((i2 & 4) != 0) {
            str2 = wordCategoryNameDto.englishCategoryName;
        }
        return wordCategoryNameDto.copy(i, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPersianCategoryName() {
        return this.persianCategoryName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEnglishCategoryName() {
        return this.englishCategoryName;
    }

    public final WordCategoryNameDto copy(int id, String persianCategoryName, String englishCategoryName) {
        return new WordCategoryNameDto(id, persianCategoryName, englishCategoryName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WordCategoryNameDto)) {
            return false;
        }
        WordCategoryNameDto wordCategoryNameDto = (WordCategoryNameDto) other;
        return this.id == wordCategoryNameDto.id && Intrinsics.areEqual(this.persianCategoryName, wordCategoryNameDto.persianCategoryName) && Intrinsics.areEqual(this.englishCategoryName, wordCategoryNameDto.englishCategoryName);
    }

    public int hashCode() {
        int iHashCode = Integer.hashCode(this.id) * 31;
        String str = this.persianCategoryName;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.englishCategoryName;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "WordCategoryNameDto(id=" + this.id + ", persianCategoryName=" + this.persianCategoryName + ", englishCategoryName=" + this.englishCategoryName + ")";
    }

    public WordCategoryNameDto(int i, String str, String str2) {
        this.id = i;
        this.persianCategoryName = str;
        this.englishCategoryName = str2;
    }

    public /* synthetic */ WordCategoryNameDto(int i, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? "" : str2);
    }

    public final int getId() {
        return this.id;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final String getPersianCategoryName() {
        return this.persianCategoryName;
    }

    public final void setPersianCategoryName(String str) {
        this.persianCategoryName = str;
    }

    public final String getEnglishCategoryName() {
        return this.englishCategoryName;
    }

    public final void setEnglishCategoryName(String str) {
        this.englishCategoryName = str;
    }
}
