package fast.dic.dict.models;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PricingResponse.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J)\u0010\r\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/models/Table;", "", "one", "", "Lfast/dic/dict/models/Feature;", "two", "<init>", "(Ljava/util/List;Ljava/util/List;)V", "getOne", "()Ljava/util/List;", "getTwo", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class Table {
    private final List<Feature> one;
    private final List<Feature> two;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Table copy$default(Table table, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = table.one;
        }
        if ((i & 2) != 0) {
            list2 = table.two;
        }
        return table.copy(list, list2);
    }

    public final List<Feature> component1() {
        return this.one;
    }

    public final List<Feature> component2() {
        return this.two;
    }

    public final Table copy(List<Feature> one, List<Feature> two) {
        Intrinsics.checkNotNullParameter(one, "one");
        Intrinsics.checkNotNullParameter(two, "two");
        return new Table(one, two);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Table)) {
            return false;
        }
        Table table = (Table) other;
        return Intrinsics.areEqual(this.one, table.one) && Intrinsics.areEqual(this.two, table.two);
    }

    public int hashCode() {
        return (this.one.hashCode() * 31) + this.two.hashCode();
    }

    public String toString() {
        return "Table(one=" + this.one + ", two=" + this.two + ")";
    }

    public Table(List<Feature> one, List<Feature> two) {
        Intrinsics.checkNotNullParameter(one, "one");
        Intrinsics.checkNotNullParameter(two, "two");
        this.one = one;
        this.two = two;
    }

    public final List<Feature> getOne() {
        return this.one;
    }

    public final List<Feature> getTwo() {
        return this.two;
    }
}
