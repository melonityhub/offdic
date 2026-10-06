package fast.dic.dict.presentation.pricing_screen;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavDirections;
import fast.dic.dict.R;
import fast.dic.dict.domain.entity.ProSubscriptionTime;
import fast.dic.dict.domain.entity.pricing.Plan;
import fast.dic.dict.models.PlanType;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PricingFragmentDirections.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 \u00052\u00020\u0001:\u0002\u0004\u0005B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections;", "", "<init>", "()V", "ActionNewPricingFragmentToPaymentMethodFragment", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PricingFragmentDirections {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: PricingFragmentDirections.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J)\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0083\u0004J\n\u0010 \u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010!\u001a\u00020\"HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006#"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;", "Landroidx/navigation/NavDirections;", "plan", "Lfast/dic/dict/domain/entity/pricing/Plan;", "planType", "Lfast/dic/dict/models/PlanType;", "time", "Lfast/dic/dict/domain/entity/ProSubscriptionTime;", "<init>", "(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V", "getPlan", "()Lfast/dic/dict/domain/entity/pricing/Plan;", "getPlanType", "()Lfast/dic/dict/models/PlanType;", "getTime", "()Lfast/dic/dict/domain/entity/ProSubscriptionTime;", "actionId", "", "getActionId", "()I", "arguments", "Landroid/os/Bundle;", "getArguments", "()Landroid/os/Bundle;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    private static final /* data */ class ActionNewPricingFragmentToPaymentMethodFragment implements NavDirections {
        private final int actionId;
        private final Plan plan;
        private final PlanType planType;
        private final ProSubscriptionTime time;

        public static /* synthetic */ ActionNewPricingFragmentToPaymentMethodFragment copy$default(ActionNewPricingFragmentToPaymentMethodFragment actionNewPricingFragmentToPaymentMethodFragment, Plan plan, PlanType planType, ProSubscriptionTime proSubscriptionTime, int i, Object obj) {
            if ((i & 1) != 0) {
                plan = actionNewPricingFragmentToPaymentMethodFragment.plan;
            }
            if ((i & 2) != 0) {
                planType = actionNewPricingFragmentToPaymentMethodFragment.planType;
            }
            if ((i & 4) != 0) {
                proSubscriptionTime = actionNewPricingFragmentToPaymentMethodFragment.time;
            }
            return actionNewPricingFragmentToPaymentMethodFragment.copy(plan, planType, proSubscriptionTime);
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
        public final ProSubscriptionTime getTime() {
            return this.time;
        }

        public final ActionNewPricingFragmentToPaymentMethodFragment copy(Plan plan, PlanType planType, ProSubscriptionTime time) {
            Intrinsics.checkNotNullParameter(planType, "planType");
            Intrinsics.checkNotNullParameter(time, "time");
            return new ActionNewPricingFragmentToPaymentMethodFragment(plan, planType, time);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ActionNewPricingFragmentToPaymentMethodFragment)) {
                return false;
            }
            ActionNewPricingFragmentToPaymentMethodFragment actionNewPricingFragmentToPaymentMethodFragment = (ActionNewPricingFragmentToPaymentMethodFragment) other;
            return Intrinsics.areEqual(this.plan, actionNewPricingFragmentToPaymentMethodFragment.plan) && this.planType == actionNewPricingFragmentToPaymentMethodFragment.planType && this.time == actionNewPricingFragmentToPaymentMethodFragment.time;
        }

        public int hashCode() {
            Plan plan = this.plan;
            return ((((plan == null ? 0 : plan.hashCode()) * 31) + this.planType.hashCode()) * 31) + this.time.hashCode();
        }

        public String toString() {
            return "ActionNewPricingFragmentToPaymentMethodFragment(plan=" + this.plan + ", planType=" + this.planType + ", time=" + this.time + ")";
        }

        public ActionNewPricingFragmentToPaymentMethodFragment(Plan plan, PlanType planType, ProSubscriptionTime time) {
            Intrinsics.checkNotNullParameter(planType, "planType");
            Intrinsics.checkNotNullParameter(time, "time");
            this.plan = plan;
            this.planType = planType;
            this.time = time;
            this.actionId = R.id.action_newPricingFragment_to_paymentMethodFragment;
        }

        public final Plan getPlan() {
            return this.plan;
        }

        public /* synthetic */ ActionNewPricingFragmentToPaymentMethodFragment(Plan plan, PlanType planType, ProSubscriptionTime proSubscriptionTime, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(plan, (i & 2) != 0 ? PlanType.REMOVE_ADS : planType, (i & 4) != 0 ? ProSubscriptionTime.ONE_YEAR : proSubscriptionTime);
        }

        public final PlanType getPlanType() {
            return this.planType;
        }

        public final ProSubscriptionTime getTime() {
            return this.time;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return this.actionId;
        }

        @Override // androidx.navigation.NavDirections
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (Parcelable.class.isAssignableFrom(PlanType.class)) {
                Object obj = this.planType;
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.os.Parcelable");
                bundle.putParcelable("planType", (Parcelable) obj);
            } else if (Serializable.class.isAssignableFrom(PlanType.class)) {
                PlanType planType = this.planType;
                Intrinsics.checkNotNull(planType, "null cannot be cast to non-null type java.io.Serializable");
                bundle.putSerializable("planType", planType);
            }
            if (!Parcelable.class.isAssignableFrom(Plan.class)) {
                if (!Serializable.class.isAssignableFrom(Plan.class)) {
                    throw new UnsupportedOperationException(Plan.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
                bundle.putSerializable("plan", (Serializable) this.plan);
            } else {
                bundle.putParcelable("plan", this.plan);
            }
            if (!Parcelable.class.isAssignableFrom(ProSubscriptionTime.class)) {
                if (Serializable.class.isAssignableFrom(ProSubscriptionTime.class)) {
                    ProSubscriptionTime proSubscriptionTime = this.time;
                    Intrinsics.checkNotNull(proSubscriptionTime, "null cannot be cast to non-null type java.io.Serializable");
                    bundle.putSerializable("time", proSubscriptionTime);
                }
                return bundle;
            }
            Object obj2 = this.time;
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type android.os.Parcelable");
            bundle.putParcelable("time", (Parcelable) obj2);
            return bundle;
        }
    }

    private PricingFragmentDirections() {
    }

    /* JADX INFO: compiled from: PricingFragmentDirections.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\f¨\u0006\r"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$Companion;", "", "<init>", "()V", "actionNewPricingFragmentToPaymentMethodFragment", "Landroidx/navigation/NavDirections;", "plan", "Lfast/dic/dict/domain/entity/pricing/Plan;", "planType", "Lfast/dic/dict/models/PlanType;", "time", "Lfast/dic/dict/domain/entity/ProSubscriptionTime;", "Landroidx/annotation/CheckResult;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ NavDirections actionNewPricingFragmentToPaymentMethodFragment$default(Companion companion, Plan plan, PlanType planType, ProSubscriptionTime proSubscriptionTime, int i, Object obj) {
            if ((i & 2) != 0) {
                planType = PlanType.REMOVE_ADS;
            }
            if ((i & 4) != 0) {
                proSubscriptionTime = ProSubscriptionTime.ONE_YEAR;
            }
            return companion.actionNewPricingFragmentToPaymentMethodFragment(plan, planType, proSubscriptionTime);
        }

        public final NavDirections actionNewPricingFragmentToPaymentMethodFragment(Plan plan, PlanType planType, ProSubscriptionTime time) {
            Intrinsics.checkNotNullParameter(planType, "planType");
            Intrinsics.checkNotNullParameter(time, "time");
            return new ActionNewPricingFragmentToPaymentMethodFragment(plan, planType, time);
        }
    }
}
