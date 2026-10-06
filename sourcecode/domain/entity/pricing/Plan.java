package fast.dic.dict.domain.entity.pricing;

import android.os.Parcel;
import android.os.Parcelable;
import io.sentry.protocol.FeatureFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Plan.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0087\b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0014\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0010HÖ\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0005HÖ\u0081\u0004J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bÊ\u0001\u0002\b\u001e¨\u0006\u001d"}, d2 = {"Lfast/dic/dict/domain/entity/pricing/Plan;", "Landroid/os/Parcelable;", "price", "Lfast/dic/dict/domain/entity/pricing/Price;", "title", "", "<init>", "(Lfast/dic/dict/domain/entity/pricing/Price;Ljava/lang/String;)V", "getPrice", "()Lfast/dic/dict/domain/entity/pricing/Price;", "getTitle", "()Ljava/lang/String;", "component1", "component2", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", FeatureFlags.TYPE, "Companion", "app", "Lkotlinx/parcelize/Parcelize;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class Plan implements Parcelable {
    private final Price price;
    private final String title;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Parcelable.Creator<Plan> CREATOR = new Creator();

    /* JADX INFO: compiled from: Plan.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<Plan> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Plan createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new Plan(Price.CREATOR.createFromParcel(parcel), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Plan[] newArray(int i) {
            return new Plan[i];
        }
    }

    public static /* synthetic */ Plan copy$default(Plan plan, Price price, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            price = plan.price;
        }
        if ((i & 2) != 0) {
            str = plan.title;
        }
        return plan.copy(price, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Price getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    public final Plan copy(Price price, String title) {
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(title, "title");
        return new Plan(price, title);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Plan)) {
            return false;
        }
        Plan plan = (Plan) other;
        return Intrinsics.areEqual(this.price, plan.price) && Intrinsics.areEqual(this.title, plan.title);
    }

    public int hashCode() {
        return (this.price.hashCode() * 31) + this.title.hashCode();
    }

    public String toString() {
        return "Plan(price=" + this.price + ", title=" + this.title + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        this.price.writeToParcel(dest, flags);
        dest.writeString(this.title);
    }

    public Plan(Price price, String title) {
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(title, "title");
        this.price = price;
        this.title = title;
    }

    public final Price getPrice() {
        return this.price;
    }

    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: compiled from: Plan.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/domain/entity/pricing/Plan$Companion;", "", "<init>", "()V", "sample", "Lfast/dic/dict/domain/entity/pricing/Plan;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Plan sample() {
            return new Plan(Price.INSTANCE.sample(), "-");
        }
    }
}
