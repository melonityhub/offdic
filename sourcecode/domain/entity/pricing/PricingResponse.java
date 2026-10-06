package fast.dic.dict.domain.entity.pricing;

import com.ironsource.C4232z5;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PricingResponse.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0018HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0019"}, d2 = {"Lfast/dic/dict/domain/entity/pricing/PricingResponse;", "", "plan2", "Lfast/dic/dict/domain/entity/pricing/Plan;", "plan3", C4232z5.R, "Lfast/dic/dict/domain/entity/pricing/Table;", "<init>", "(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/domain/entity/pricing/Table;)V", "getPlan2", "()Lfast/dic/dict/domain/entity/pricing/Plan;", "getPlan3", "getTable", "()Lfast/dic/dict/domain/entity/pricing/Table;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class PricingResponse {
    private final Plan plan2;
    private final Plan plan3;
    private final Table table;

    public static /* synthetic */ PricingResponse copy$default(PricingResponse pricingResponse, Plan plan, Plan plan2, Table table, int i, Object obj) {
        if ((i & 1) != 0) {
            plan = pricingResponse.plan2;
        }
        if ((i & 2) != 0) {
            plan2 = pricingResponse.plan3;
        }
        if ((i & 4) != 0) {
            table = pricingResponse.table;
        }
        return pricingResponse.copy(plan, plan2, table);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Plan getPlan2() {
        return this.plan2;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Plan getPlan3() {
        return this.plan3;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Table getTable() {
        return this.table;
    }

    public final PricingResponse copy(Plan plan2, Plan plan3, Table table) {
        Intrinsics.checkNotNullParameter(plan2, "plan2");
        Intrinsics.checkNotNullParameter(plan3, "plan3");
        Intrinsics.checkNotNullParameter(table, "table");
        return new PricingResponse(plan2, plan3, table);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PricingResponse)) {
            return false;
        }
        PricingResponse pricingResponse = (PricingResponse) other;
        return Intrinsics.areEqual(this.plan2, pricingResponse.plan2) && Intrinsics.areEqual(this.plan3, pricingResponse.plan3) && Intrinsics.areEqual(this.table, pricingResponse.table);
    }

    public int hashCode() {
        return (((this.plan2.hashCode() * 31) + this.plan3.hashCode()) * 31) + this.table.hashCode();
    }

    public String toString() {
        return "PricingResponse(plan2=" + this.plan2 + ", plan3=" + this.plan3 + ", table=" + this.table + ")";
    }

    public PricingResponse(Plan plan2, Plan plan3, Table table) {
        Intrinsics.checkNotNullParameter(plan2, "plan2");
        Intrinsics.checkNotNullParameter(plan3, "plan3");
        Intrinsics.checkNotNullParameter(table, "table");
        this.plan2 = plan2;
        this.plan3 = plan3;
        this.table = table;
    }

    public final Plan getPlan2() {
        return this.plan2;
    }

    public final Plan getPlan3() {
        return this.plan3;
    }

    public final Table getTable() {
        return this.table;
    }
}
