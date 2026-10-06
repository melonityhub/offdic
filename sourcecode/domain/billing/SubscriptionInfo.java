package fast.dic.dict.domain.billing;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchaseListing.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000eJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0015J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\fHÆ\u0003Jn\u0010#\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010$J\u0014\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010(\u001a\u00020)HÖ\u0081\u0004J\n\u0010*\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006+"}, d2 = {"Lfast/dic/dict/domain/billing/SubscriptionInfo;", "", "basePlanId", "", "offerToken", "billingPeriod", "formattedPrice", "priceAmountMicros", "", "priceCurrencyCode", "freeTrialBillingPeriod", "introPricing", "Lfast/dic/dict/domain/billing/IntroPriceInfo;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/domain/billing/IntroPriceInfo;)V", "getBasePlanId", "()Ljava/lang/String;", "getOfferToken", "getBillingPeriod", "getFormattedPrice", "getPriceAmountMicros", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getPriceCurrencyCode", "getFreeTrialBillingPeriod", "getIntroPricing", "()Lfast/dic/dict/domain/billing/IntroPriceInfo;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/domain/billing/IntroPriceInfo;)Lfast/dic/dict/domain/billing/SubscriptionInfo;", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class SubscriptionInfo {
    private final String basePlanId;
    private final String billingPeriod;
    private final String formattedPrice;
    private final String freeTrialBillingPeriod;
    private final IntroPriceInfo introPricing;
    private final String offerToken;
    private final Long priceAmountMicros;
    private final String priceCurrencyCode;

    public static /* synthetic */ SubscriptionInfo copy$default(SubscriptionInfo subscriptionInfo, String str, String str2, String str3, String str4, Long l, String str5, String str6, IntroPriceInfo introPriceInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            str = subscriptionInfo.basePlanId;
        }
        if ((i & 2) != 0) {
            str2 = subscriptionInfo.offerToken;
        }
        if ((i & 4) != 0) {
            str3 = subscriptionInfo.billingPeriod;
        }
        if ((i & 8) != 0) {
            str4 = subscriptionInfo.formattedPrice;
        }
        if ((i & 16) != 0) {
            l = subscriptionInfo.priceAmountMicros;
        }
        if ((i & 32) != 0) {
            str5 = subscriptionInfo.priceCurrencyCode;
        }
        if ((i & 64) != 0) {
            str6 = subscriptionInfo.freeTrialBillingPeriod;
        }
        if ((i & 128) != 0) {
            introPriceInfo = subscriptionInfo.introPricing;
        }
        String str7 = str6;
        IntroPriceInfo introPriceInfo2 = introPriceInfo;
        Long l2 = l;
        String str8 = str5;
        return subscriptionInfo.copy(str, str2, str3, str4, l2, str8, str7, introPriceInfo2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getBasePlanId() {
        return this.basePlanId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getOfferToken() {
        return this.offerToken;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getBillingPeriod() {
        return this.billingPeriod;
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
    public final String getFreeTrialBillingPeriod() {
        return this.freeTrialBillingPeriod;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final IntroPriceInfo getIntroPricing() {
        return this.introPricing;
    }

    public final SubscriptionInfo copy(String basePlanId, String offerToken, String billingPeriod, String formattedPrice, Long priceAmountMicros, String priceCurrencyCode, String freeTrialBillingPeriod, IntroPriceInfo introPricing) {
        return new SubscriptionInfo(basePlanId, offerToken, billingPeriod, formattedPrice, priceAmountMicros, priceCurrencyCode, freeTrialBillingPeriod, introPricing);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubscriptionInfo)) {
            return false;
        }
        SubscriptionInfo subscriptionInfo = (SubscriptionInfo) other;
        return Intrinsics.areEqual(this.basePlanId, subscriptionInfo.basePlanId) && Intrinsics.areEqual(this.offerToken, subscriptionInfo.offerToken) && Intrinsics.areEqual(this.billingPeriod, subscriptionInfo.billingPeriod) && Intrinsics.areEqual(this.formattedPrice, subscriptionInfo.formattedPrice) && Intrinsics.areEqual(this.priceAmountMicros, subscriptionInfo.priceAmountMicros) && Intrinsics.areEqual(this.priceCurrencyCode, subscriptionInfo.priceCurrencyCode) && Intrinsics.areEqual(this.freeTrialBillingPeriod, subscriptionInfo.freeTrialBillingPeriod) && Intrinsics.areEqual(this.introPricing, subscriptionInfo.introPricing);
    }

    public int hashCode() {
        String str = this.basePlanId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.offerToken;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.billingPeriod;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.formattedPrice;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Long l = this.priceAmountMicros;
        int iHashCode5 = (iHashCode4 + (l == null ? 0 : l.hashCode())) * 31;
        String str5 = this.priceCurrencyCode;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.freeTrialBillingPeriod;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        IntroPriceInfo introPriceInfo = this.introPricing;
        return iHashCode7 + (introPriceInfo != null ? introPriceInfo.hashCode() : 0);
    }

    public String toString() {
        return "SubscriptionInfo(basePlanId=" + this.basePlanId + ", offerToken=" + this.offerToken + ", billingPeriod=" + this.billingPeriod + ", formattedPrice=" + this.formattedPrice + ", priceAmountMicros=" + this.priceAmountMicros + ", priceCurrencyCode=" + this.priceCurrencyCode + ", freeTrialBillingPeriod=" + this.freeTrialBillingPeriod + ", introPricing=" + this.introPricing + ")";
    }

    public SubscriptionInfo(String str, String str2, String str3, String str4, Long l, String str5, String str6, IntroPriceInfo introPriceInfo) {
        this.basePlanId = str;
        this.offerToken = str2;
        this.billingPeriod = str3;
        this.formattedPrice = str4;
        this.priceAmountMicros = l;
        this.priceCurrencyCode = str5;
        this.freeTrialBillingPeriod = str6;
        this.introPricing = introPriceInfo;
    }

    public final String getBasePlanId() {
        return this.basePlanId;
    }

    public final String getOfferToken() {
        return this.offerToken;
    }

    public final String getBillingPeriod() {
        return this.billingPeriod;
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

    public final String getFreeTrialBillingPeriod() {
        return this.freeTrialBillingPeriod;
    }

    public final IntroPriceInfo getIntroPricing() {
        return this.introPricing;
    }
}
