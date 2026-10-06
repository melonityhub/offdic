package fast.dic.dict.models;

import android.os.Parcel;
import android.os.Parcelable;
import io.sentry.protocol.FeatureFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PricingResponse.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J3\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0006\u0010\u0013\u001a\u00020\u0014J\u0014\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0083\u0004J\n\u0010\u0019\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u001a\u001a\u00020\u0003HÖ\u0081\u0004J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0014R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nÊ\u0001\u0002\b!¨\u0006 "}, d2 = {"Lfast/dic/dict/models/Plan;", "Landroid/os/Parcelable;", "price", "", "title", "subtitle", "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getPrice", "()Ljava/lang/String;", "getTitle", "getSubtitle", "getDescription", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", FeatureFlags.TYPE, "app", "Lkotlinx/parcelize/Parcelize;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class Plan implements Parcelable {
    public static final Parcelable.Creator<Plan> CREATOR = new Creator();
    private final String description;
    private final String price;
    private final String subtitle;
    private final String title;

    /* JADX INFO: compiled from: PricingResponse.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<Plan> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Plan createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new Plan(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Plan[] newArray(int i) {
            return new Plan[i];
        }
    }

    public static /* synthetic */ Plan copy$default(Plan plan, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = plan.price;
        }
        if ((i & 2) != 0) {
            str2 = plan.title;
        }
        if ((i & 4) != 0) {
            str3 = plan.subtitle;
        }
        if ((i & 8) != 0) {
            str4 = plan.description;
        }
        return plan.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSubtitle() {
        return this.subtitle;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    public final Plan copy(String price, String title, String subtitle, String description) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        Intrinsics.checkNotNullParameter(description, "description");
        return new Plan(price, title, subtitle, description);
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
        return Intrinsics.areEqual(this.price, plan.price) && Intrinsics.areEqual(this.title, plan.title) && Intrinsics.areEqual(this.subtitle, plan.subtitle) && Intrinsics.areEqual(this.description, plan.description);
    }

    public int hashCode() {
        String str = this.price;
        return ((((((str == null ? 0 : str.hashCode()) * 31) + this.title.hashCode()) * 31) + this.subtitle.hashCode()) * 31) + this.description.hashCode();
    }

    public String toString() {
        return "Plan(price=" + this.price + ", title=" + this.title + ", subtitle=" + this.subtitle + ", description=" + this.description + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.price);
        dest.writeString(this.title);
        dest.writeString(this.subtitle);
        dest.writeString(this.description);
    }

    public Plan(String str, String title, String subtitle, String description) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        Intrinsics.checkNotNullParameter(description, "description");
        this.price = str;
        this.title = title;
        this.subtitle = subtitle;
        this.description = description;
    }

    public final String getPrice() {
        return this.price;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getSubtitle() {
        return this.subtitle;
    }

    public final String getDescription() {
        return this.description;
    }
}
