package fast.dic.dict.domain.entity.pricing;

import android.os.Parcel;
import android.os.Parcelable;
import io.sentry.protocol.FeatureFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Price.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0087\b\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\u0010\u001a\u00020\u0011J\u0014\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0083\u0004J\n\u0010\u0016\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0003HÖ\u0081\u0004J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tÊ\u0001\u0002\b\u001f¨\u0006\u001e"}, d2 = {"Lfast/dic/dict/domain/entity/pricing/Price;", "Landroid/os/Parcelable;", "1", "", "6", "12", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "get1", "()Ljava/lang/String;", "get6", "get12", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", FeatureFlags.TYPE, "Companion", "app", "Lkotlinx/parcelize/Parcelize;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class Price implements Parcelable {
    private final String 1;
    private final String 12;
    private final String 6;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<Price> CREATOR = new Creator();

    /* JADX INFO: compiled from: Price.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<Price> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Price createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new Price(parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Price[] newArray(int i) {
            return new Price[i];
        }
    }

    public static /* synthetic */ Price copy$default(Price price, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = price.1;
        }
        if ((i & 2) != 0) {
            str2 = price.6;
        }
        if ((i & 4) != 0) {
            str3 = price.12;
        }
        return price.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String get1() {
        return this.1;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String get6() {
        return this.6;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String get12() {
        return this.12;
    }

    public final Price copy(String str, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "1");
        Intrinsics.checkNotNullParameter(str2, "6");
        Intrinsics.checkNotNullParameter(str3, "12");
        return new Price(str, str2, str3);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Price)) {
            return false;
        }
        Price price = (Price) other;
        return Intrinsics.areEqual(this.1, price.1) && Intrinsics.areEqual(this.6, price.6) && Intrinsics.areEqual(this.12, price.12);
    }

    public int hashCode() {
        return (((this.1.hashCode() * 31) + this.6.hashCode()) * 31) + this.12.hashCode();
    }

    public String toString() {
        return "Price(1=" + this.1 + ", 6=" + this.6 + ", 12=" + this.12 + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.1);
        dest.writeString(this.6);
        dest.writeString(this.12);
    }

    public Price(String str, String str2, String str3) {
        Intrinsics.checkNotNullParameter(str, "1");
        Intrinsics.checkNotNullParameter(str2, "6");
        Intrinsics.checkNotNullParameter(str3, "12");
        this.1 = str;
        this.6 = str2;
        this.12 = str3;
    }

    public final String get1() {
        return this.1;
    }

    public final String get6() {
        return this.6;
    }

    public final String get12() {
        return this.12;
    }

    /* JADX INFO: compiled from: Price.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/domain/entity/pricing/Price$Companion;", "", "<init>", "()V", "sample", "Lfast/dic/dict/domain/entity/pricing/Price;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Price sample() {
            return new Price("-", "-", "-");
        }
    }
}
