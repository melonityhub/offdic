package fast.dic.dict.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PricingResponse.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001a\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0001\u0012\u0006\u0010\b\u001a\u00020\u0001\u0012\u0006\u0010\t\u001a\u00020\u0001\u0012\u0006\u0010\n\u001a\u00020\u0001¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0001HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0001HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0001HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0001HÆ\u0003JQ\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00012\b\b\u0002\u0010\b\u001a\u00020\u00012\b\b\u0002\u0010\t\u001a\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u0001HÆ\u0001J\u0014\u0010\u001e\u001a\u00020\u00062\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010 \u001a\u00020!HÖ\u0081\u0004J\n\u0010\"\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\b\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012¨\u0006#"}, d2 = {"Lfast/dic/dict/models/Feature;", "", "title", "", "subtitle", "isHeader", "", "plan0", "plan1", "plan2", "plan3", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "getTitle", "()Ljava/lang/String;", "getSubtitle", "()Z", "getPlan0", "()Ljava/lang/Object;", "getPlan1", "getPlan2", "getPlan3", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class Feature {
    private final boolean isHeader;
    private final Object plan0;
    private final Object plan1;
    private final Object plan2;
    private final Object plan3;
    private final String subtitle;
    private final String title;

    public static /* synthetic */ Feature copy$default(Feature feature, String str, String str2, boolean z, Object obj, Object obj2, Object obj3, Object obj4, int i, Object obj5) {
        if ((i & 1) != 0) {
            str = feature.title;
        }
        if ((i & 2) != 0) {
            str2 = feature.subtitle;
        }
        if ((i & 4) != 0) {
            z = feature.isHeader;
        }
        if ((i & 8) != 0) {
            obj = feature.plan0;
        }
        if ((i & 16) != 0) {
            obj2 = feature.plan1;
        }
        if ((i & 32) != 0) {
            obj3 = feature.plan2;
        }
        if ((i & 64) != 0) {
            obj4 = feature.plan3;
        }
        Object obj6 = obj3;
        Object obj7 = obj4;
        Object obj8 = obj2;
        boolean z2 = z;
        return feature.copy(str, str2, z2, obj, obj8, obj6, obj7);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSubtitle() {
        return this.subtitle;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsHeader() {
        return this.isHeader;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Object getPlan0() {
        return this.plan0;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Object getPlan1() {
        return this.plan1;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Object getPlan2() {
        return this.plan2;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Object getPlan3() {
        return this.plan3;
    }

    public final Feature copy(String title, String subtitle, boolean isHeader, Object plan0, Object plan1, Object plan2, Object plan3) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(plan0, "plan0");
        Intrinsics.checkNotNullParameter(plan1, "plan1");
        Intrinsics.checkNotNullParameter(plan2, "plan2");
        Intrinsics.checkNotNullParameter(plan3, "plan3");
        return new Feature(title, subtitle, isHeader, plan0, plan1, plan2, plan3);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Feature)) {
            return false;
        }
        Feature feature = (Feature) other;
        return Intrinsics.areEqual(this.title, feature.title) && Intrinsics.areEqual(this.subtitle, feature.subtitle) && this.isHeader == feature.isHeader && Intrinsics.areEqual(this.plan0, feature.plan0) && Intrinsics.areEqual(this.plan1, feature.plan1) && Intrinsics.areEqual(this.plan2, feature.plan2) && Intrinsics.areEqual(this.plan3, feature.plan3);
    }

    public int hashCode() {
        int iHashCode = this.title.hashCode() * 31;
        String str = this.subtitle;
        return ((((((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Boolean.hashCode(this.isHeader)) * 31) + this.plan0.hashCode()) * 31) + this.plan1.hashCode()) * 31) + this.plan2.hashCode()) * 31) + this.plan3.hashCode();
    }

    public String toString() {
        return "Feature(title=" + this.title + ", subtitle=" + this.subtitle + ", isHeader=" + this.isHeader + ", plan0=" + this.plan0 + ", plan1=" + this.plan1 + ", plan2=" + this.plan2 + ", plan3=" + this.plan3 + ")";
    }

    public Feature(String title, String str, boolean z, Object plan0, Object plan1, Object plan2, Object plan3) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(plan0, "plan0");
        Intrinsics.checkNotNullParameter(plan1, "plan1");
        Intrinsics.checkNotNullParameter(plan2, "plan2");
        Intrinsics.checkNotNullParameter(plan3, "plan3");
        this.title = title;
        this.subtitle = str;
        this.isHeader = z;
        this.plan0 = plan0;
        this.plan1 = plan1;
        this.plan2 = plan2;
        this.plan3 = plan3;
    }

    public /* synthetic */ Feature(String str, String str2, boolean z, Object obj, Object obj2, Object obj3, Object obj4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? false : z, obj, obj2, obj3, obj4);
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getSubtitle() {
        return this.subtitle;
    }

    public final boolean isHeader() {
        return this.isHeader;
    }

    public final Object getPlan0() {
        return this.plan0;
    }

    public final Object getPlan1() {
        return this.plan1;
    }

    public final Object getPlan2() {
        return this.plan2;
    }

    public final Object getPlan3() {
        return this.plan3;
    }
}
