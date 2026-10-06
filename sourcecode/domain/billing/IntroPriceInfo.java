package fast.dic.dict.domain.billing;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchaseListing.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000fJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\tHÆ\u0003JH\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0014\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001f\u001a\u00020\tHÖ\u0081\u0004J\n\u0010 \u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Lfast/dic/dict/domain/billing/IntroPriceInfo;", "", "formattedPrice", "", "priceAmountMicros", "", "priceCurrencyCode", "billingPeriod", "recurrenceCount", "", "<init>", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)V", "getFormattedPrice", "()Ljava/lang/String;", "getPriceAmountMicros", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getPriceCurrencyCode", "getBillingPeriod", "getRecurrenceCount", "()I", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Lfast/dic/dict/domain/billing/IntroPriceInfo;", "equals", "", "other", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class IntroPriceInfo {
    private final String billingPeriod;
    private final String formattedPrice;
    private final Long priceAmountMicros;
    private final String priceCurrencyCode;
    private final int recurrenceCount;

    public static /* synthetic */ IntroPriceInfo copy$default(IntroPriceInfo introPriceInfo, String str, Long l, String str2, String str3, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = introPriceInfo.formattedPrice;
        }
        if ((i2 & 2) != 0) {
            l = introPriceInfo.priceAmountMicros;
        }
        if ((i2 & 4) != 0) {
            str2 = introPriceInfo.priceCurrencyCode;
        }
        if ((i2 & 8) != 0) {
            str3 = introPriceInfo.billingPeriod;
        }
        if ((i2 & 16) != 0) {
            i = introPriceInfo.recurrenceCount;
        }
        int i3 = i;
        String str4 = str2;
        return introPriceInfo.copy(str, l, str4, str3, i3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFormattedPrice() {
        return this.formattedPrice;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getPriceAmountMicros() {
        return this.priceAmountMicros;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPriceCurrencyCode() {
        return this.priceCurrencyCode;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getBillingPeriod() {
        return this.billingPeriod;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getRecurrenceCount() {
        return this.recurrenceCount;
    }

    public final IntroPriceInfo copy(String formattedPrice, Long priceAmountMicros, String priceCurrencyCode, String billingPeriod, int recurrenceCount) {
        return new IntroPriceInfo(formattedPrice, priceAmountMicros, priceCurrencyCode, billingPeriod, recurrenceCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof IntroPriceInfo)) {
            return false;
        }
        IntroPriceInfo introPriceInfo = (IntroPriceInfo) other;
        return Intrinsics.areEqual(this.formattedPrice, introPriceInfo.formattedPrice) && Intrinsics.areEqual(this.priceAmountMicros, introPriceInfo.priceAmountMicros) && Intrinsics.areEqual(this.priceCurrencyCode, introPriceInfo.priceCurrencyCode) && Intrinsics.areEqual(this.billingPeriod, introPriceInfo.billingPeriod) && this.recurrenceCount == introPriceInfo.recurrenceCount;
    }

    public int hashCode() {
        String str = this.formattedPrice;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Long l = this.priceAmountMicros;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        String str2 = this.priceCurrencyCode;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.billingPeriod;
        return ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31) + Integer.hashCode(this.recurrenceCount);
    }

    public String toString() {
        return "IntroPriceInfo(formattedPrice=" + this.formattedPrice + ", priceAmountMicros=" + this.priceAmountMicros + ", priceCurrencyCode=" + this.priceCurrencyCode + ", billingPeriod=" + this.billingPeriod + ", recurrenceCount=" + this.recurrenceCount + ")";
    }

    public IntroPriceInfo(String str, Long l, String str2, String str3, int i) {
        this.formattedPrice = str;
        this.priceAmountMicros = l;
        this.priceCurrencyCode = str2;
        this.billingPeriod = str3;
        this.recurrenceCount = i;
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

    public final String getBillingPeriod() {
        return this.billingPeriod;
    }

    public final int getRecurrenceCount() {
        return this.recurrenceCount;
    }
}
