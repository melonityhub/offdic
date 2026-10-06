package fast.dic.dict.models.database;

import android.os.Parcel;
import android.os.Parcelable;
import io.sentry.protocol.FeatureFlags;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CategorizedWordDto.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010 \u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0016J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010\"\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bHÆ\u0003J\u0011\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bHÆ\u0003J\u0011\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bHÆ\u0003J|\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010&J\u0006\u0010'\u001a\u00020\bJ\u0014\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0083\u0004J\n\u0010,\u001a\u00020\bHÖ\u0081\u0004J\n\u0010-\u001a\u00020\u0005HÖ\u0081\u0004J\u0016\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0019\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aÊ\u0001\u0002\b4¨\u00063"}, d2 = {"Lfast/dic/dict/models/database/CategorizedWordDto;", "Landroid/os/Parcelable;", "wordId", "", "word", "", "meaning", "mostCommon", "", "categories", "subCategories", "", "cefrs", "poses", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getWordId", "()J", "getWord", "()Ljava/lang/String;", "getMeaning", "getMostCommon", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCategories", "getSubCategories", "()Ljava/util/List;", "getCefrs", "getPoses", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lfast/dic/dict/models/database/CategorizedWordDto;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", FeatureFlags.TYPE, "app", "Lkotlinx/parcelize/Parcelize;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class CategorizedWordDto implements Parcelable {
    public static final Parcelable.Creator<CategorizedWordDto> CREATOR = new Creator();
    private final String categories;
    private final List<String> cefrs;
    private final String meaning;
    private final Integer mostCommon;
    private final List<String> poses;
    private final List<String> subCategories;
    private final String word;
    private final long wordId;

    /* JADX INFO: compiled from: CategorizedWordDto.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CategorizedWordDto> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CategorizedWordDto createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new CategorizedWordDto(parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.createStringArrayList(), parcel.createStringArrayList(), parcel.createStringArrayList());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final CategorizedWordDto[] newArray(int i) {
            return new CategorizedWordDto[i];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CategorizedWordDto copy$default(CategorizedWordDto categorizedWordDto, long j, String str, String str2, Integer num, String str3, List list, List list2, List list3, int i, Object obj) {
        if ((i & 1) != 0) {
            j = categorizedWordDto.wordId;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            str = categorizedWordDto.word;
        }
        String str4 = str;
        if ((i & 4) != 0) {
            str2 = categorizedWordDto.meaning;
        }
        String str5 = str2;
        if ((i & 8) != 0) {
            num = categorizedWordDto.mostCommon;
        }
        return categorizedWordDto.copy(j2, str4, str5, num, (i & 16) != 0 ? categorizedWordDto.categories : str3, (i & 32) != 0 ? categorizedWordDto.subCategories : list, (i & 64) != 0 ? categorizedWordDto.cefrs : list2, (i & 128) != 0 ? categorizedWordDto.poses : list3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getWordId() {
        return this.wordId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getWord() {
        return this.word;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMeaning() {
        return this.meaning;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getMostCommon() {
        return this.mostCommon;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCategories() {
        return this.categories;
    }

    public final List<String> component6() {
        return this.subCategories;
    }

    public final List<String> component7() {
        return this.cefrs;
    }

    public final List<String> component8() {
        return this.poses;
    }

    public final CategorizedWordDto copy(long wordId, String word, String meaning, Integer mostCommon, String categories, List<String> subCategories, List<String> cefrs, List<String> poses) {
        Intrinsics.checkNotNullParameter(word, "word");
        return new CategorizedWordDto(wordId, word, meaning, mostCommon, categories, subCategories, cefrs, poses);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CategorizedWordDto)) {
            return false;
        }
        CategorizedWordDto categorizedWordDto = (CategorizedWordDto) other;
        return this.wordId == categorizedWordDto.wordId && Intrinsics.areEqual(this.word, categorizedWordDto.word) && Intrinsics.areEqual(this.meaning, categorizedWordDto.meaning) && Intrinsics.areEqual(this.mostCommon, categorizedWordDto.mostCommon) && Intrinsics.areEqual(this.categories, categorizedWordDto.categories) && Intrinsics.areEqual(this.subCategories, categorizedWordDto.subCategories) && Intrinsics.areEqual(this.cefrs, categorizedWordDto.cefrs) && Intrinsics.areEqual(this.poses, categorizedWordDto.poses);
    }

    public int hashCode() {
        int iHashCode = ((Long.hashCode(this.wordId) * 31) + this.word.hashCode()) * 31;
        String str = this.meaning;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.mostCommon;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.categories;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<String> list = this.subCategories;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        List<String> list2 = this.cefrs;
        int iHashCode6 = (iHashCode5 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<String> list3 = this.poses;
        return iHashCode6 + (list3 != null ? list3.hashCode() : 0);
    }

    public String toString() {
        return "CategorizedWordDto(wordId=" + this.wordId + ", word=" + this.word + ", meaning=" + this.meaning + ", mostCommon=" + this.mostCommon + ", categories=" + this.categories + ", subCategories=" + this.subCategories + ", cefrs=" + this.cefrs + ", poses=" + this.poses + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeLong(this.wordId);
        dest.writeString(this.word);
        dest.writeString(this.meaning);
        Integer num = this.mostCommon;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
        dest.writeString(this.categories);
        dest.writeStringList(this.subCategories);
        dest.writeStringList(this.cefrs);
        dest.writeStringList(this.poses);
    }

    public CategorizedWordDto(long j, String word, String str, Integer num, String str2, List<String> list, List<String> list2, List<String> list3) {
        Intrinsics.checkNotNullParameter(word, "word");
        this.wordId = j;
        this.word = word;
        this.meaning = str;
        this.mostCommon = num;
        this.categories = str2;
        this.subCategories = list;
        this.cefrs = list2;
        this.poses = list3;
    }

    public /* synthetic */ CategorizedWordDto(long j, String str, String str2, Integer num, String str3, List list, List list2, List list3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, str, str2, (i & 8) != 0 ? null : num, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : list, (i & 64) != 0 ? null : list2, (i & 128) != 0 ? null : list3);
    }

    public final long getWordId() {
        return this.wordId;
    }

    public final String getWord() {
        return this.word;
    }

    public final String getMeaning() {
        return this.meaning;
    }

    public final Integer getMostCommon() {
        return this.mostCommon;
    }

    public final String getCategories() {
        return this.categories;
    }

    public final List<String> getSubCategories() {
        return this.subCategories;
    }

    public final List<String> getCefrs() {
        return this.cefrs;
    }

    public final List<String> getPoses() {
        return this.poses;
    }
}
