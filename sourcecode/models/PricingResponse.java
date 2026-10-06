package fast.dic.dict.models;

import com.ironsource.C4232z5;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PricingResponse.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0018\u001a\u00020\u0019HÖ\u0081\u0004J\n\u0010\u001a\u001a\u00020\u001bHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lfast/dic/dict/models/PricingResponse;", "", "plan0", "Lfast/dic/dict/models/Plan;", "plan1", "plan2", C4232z5.R, "Lfast/dic/dict/models/Table;", "<init>", "(Lfast/dic/dict/models/Plan;Lfast/dic/dict/models/Plan;Lfast/dic/dict/models/Plan;Lfast/dic/dict/models/Table;)V", "getPlan0", "()Lfast/dic/dict/models/Plan;", "getPlan1", "getPlan2", "getTable", "()Lfast/dic/dict/models/Table;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class PricingResponse {
    private final Plan plan0;
    private final Plan plan1;
    private final Plan plan2;
    private final Table table;

    public static /* synthetic */ PricingResponse copy$default(PricingResponse pricingResponse, Plan plan, Plan plan2, Plan plan3, Table table, int i, Object obj) {
        if ((i & 1) != 0) {
            plan = pricingResponse.plan0;
        }
        if ((i & 2) != 0) {
            plan2 = pricingResponse.plan1;
        }
        if ((i & 4) != 0) {
            plan3 = pricingResponse.plan2;
        }
        if ((i & 8) != 0) {
            table = pricingResponse.table;
        }
        return pricingResponse.copy(plan, plan2, plan3, table);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Plan getPlan0() {
        return this.plan0;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Plan getPlan1() {
        return this.plan1;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Plan getPlan2() {
        return this.plan2;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Table getTable() {
        return this.table;
    }

    public final PricingResponse copy(Plan plan0, Plan plan1, Plan plan2, Table table) {
        Intrinsics.checkNotNullParameter(plan0, "plan0");
        Intrinsics.checkNotNullParameter(plan1, "plan1");
        Intrinsics.checkNotNullParameter(plan2, "plan2");
        Intrinsics.checkNotNullParameter(table, "table");
        return new PricingResponse(plan0, plan1, plan2, table);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PricingResponse)) {
            return false;
        }
        PricingResponse pricingResponse = (PricingResponse) other;
        return Intrinsics.areEqual(this.plan0, pricingResponse.plan0) && Intrinsics.areEqual(this.plan1, pricingResponse.plan1) && Intrinsics.areEqual(this.plan2, pricingResponse.plan2) && Intrinsics.areEqual(this.table, pricingResponse.table);
    }

    public int hashCode() {
        return (((((this.plan0.hashCode() * 31) + this.plan1.hashCode()) * 31) + this.plan2.hashCode()) * 31) + this.table.hashCode();
    }

    public String toString() {
        return "PricingResponse(plan0=" + this.plan0 + ", plan1=" + this.plan1 + ", plan2=" + this.plan2 + ", table=" + this.table + ")";
    }

    public PricingResponse(Plan plan0, Plan plan1, Plan plan2, Table table) {
        Intrinsics.checkNotNullParameter(plan0, "plan0");
        Intrinsics.checkNotNullParameter(plan1, "plan1");
        Intrinsics.checkNotNullParameter(plan2, "plan2");
        Intrinsics.checkNotNullParameter(table, "table");
        this.plan0 = plan0;
        this.plan1 = plan1;
        this.plan2 = plan2;
        this.table = table;
    }

    public final Plan getPlan0() {
        return this.plan0;
    }

    public final Plan getPlan1() {
        return this.plan1;
    }

    public final Plan getPlan2() {
        return this.plan2;
    }

    public final Table getTable() {
        return this.table;
    }
}
