package fast.dic.dict.presentation.pricing_screen.adapter;

import fast.dic.dict.R;
import fast.dic.dict.domain.entity.pricing.Plan;
import fast.dic.dict.models.PlanType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PricingStickyHeaderUIData.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b&\b\u0086\b\u0018\u0000 >2\u00020\u0001:\u0001>B\u0096\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\f\b\u0001\u0010\u000e\u001a\u00020\u000f:\u0002\b\u0010\u0012\f\b\u0001\u0010\u0011\u001a\u00020\u000f:\u0002\b\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0006\u0012%\b\u0002\u0010\u0014\u001a\u001f\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0015¢\u0006\u0004\b\u001a\u0010\u001bJ\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\t\u0010/\u001a\u00020\u0006HÆ\u0003J\t\u00100\u001a\u00020\bHÆ\u0003J\t\u00101\u001a\u00020\u0006HÆ\u0003J\t\u00102\u001a\u00020\u000bHÆ\u0003J\t\u00103\u001a\u00020\u000bHÆ\u0003J\t\u00104\u001a\u00020\u000bHÆ\u0003J\t\u00105\u001a\u00020\u000fHÆ\u0003J\t\u00106\u001a\u00020\u000fHÆ\u0003J\t\u00107\u001a\u00020\u0006HÆ\u0003J&\u00108\u001a\u001f\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0015HÆ\u0003J¦\u0001\u00109\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000b2\f\b\u0003\u0010\u000e\u001a\u00020\u000f:\u0002\b\u00102\f\b\u0003\u0010\u0011\u001a\u00020\u000f:\u0002\b\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00062%\b\u0002\u0010\u0014\u001a\u001f\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0015HÆ\u0001J\u0014\u0010:\u001a\u00020\u000b2\b\u0010;\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010<\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010=\u001a\u00020\u0006HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b#\u0010 R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b&\u0010%R\u0011\u0010\r\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010%R\u001b\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004\u0092\u0002\u0002\b\u0010¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001b\u0010\u0011\u001a\u00020\u000f8\u0006X\u0087\u0004\u0092\u0002\u0002\b\u0012¢\u0006\b\n\u0000\u001a\u0004\b)\u0010(R\u0011\u0010\u0013\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b*\u0010 R.\u0010\u0014\u001a\u001f\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0015¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,¨\u0006?"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;", "", "aiPlan", "Lfast/dic/dict/domain/entity/pricing/Plan;", "proPlan", "title", "", "planType", "Lfast/dic/dict/models/PlanType;", "price", "hasPlan", "", "hideButton", "isLoggedIn", "color", "", "Landroidx/annotation/ColorRes;", "icon", "Landroidx/annotation/DrawableRes;", "selectedMonth", "primaryCallback", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "type", "", "<init>", "(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/domain/entity/pricing/Plan;Ljava/lang/String;Lfast/dic/dict/models/PlanType;Ljava/lang/String;ZZZIILjava/lang/String;Lkotlin/jvm/functions/Function1;)V", "getAiPlan", "()Lfast/dic/dict/domain/entity/pricing/Plan;", "getProPlan", "getTitle", "()Ljava/lang/String;", "getPlanType", "()Lfast/dic/dict/models/PlanType;", "getPrice", "getHasPlan", "()Z", "getHideButton", "getColor", "()I", "getIcon", "getSelectedMonth", "getPrimaryCallback", "()Lkotlin/jvm/functions/Function1;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "copy", "equals", "other", "hashCode", "toString", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class PricingStickyHeaderUIData {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Plan aiPlan;
    private final int color;
    private final boolean hasPlan;
    private final boolean hideButton;
    private final int icon;
    private final boolean isLoggedIn;
    private final PlanType planType;
    private final String price;
    private final Function1<PlanType, Unit> primaryCallback;
    private final Plan proPlan;
    private final String selectedMonth;
    private final String title;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PricingStickyHeaderUIData copy$default(PricingStickyHeaderUIData pricingStickyHeaderUIData, Plan plan, Plan plan2, String str, PlanType planType, String str2, boolean z, boolean z2, boolean z3, int i, int i2, String str3, Function1 function1, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            plan = pricingStickyHeaderUIData.aiPlan;
        }
        if ((i3 & 2) != 0) {
            plan2 = pricingStickyHeaderUIData.proPlan;
        }
        if ((i3 & 4) != 0) {
            str = pricingStickyHeaderUIData.title;
        }
        if ((i3 & 8) != 0) {
            planType = pricingStickyHeaderUIData.planType;
        }
        if ((i3 & 16) != 0) {
            str2 = pricingStickyHeaderUIData.price;
        }
        if ((i3 & 32) != 0) {
            z = pricingStickyHeaderUIData.hasPlan;
        }
        if ((i3 & 64) != 0) {
            z2 = pricingStickyHeaderUIData.hideButton;
        }
        if ((i3 & 128) != 0) {
            z3 = pricingStickyHeaderUIData.isLoggedIn;
        }
        if ((i3 & 256) != 0) {
            i = pricingStickyHeaderUIData.color;
        }
        if ((i3 & 512) != 0) {
            i2 = pricingStickyHeaderUIData.icon;
        }
        if ((i3 & 1024) != 0) {
            str3 = pricingStickyHeaderUIData.selectedMonth;
        }
        if ((i3 & 2048) != 0) {
            function1 = pricingStickyHeaderUIData.primaryCallback;
        }
        String str4 = str3;
        Function1 function2 = function1;
        int i4 = i;
        int i5 = i2;
        boolean z4 = z2;
        boolean z5 = z3;
        String str5 = str2;
        boolean z6 = z;
        return pricingStickyHeaderUIData.copy(plan, plan2, str, planType, str5, z6, z4, z5, i4, i5, str4, function2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Plan getAiPlan() {
        return this.aiPlan;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final int getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getSelectedMonth() {
        return this.selectedMonth;
    }

    public final Function1<PlanType, Unit> component12() {
        return this.primaryCallback;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Plan getProPlan() {
        return this.proPlan;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final PlanType getPlanType() {
        return this.planType;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPrice() {
        return this.price;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getHasPlan() {
        return this.hasPlan;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getHideButton() {
        return this.hideButton;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getIsLoggedIn() {
        return this.isLoggedIn;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final int getColor() {
        return this.color;
    }

    public final PricingStickyHeaderUIData copy(Plan aiPlan, Plan proPlan, String title, PlanType planType, String price, boolean hasPlan, boolean hideButton, boolean isLoggedIn, int color, int icon, String selectedMonth, Function1<? super PlanType, Unit> primaryCallback) {
        Intrinsics.checkNotNullParameter(aiPlan, "aiPlan");
        Intrinsics.checkNotNullParameter(proPlan, "proPlan");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(planType, "planType");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(selectedMonth, "selectedMonth");
        return new PricingStickyHeaderUIData(aiPlan, proPlan, title, planType, price, hasPlan, hideButton, isLoggedIn, color, icon, selectedMonth, primaryCallback);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PricingStickyHeaderUIData)) {
            return false;
        }
        PricingStickyHeaderUIData pricingStickyHeaderUIData = (PricingStickyHeaderUIData) other;
        return Intrinsics.areEqual(this.aiPlan, pricingStickyHeaderUIData.aiPlan) && Intrinsics.areEqual(this.proPlan, pricingStickyHeaderUIData.proPlan) && Intrinsics.areEqual(this.title, pricingStickyHeaderUIData.title) && this.planType == pricingStickyHeaderUIData.planType && Intrinsics.areEqual(this.price, pricingStickyHeaderUIData.price) && this.hasPlan == pricingStickyHeaderUIData.hasPlan && this.hideButton == pricingStickyHeaderUIData.hideButton && this.isLoggedIn == pricingStickyHeaderUIData.isLoggedIn && this.color == pricingStickyHeaderUIData.color && this.icon == pricingStickyHeaderUIData.icon && Intrinsics.areEqual(this.selectedMonth, pricingStickyHeaderUIData.selectedMonth) && Intrinsics.areEqual(this.primaryCallback, pricingStickyHeaderUIData.primaryCallback);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((((((this.aiPlan.hashCode() * 31) + this.proPlan.hashCode()) * 31) + this.title.hashCode()) * 31) + this.planType.hashCode()) * 31) + this.price.hashCode()) * 31) + Boolean.hashCode(this.hasPlan)) * 31) + Boolean.hashCode(this.hideButton)) * 31) + Boolean.hashCode(this.isLoggedIn)) * 31) + Integer.hashCode(this.color)) * 31) + Integer.hashCode(this.icon)) * 31) + this.selectedMonth.hashCode()) * 31;
        Function1<PlanType, Unit> function1 = this.primaryCallback;
        return iHashCode + (function1 == null ? 0 : function1.hashCode());
    }

    public String toString() {
        return "PricingStickyHeaderUIData(aiPlan=" + this.aiPlan + ", proPlan=" + this.proPlan + ", title=" + this.title + ", planType=" + this.planType + ", price=" + this.price + ", hasPlan=" + this.hasPlan + ", hideButton=" + this.hideButton + ", isLoggedIn=" + this.isLoggedIn + ", color=" + this.color + ", icon=" + this.icon + ", selectedMonth=" + this.selectedMonth + ", primaryCallback=" + this.primaryCallback + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PricingStickyHeaderUIData(Plan aiPlan, Plan proPlan, String title, PlanType planType, String price, boolean z, boolean z2, boolean z3, int i, int i2, String selectedMonth, Function1<? super PlanType, Unit> function1) {
        Intrinsics.checkNotNullParameter(aiPlan, "aiPlan");
        Intrinsics.checkNotNullParameter(proPlan, "proPlan");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(planType, "planType");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(selectedMonth, "selectedMonth");
        this.aiPlan = aiPlan;
        this.proPlan = proPlan;
        this.title = title;
        this.planType = planType;
        this.price = price;
        this.hasPlan = z;
        this.hideButton = z2;
        this.isLoggedIn = z3;
        this.color = i;
        this.icon = i2;
        this.selectedMonth = selectedMonth;
        this.primaryCallback = function1;
    }

    public final Plan getAiPlan() {
        return this.aiPlan;
    }

    public final Plan getProPlan() {
        return this.proPlan;
    }

    public final String getTitle() {
        return this.title;
    }

    public final PlanType getPlanType() {
        return this.planType;
    }

    public final String getPrice() {
        return this.price;
    }

    public final boolean getHasPlan() {
        return this.hasPlan;
    }

    public final boolean getHideButton() {
        return this.hideButton;
    }

    public final boolean isLoggedIn() {
        return this.isLoggedIn;
    }

    public final int getColor() {
        return this.color;
    }

    public final int getIcon() {
        return this.icon;
    }

    public /* synthetic */ PricingStickyHeaderUIData(Plan plan, Plan plan2, String str, PlanType planType, String str2, boolean z, boolean z2, boolean z3, int i, int i2, String str3, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(plan, plan2, str, planType, str2, z, (i3 & 64) != 0 ? false : z2, z3, i, i2, (i3 & 1024) != 0 ? "" : str3, (i3 & 2048) != 0 ? null : function1);
    }

    public final String getSelectedMonth() {
        return this.selectedMonth;
    }

    public final Function1<PlanType, Unit> getPrimaryCallback() {
        return this.primaryCallback;
    }

    /* JADX INFO: compiled from: PricingStickyHeaderUIData.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData$Companion;", "", "<init>", "()V", "sample", "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PricingStickyHeaderUIData sample() {
            return new PricingStickyHeaderUIData(Plan.INSTANCE.sample(), Plan.INSTANCE.sample(), "-", PlanType.AI, "-", false, false, false, R.color.plan3, R.drawable.ic_ai_plan, null, null, 3072, null);
        }
    }
}
