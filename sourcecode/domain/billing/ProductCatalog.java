package fast.dic.dict.domain.billing;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.ProductDetails;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BillingRepository.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u0015\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J5\u0010\u000e\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0004HÖ\u0081\u0004R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\n¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/domain/billing/ProductCatalog;", "", BillingClient.ProductType.INAPP, "", "", "Lcom/android/billingclient/api/ProductDetails;", BillingClient.ProductType.SUBS, "<init>", "(Ljava/util/Map;Ljava/util/Map;)V", "getInapp", "()Ljava/util/Map;", "getSubs", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class ProductCatalog {
    private final Map<String, ProductDetails> inapp;
    private final Map<String, ProductDetails> subs;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ProductCatalog copy$default(ProductCatalog productCatalog, Map map, Map map2, int i, Object obj) {
        if ((i & 1) != 0) {
            map = productCatalog.inapp;
        }
        if ((i & 2) != 0) {
            map2 = productCatalog.subs;
        }
        return productCatalog.copy(map, map2);
    }

    public final Map<String, ProductDetails> component1() {
        return this.inapp;
    }

    public final Map<String, ProductDetails> component2() {
        return this.subs;
    }

    public final ProductCatalog copy(Map<String, ProductDetails> inapp, Map<String, ProductDetails> subs) {
        Intrinsics.checkNotNullParameter(inapp, "inapp");
        Intrinsics.checkNotNullParameter(subs, "subs");
        return new ProductCatalog(inapp, subs);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ProductCatalog)) {
            return false;
        }
        ProductCatalog productCatalog = (ProductCatalog) other;
        return Intrinsics.areEqual(this.inapp, productCatalog.inapp) && Intrinsics.areEqual(this.subs, productCatalog.subs);
    }

    public int hashCode() {
        return (this.inapp.hashCode() * 31) + this.subs.hashCode();
    }

    public String toString() {
        return "ProductCatalog(inapp=" + this.inapp + ", subs=" + this.subs + ")";
    }

    public ProductCatalog(Map<String, ProductDetails> inapp, Map<String, ProductDetails> subs) {
        Intrinsics.checkNotNullParameter(inapp, "inapp");
        Intrinsics.checkNotNullParameter(subs, "subs");
        this.inapp = inapp;
        this.subs = subs;
    }

    public final Map<String, ProductDetails> getInapp() {
        return this.inapp;
    }

    public final Map<String, ProductDetails> getSubs() {
        return this.subs;
    }
}
