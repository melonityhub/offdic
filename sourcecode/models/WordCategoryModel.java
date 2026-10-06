package fast.dic.dict.models;

import android.os.Parcel;
import android.os.Parcelable;
import io.sentry.protocol.FeatureFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WordCategoryModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b'\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bk\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010)\u001a\u00020\nHÆ\u0003J\t\u0010*\u001a\u00020\nHÆ\u0003J\t\u0010+\u001a\u00020\nHÆ\u0003J\t\u0010,\u001a\u00020\nHÆ\u0003Jr\u0010-\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\nHÆ\u0001¢\u0006\u0002\u0010.J\u0006\u0010/\u001a\u00020\u0003J\u0014\u00100\u001a\u00020\n2\b\u00101\u001a\u0004\u0018\u000102HÖ\u0083\u0004J\n\u00103\u001a\u00020\u0003HÖ\u0081\u0004J\n\u00104\u001a\u00020\u0005HÖ\u0081\u0004J\u0016\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0016\"\u0004\b\u001a\u0010\u0018R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u001b\u0010\u0011\"\u0004\b\u001c\u0010\u0013R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u001f\"\u0004\b\"\u0010!R\u001a\u0010\f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u001f\"\u0004\b\u001e\u0010!R\u001a\u0010\r\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u001f\"\u0004\b#\u0010!Ê\u0001\u0002\b;¨\u0006:"}, d2 = {"Lfast/dic/dict/models/WordCategoryModel;", "Landroid/os/Parcelable;", "count", "", "name", "", "icon", "id", "cefr", "isWod", "", "isPos", "isCefr", "isEllipsize", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZ)V", "getCount", "()Ljava/lang/Integer;", "setCount", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getIcon", "setIcon", "getId", "setId", "getCefr", "setCefr", "()Z", "setWod", "(Z)V", "setPos", "setEllipsize", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZ)Lfast/dic/dict/models/WordCategoryModel;", "describeContents", "equals", "other", "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", FeatureFlags.TYPE, "app", "Lkotlinx/parcelize/Parcelize;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class WordCategoryModel implements Parcelable {
    public static final Parcelable.Creator<WordCategoryModel> CREATOR = new Creator();
    private String cefr;
    private Integer count;
    private String icon;
    private Integer id;
    private boolean isCefr;
    private boolean isEllipsize;
    private boolean isPos;
    private boolean isWod;
    private String name;

    /* JADX INFO: compiled from: WordCategoryModel.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<WordCategoryModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final WordCategoryModel createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string = parcel.readString();
            String string2 = parcel.readString();
            Integer numValueOf2 = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            String string3 = parcel.readString();
            boolean z = true;
            boolean z2 = false;
            if (parcel.readInt() == 0) {
                z = false;
            }
            if (parcel.readInt() != 0) {
                z2 = true;
            }
            if (parcel.readInt() != 0) {
                z2 = z;
            }
            return new WordCategoryModel(numValueOf, string, string2, numValueOf2, string3, z, z2, z2, parcel.readInt() != 0 ? z : false);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final WordCategoryModel[] newArray(int i) {
            return new WordCategoryModel[i];
        }
    }

    public WordCategoryModel() {
        this(null, null, null, null, null, false, false, false, false, 511, null);
    }

    public static /* synthetic */ WordCategoryModel copy$default(WordCategoryModel wordCategoryModel, Integer num, String str, String str2, Integer num2, String str3, boolean z, boolean z2, boolean z3, boolean z4, int i, Object obj) {
        if ((i & 1) != 0) {
            num = wordCategoryModel.count;
        }
        if ((i & 2) != 0) {
            str = wordCategoryModel.name;
        }
        if ((i & 4) != 0) {
            str2 = wordCategoryModel.icon;
        }
        if ((i & 8) != 0) {
            num2 = wordCategoryModel.id;
        }
        if ((i & 16) != 0) {
            str3 = wordCategoryModel.cefr;
        }
        if ((i & 32) != 0) {
            z = wordCategoryModel.isWod;
        }
        if ((i & 64) != 0) {
            z2 = wordCategoryModel.isPos;
        }
        if ((i & 128) != 0) {
            z3 = wordCategoryModel.isCefr;
        }
        if ((i & 256) != 0) {
            z4 = wordCategoryModel.isEllipsize;
        }
        boolean z5 = z3;
        boolean z6 = z4;
        boolean z7 = z;
        boolean z8 = z2;
        String str4 = str3;
        String str5 = str2;
        return wordCategoryModel.copy(num, str, str5, num2, str4, z7, z8, z5, z6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getCount() {
        return this.count;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCefr() {
        return this.cefr;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getIsWod() {
        return this.isWod;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getIsPos() {
        return this.isPos;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getIsCefr() {
        return this.isCefr;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getIsEllipsize() {
        return this.isEllipsize;
    }

    public final WordCategoryModel copy(Integer count, String name, String icon, Integer id, String cefr, boolean isWod, boolean isPos, boolean isCefr, boolean isEllipsize) {
        return new WordCategoryModel(count, name, icon, id, cefr, isWod, isPos, isCefr, isEllipsize);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WordCategoryModel)) {
            return false;
        }
        WordCategoryModel wordCategoryModel = (WordCategoryModel) other;
        return Intrinsics.areEqual(this.count, wordCategoryModel.count) && Intrinsics.areEqual(this.name, wordCategoryModel.name) && Intrinsics.areEqual(this.icon, wordCategoryModel.icon) && Intrinsics.areEqual(this.id, wordCategoryModel.id) && Intrinsics.areEqual(this.cefr, wordCategoryModel.cefr) && this.isWod == wordCategoryModel.isWod && this.isPos == wordCategoryModel.isPos && this.isCefr == wordCategoryModel.isCefr && this.isEllipsize == wordCategoryModel.isEllipsize;
    }

    public int hashCode() {
        Integer num = this.count;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.icon;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num2 = this.id;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str3 = this.cefr;
        return ((((((((iHashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31) + Boolean.hashCode(this.isWod)) * 31) + Boolean.hashCode(this.isPos)) * 31) + Boolean.hashCode(this.isCefr)) * 31) + Boolean.hashCode(this.isEllipsize);
    }

    public String toString() {
        return "WordCategoryModel(count=" + this.count + ", name=" + this.name + ", icon=" + this.icon + ", id=" + this.id + ", cefr=" + this.cefr + ", isWod=" + this.isWod + ", isPos=" + this.isPos + ", isCefr=" + this.isCefr + ", isEllipsize=" + this.isEllipsize + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        Integer num = this.count;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.name);
        dest.writeString(this.icon);
        Integer num2 = this.id;
        if (num2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num2.intValue());
        }
        dest.writeString(this.cefr);
        dest.writeInt(this.isWod ? 1 : 0);
        dest.writeInt(this.isPos ? 1 : 0);
        dest.writeInt(this.isCefr ? 1 : 0);
        dest.writeInt(this.isEllipsize ? 1 : 0);
    }

    public WordCategoryModel(Integer num, String str, String str2, Integer num2, String str3, boolean z, boolean z2, boolean z3, boolean z4) {
        this.count = num;
        this.name = str;
        this.icon = str2;
        this.id = num2;
        this.cefr = str3;
        this.isWod = z;
        this.isPos = z2;
        this.isCefr = z3;
        this.isEllipsize = z4;
    }

    public /* synthetic */ WordCategoryModel(Integer num, String str, String str2, Integer num2, String str3, boolean z, boolean z2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : num2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? false : z, (i & 64) != 0 ? false : z2, (i & 128) != 0 ? false : z3, (i & 256) != 0 ? false : z4);
    }

    public final Integer getCount() {
        return this.count;
    }

    public final void setCount(Integer num) {
        this.count = num;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final void setIcon(String str) {
        this.icon = str;
    }

    public final Integer getId() {
        return this.id;
    }

    public final void setId(Integer num) {
        this.id = num;
    }

    public final String getCefr() {
        return this.cefr;
    }

    public final void setCefr(String str) {
        this.cefr = str;
    }

    public final boolean isWod() {
        return this.isWod;
    }

    public final void setWod(boolean z) {
        this.isWod = z;
    }

    public final boolean isPos() {
        return this.isPos;
    }

    public final void setPos(boolean z) {
        this.isPos = z;
    }

    public final boolean isCefr() {
        return this.isCefr;
    }

    public final void setCefr(boolean z) {
        this.isCefr = z;
    }

    public final boolean isEllipsize() {
        return this.isEllipsize;
    }

    public final void setEllipsize(boolean z) {
        this.isEllipsize = z;
    }
}
