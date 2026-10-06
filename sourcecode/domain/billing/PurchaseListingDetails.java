package fast.dic.dict.domain.billing;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchaseListing.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\\\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0002\u0010!J\u0014\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010%\u001a\u00020&HÖ\u0081\u0004J\n\u0010'\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006("}, d2 = {"Lfast/dic/dict/domain/billing/PurchaseListingDetails;", "", "productId", "", "title", "description", "formattedPrice", "priceAmountMicros", "", "priceCurrencyCode", FirebaseAnalytics.Param.SUBSCRIPTION, "Lfast/dic/dict/domain/billing/SubscriptionInfo;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lfast/dic/dict/domain/billing/SubscriptionInfo;)V", "getProductId", "()Ljava/lang/String;", "getTitle", "getDescription", "getFormattedPrice", "getPriceAmountMicros", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getPriceCurrencyCode", "getSubscription", "()Lfast/dic/dict/domain/billing/SubscriptionInfo;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lfast/dic/dict/domain/billing/SubscriptionInfo;)Lfast/dic/dict/domain/billing/PurchaseListingDetails;", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class PurchaseListingDetails {
    private final String description;
    private final String formattedPrice;
    private final Long priceAmountMicros;
    private final String priceCurrencyCode;
    private final String productId;
    private final SubscriptionInfo subscription;
    private final String title;

    public static /* synthetic */ PurchaseListingDetails copy$default(PurchaseListingDetails purchaseListingDetails, String str, String str2, String str3, String str4, Long l, String str5, SubscriptionInfo subscriptionInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            str = purchaseListingDetails.productId;
        }
        if ((i & 2) != 0) {
            str2 = purchaseListingDetails.title;
        }
        if ((i & 4) != 0) {
            str3 = purchaseListingDetails.description;
        }
        if ((i & 8) != 0) {
            str4 = purchaseListingDetails.formattedPrice;
        }
        if ((i & 16) != 0) {
            l = purchaseListingDetails.priceAmountMicros;
        }
        if ((i & 32) != 0) {
            str5 = purchaseListingDetails.priceCurrencyCode;
        }
        if ((i & 64) != 0) {
            subscriptionInfo = purchaseListingDetails.subscription;
        }
        String str6 = str5;
        SubscriptionInfo subscriptionInfo2 = subscriptionInfo;
        Long l2 = l;
        String str7 = str3;
        return purchaseListingDetails.copy(str, str2, str7, str4, l2, str6, subscriptionInfo2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProductId() {
        return this.productId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getFormattedPrice() {
        return this.formattedPrice;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getPriceAmountMicros() {
        return this.priceAmountMicros;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getPriceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final SubscriptionInfo getSubscription() {
        return this.subscription;
    }

    public final PurchaseListingDetails copy(String productId, String title, String description, String formattedPrice, Long priceAmountMicros, String priceCurrencyCode, SubscriptionInfo subscription) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        return new PurchaseListingDetails(productId, title, description, formattedPrice, priceAmountMicros, priceCurrencyCode, subscription);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurchaseListingDetails)) {
            return false;
        }
        PurchaseListingDetails purchaseListingDetails = (PurchaseListingDetails) other;
        return Intrinsics.areEqual(this.productId, purchaseListingDetails.productId) && Intrinsics.areEqual(this.title, purchaseListingDetails.title) && Intrinsics.areEqual(this.description, purchaseListingDetails.description) && Intrinsics.areEqual(this.formattedPrice, purchaseListingDetails.formattedPrice) && Intrinsics.areEqual(this.priceAmountMicros, purchaseListingDetails.priceAmountMicros) && Intrinsics.areEqual(this.priceCurrencyCode, purchaseListingDetails.priceCurrencyCode) && Intrinsics.areEqual(this.subscription, purchaseListingDetails.subscription);
    }

    public int hashCode() {
        int iHashCode = ((((this.productId.hashCode() * 31) + this.title.hashCode()) * 31) + this.description.hashCode()) * 31;
        String str = this.formattedPrice;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.priceAmountMicros;
        int iHashCode3 = (iHashCode2 + (l == null ? 0 : l.hashCode())) * 31;
        String str2 = this.priceCurrencyCode;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        SubscriptionInfo subscriptionInfo = this.subscription;
        return iHashCode4 + (subscriptionInfo != null ? subscriptionInfo.hashCode() : 0);
    }

    public String toString() {
        return "PurchaseListingDetails(productId=" + this.productId + ", title=" + this.title + ", description=" + this.description + ", formattedPrice=" + this.formattedPrice + ", priceAmountMicros=" + this.priceAmountMicros + ", priceCurrencyCode=" + this.priceCurrencyCode + ", subscription=" + this.subscription + ")";
    }

    public PurchaseListingDetails(String productId, String title, String description, String str, Long l, String str2, SubscriptionInfo subscriptionInfo) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        this.productId = productId;
        this.title = title;
        this.description = description;
        this.formattedPrice = str;
        this.priceAmountMicros = l;
        this.priceCurrencyCode = str2;
        this.subscription = subscriptionInfo;
    }

    public /* synthetic */ PurchaseListingDetails(String str, String str2, String str3, String str4, Long l, String str5, SubscriptionInfo subscriptionInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, l, str5, (i & 64) != 0 ? null : subscriptionInfo);
    }

    public final String getProductId() {
        return this.productId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getFormattedPrice() {
        return this.formattedPrice;
    }

    public final Long getPriceAmountMicros() {
        return this.priceAmountMicros;
    }

    public final String getPriceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    public final SubscriptionInfo getSubscription() {
        return this.subscription;
    }
}
