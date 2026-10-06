package fast.dic.dict.presentation.pricing_screen.adapter;

import fast.dic.dict.domain.entity.pricing.Plan;
import fast.dic.dict.models.PlanType;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PricingPlanUIData.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0007HÆ\u0003JM\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0014\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\"\u001a\u00020#HÖ\u0081\u0004J\n\u0010$\u001a\u00020\u0007HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0017¨\u0006%"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;", "", "plan", "Lfast/dic/dict/domain/entity/pricing/Plan;", "planType", "Lfast/dic/dict/models/PlanType;", "firstDurationPriceToWord", "", "secondDurationPriceToWord", "thirdDurationPriceToWord", "subscriptionMessage", "<init>", "(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getPlan", "()Lfast/dic/dict/domain/entity/pricing/Plan;", "getPlanType", "()Lfast/dic/dict/models/PlanType;", "getFirstDurationPriceToWord", "()Ljava/lang/String;", "getSecondDurationPriceToWord", "getThirdDurationPriceToWord", "getSubscriptionMessage", "setSubscriptionMessage", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class PricingPlanUIData {
    private final String firstDurationPriceToWord;
    private final Plan plan;
    private final PlanType planType;
    private final String secondDurationPriceToWord;
    private String subscriptionMessage;
    private final String thirdDurationPriceToWord;

    public static /* synthetic */ PricingPlanUIData copy$default(PricingPlanUIData pricingPlanUIData, Plan plan, PlanType planType, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            plan = pricingPlanUIData.plan;
        }
        if ((i & 2) != 0) {
            planType = pricingPlanUIData.planType;
        }
        if ((i & 4) != 0) {
            str = pricingPlanUIData.firstDurationPriceToWord;
        }
        if ((i & 8) != 0) {
            str2 = pricingPlanUIData.secondDurationPriceToWord;
        }
        if ((i & 16) != 0) {
            str3 = pricingPlanUIData.thirdDurationPriceToWord;
        }
        if ((i & 32) != 0) {
            str4 = pricingPlanUIData.subscriptionMessage;
        }
        String str5 = str3;
        String str6 = str4;
        return pricingPlanUIData.copy(plan, planType, str, str2, str5, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Plan getPlan() {
        return this.plan;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final PlanType getPlanType() {
        return this.planType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getFirstDurationPriceToWord() {
        return this.firstDurationPriceToWord;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSecondDurationPriceToWord() {
        return this.secondDurationPriceToWord;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getThirdDurationPriceToWord() {
        return this.thirdDurationPriceToWord;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getSubscriptionMessage() {
        return this.subscriptionMessage;
    }

    public final PricingPlanUIData copy(Plan plan, PlanType planType, String firstDurationPriceToWord, String secondDurationPriceToWord, String thirdDurationPriceToWord, String subscriptionMessage) {
        Intrinsics.checkNotNullParameter(plan, "plan");
        Intrinsics.checkNotNullParameter(planType, "planType");
        return new PricingPlanUIData(plan, planType, firstDurationPriceToWord, secondDurationPriceToWord, thirdDurationPriceToWord, subscriptionMessage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PricingPlanUIData)) {
            return false;
        }
        PricingPlanUIData pricingPlanUIData = (PricingPlanUIData) other;
        return Intrinsics.areEqual(this.plan, pricingPlanUIData.plan) && this.planType == pricingPlanUIData.planType && Intrinsics.areEqual(this.firstDurationPriceToWord, pricingPlanUIData.firstDurationPriceToWord) && Intrinsics.areEqual(this.secondDurationPriceToWord, pricingPlanUIData.secondDurationPriceToWord) && Intrinsics.areEqual(this.thirdDurationPriceToWord, pricingPlanUIData.thirdDurationPriceToWord) && Intrinsics.areEqual(this.subscriptionMessage, pricingPlanUIData.subscriptionMessage);
    }

    public int hashCode() {
        int iHashCode = ((this.plan.hashCode() * 31) + this.planType.hashCode()) * 31;
        String str = this.firstDurationPriceToWord;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.secondDurationPriceToWord;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.thirdDurationPriceToWord;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.subscriptionMessage;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "PricingPlanUIData(plan=" + this.plan + ", planType=" + this.planType + ", firstDurationPriceToWord=" + this.firstDurationPriceToWord + ", secondDurationPriceToWord=" + this.secondDurationPriceToWord + ", thirdDurationPriceToWord=" + this.thirdDurationPriceToWord + ", subscriptionMessage=" + this.subscriptionMessage + ")";
    }

    public PricingPlanUIData(Plan plan, PlanType planType, String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(plan, "plan");
        Intrinsics.checkNotNullParameter(planType, "planType");
        this.plan = plan;
        this.planType = planType;
        this.firstDurationPriceToWord = str;
        this.secondDurationPriceToWord = str2;
        this.thirdDurationPriceToWord = str3;
        this.subscriptionMessage = str4;
    }

    public /* synthetic */ PricingPlanUIData(Plan plan, PlanType planType, String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(plan, planType, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : str3, (i & 32) != 0 ? null : str4);
    }

    public final Plan getPlan() {
        return this.plan;
    }

    public final PlanType getPlanType() {
        return this.planType;
    }

    public final String getFirstDurationPriceToWord() {
        return this.firstDurationPriceToWord;
    }

    public final String getSecondDurationPriceToWord() {
        return this.secondDurationPriceToWord;
    }

    public final String getThirdDurationPriceToWord() {
        return this.thirdDurationPriceToWord;
    }

    public final String getSubscriptionMessage() {
        return this.subscriptionMessage;
    }

    public final void setSubscriptionMessage(String str) {
        this.subscriptionMessage = str;
    }
}
