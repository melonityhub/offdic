package fast.dic.dict.domain.billing;

import ir.cafebazaar.poolakey.constant.RawJson;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BillingRepository.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0014\u0010\u0018\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001a\u001a\u00020\u001bHÖ\u0081\u0004J\n\u0010\u001c\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u000fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001d"}, d2 = {"Lfast/dic/dict/domain/billing/PurchasedItem;", "", "productId", "", RawJson.PURCHASE_TOKEN, "isAcknowledged", "", "isAutoRenewing", RawJson.PURCHASE_TIME, "", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZJ)V", "getProductId", "()Ljava/lang/String;", "getPurchaseToken", "()Z", "getPurchaseTime", "()J", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class PurchasedItem {
    private final boolean isAcknowledged;
    private final boolean isAutoRenewing;
    private final String productId;
    private final long purchaseTime;
    private final String purchaseToken;

    public static /* synthetic */ PurchasedItem copy$default(PurchasedItem purchasedItem, String str, String str2, boolean z, boolean z2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = purchasedItem.productId;
        }
        if ((i & 2) != 0) {
            str2 = purchasedItem.purchaseToken;
        }
        if ((i & 4) != 0) {
            z = purchasedItem.isAcknowledged;
        }
        if ((i & 8) != 0) {
            z2 = purchasedItem.isAutoRenewing;
        }
        if ((i & 16) != 0) {
            j = purchasedItem.purchaseTime;
        }
        long j2 = j;
        return purchasedItem.copy(str, str2, z, z2, j2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProductId() {
        return this.productId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsAcknowledged() {
        return this.isAcknowledged;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIsAutoRenewing() {
        return this.isAutoRenewing;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final long getPurchaseTime() {
        return this.purchaseTime;
    }

    public final PurchasedItem copy(String productId, String purchaseToken, boolean isAcknowledged, boolean isAutoRenewing, long purchaseTime) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        return new PurchasedItem(productId, purchaseToken, isAcknowledged, isAutoRenewing, purchaseTime);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurchasedItem)) {
            return false;
        }
        PurchasedItem purchasedItem = (PurchasedItem) other;
        return Intrinsics.areEqual(this.productId, purchasedItem.productId) && Intrinsics.areEqual(this.purchaseToken, purchasedItem.purchaseToken) && this.isAcknowledged == purchasedItem.isAcknowledged && this.isAutoRenewing == purchasedItem.isAutoRenewing && this.purchaseTime == purchasedItem.purchaseTime;
    }

    public int hashCode() {
        return (((((((this.productId.hashCode() * 31) + this.purchaseToken.hashCode()) * 31) + Boolean.hashCode(this.isAcknowledged)) * 31) + Boolean.hashCode(this.isAutoRenewing)) * 31) + Long.hashCode(this.purchaseTime);
    }

    public String toString() {
        return "PurchasedItem(productId=" + this.productId + ", purchaseToken=" + this.purchaseToken + ", isAcknowledged=" + this.isAcknowledged + ", isAutoRenewing=" + this.isAutoRenewing + ", purchaseTime=" + this.purchaseTime + ")";
    }

    public PurchasedItem(String productId, String purchaseToken, boolean z, boolean z2, long j) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        this.productId = productId;
        this.purchaseToken = purchaseToken;
        this.isAcknowledged = z;
        this.isAutoRenewing = z2;
        this.purchaseTime = j;
    }

    public final String getProductId() {
        return this.productId;
    }

    public final String getPurchaseToken() {
        return this.purchaseToken;
    }

    public final boolean isAcknowledged() {
        return this.isAcknowledged;
    }

    public final boolean isAutoRenewing() {
        return this.isAutoRenewing;
    }

    public final long getPurchaseTime() {
        return this.purchaseTime;
    }
}
