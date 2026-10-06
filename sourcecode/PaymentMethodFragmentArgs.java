package fast.dic.dict;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import fast.dic.dict.domain.entity.ProSubscriptionTime;
import fast.dic.dict.domain.entity.pricing.Plan;
import fast.dic.dict.models.PlanType;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentMethodFragmentArgs.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000  2\u00020\u0001:\u0001 B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0007HÆ\u0003J)\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0083\u0004J\n\u0010\u001c\u001a\u00020\u001dHÖ\u0081\u0004J\n\u0010\u001e\u001a\u00020\u001fHÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006!"}, d2 = {"Lfast/dic/dict/PaymentMethodFragmentArgs;", "Landroidx/navigation/NavArgs;", "plan", "Lfast/dic/dict/domain/entity/pricing/Plan;", "planType", "Lfast/dic/dict/models/PlanType;", "time", "Lfast/dic/dict/domain/entity/ProSubscriptionTime;", "<init>", "(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V", "getPlan", "()Lfast/dic/dict/domain/entity/pricing/Plan;", "getPlanType", "()Lfast/dic/dict/models/PlanType;", "getTime", "()Lfast/dic/dict/domain/entity/ProSubscriptionTime;", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class PaymentMethodFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Plan plan;
    private final PlanType planType;
    private final ProSubscriptionTime time;

    public static /* synthetic */ PaymentMethodFragmentArgs copy$default(PaymentMethodFragmentArgs paymentMethodFragmentArgs, Plan plan, PlanType planType, ProSubscriptionTime proSubscriptionTime, int i, Object obj) {
        if ((i & 1) != 0) {
            plan = paymentMethodFragmentArgs.plan;
        }
        if ((i & 2) != 0) {
            planType = paymentMethodFragmentArgs.planType;
        }
        if ((i & 4) != 0) {
            proSubscriptionTime = paymentMethodFragmentArgs.time;
        }
        return paymentMethodFragmentArgs.copy(plan, planType, proSubscriptionTime);
    }

    @JvmStatic
    public static final PaymentMethodFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final PaymentMethodFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
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

    public final PaymentMethodFragmentArgs copy(Plan plan, PlanType planType, ProSubscriptionTime time) {
        Intrinsics.checkNotNullParameter(planType, "planType");
        Intrinsics.checkNotNullParameter(time, "time");
        return new PaymentMethodFragmentArgs(plan, planType, time);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PaymentMethodFragmentArgs)) {
            return false;
        }
        PaymentMethodFragmentArgs paymentMethodFragmentArgs = (PaymentMethodFragmentArgs) other;
        return Intrinsics.areEqual(this.plan, paymentMethodFragmentArgs.plan) && this.planType == paymentMethodFragmentArgs.planType && this.time == paymentMethodFragmentArgs.time;
    }

    public int hashCode() {
        Plan plan = this.plan;
        return ((((plan == null ? 0 : plan.hashCode()) * 31) + this.planType.hashCode()) * 31) + this.time.hashCode();
    }

    public String toString() {
        return "PaymentMethodFragmentArgs(plan=" + this.plan + ", planType=" + this.planType + ", time=" + this.time + ")";
    }

    public PaymentMethodFragmentArgs(Plan plan, PlanType planType, ProSubscriptionTime time) {
        Intrinsics.checkNotNullParameter(planType, "planType");
        Intrinsics.checkNotNullParameter(time, "time");
        this.plan = plan;
        this.planType = planType;
        this.time = time;
    }

    public final Plan getPlan() {
        return this.plan;
    }

    public /* synthetic */ PaymentMethodFragmentArgs(Plan plan, PlanType planType, ProSubscriptionTime proSubscriptionTime, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(plan, (i & 2) != 0 ? PlanType.REMOVE_ADS : planType, (i & 4) != 0 ? ProSubscriptionTime.ONE_YEAR : proSubscriptionTime);
    }

    public final PlanType getPlanType() {
        return this.planType;
    }

    public final ProSubscriptionTime getTime() {
        return this.time;
    }

    public final Bundle toBundle() {
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

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (Parcelable.class.isAssignableFrom(PlanType.class)) {
            Object obj = this.planType;
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.os.Parcelable");
            savedStateHandle.set("planType", (Parcelable) obj);
        } else if (Serializable.class.isAssignableFrom(PlanType.class)) {
            PlanType planType = this.planType;
            Intrinsics.checkNotNull(planType, "null cannot be cast to non-null type java.io.Serializable");
            savedStateHandle.set("planType", planType);
        }
        if (!Parcelable.class.isAssignableFrom(Plan.class)) {
            if (!Serializable.class.isAssignableFrom(Plan.class)) {
                throw new UnsupportedOperationException(Plan.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            savedStateHandle.set("plan", (Serializable) this.plan);
        } else {
            savedStateHandle.set("plan", this.plan);
        }
        if (!Parcelable.class.isAssignableFrom(ProSubscriptionTime.class)) {
            if (Serializable.class.isAssignableFrom(ProSubscriptionTime.class)) {
                ProSubscriptionTime proSubscriptionTime = this.time;
                Intrinsics.checkNotNull(proSubscriptionTime, "null cannot be cast to non-null type java.io.Serializable");
                savedStateHandle.set("time", proSubscriptionTime);
            }
            return savedStateHandle;
        }
        Object obj2 = this.time;
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type android.os.Parcelable");
        savedStateHandle.set("time", (Parcelable) obj2);
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: PaymentMethodFragmentArgs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bJ\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\b¨\u0006\f"}, d2 = {"Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;", "", "<init>", "()V", "fromBundle", "Lfast/dic/dict/PaymentMethodFragmentArgs;", "bundle", "Landroid/os/Bundle;", "Lkotlin/jvm/JvmStatic;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final PaymentMethodFragmentArgs fromBundle(Bundle bundle) {
            PlanType planType;
            ProSubscriptionTime proSubscriptionTime;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(PaymentMethodFragmentArgs.class.getClassLoader());
            if (bundle.containsKey("planType")) {
                if (Parcelable.class.isAssignableFrom(PlanType.class) || Serializable.class.isAssignableFrom(PlanType.class)) {
                    planType = (PlanType) bundle.get("planType");
                    if (planType == null) {
                        throw new IllegalArgumentException("Argument \"planType\" is marked as non-null but was passed a null value.");
                    }
                } else {
                    throw new UnsupportedOperationException(PlanType.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
            } else {
                planType = PlanType.REMOVE_ADS;
            }
            if (bundle.containsKey("plan")) {
                if (Parcelable.class.isAssignableFrom(Plan.class) || Serializable.class.isAssignableFrom(Plan.class)) {
                    Plan plan = (Plan) bundle.get("plan");
                    if (bundle.containsKey("time")) {
                        if (!Parcelable.class.isAssignableFrom(ProSubscriptionTime.class) && !Serializable.class.isAssignableFrom(ProSubscriptionTime.class)) {
                            throw new UnsupportedOperationException(ProSubscriptionTime.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                        }
                        proSubscriptionTime = (ProSubscriptionTime) bundle.get("time");
                        if (proSubscriptionTime == null) {
                            throw new IllegalArgumentException("Argument \"time\" is marked as non-null but was passed a null value.");
                        }
                    } else {
                        proSubscriptionTime = ProSubscriptionTime.ONE_YEAR;
                    }
                    return new PaymentMethodFragmentArgs(plan, planType, proSubscriptionTime);
                }
                throw new UnsupportedOperationException(Plan.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            throw new IllegalArgumentException("Required argument \"plan\" is missing and does not have an android:defaultValue");
        }

        @JvmStatic
        public final PaymentMethodFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            PlanType planType;
            ProSubscriptionTime proSubscriptionTime;
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (savedStateHandle.contains("planType")) {
                if (Parcelable.class.isAssignableFrom(PlanType.class) || Serializable.class.isAssignableFrom(PlanType.class)) {
                    planType = (PlanType) savedStateHandle.get("planType");
                    if (planType == null) {
                        throw new IllegalArgumentException("Argument \"planType\" is marked as non-null but was passed a null value");
                    }
                } else {
                    throw new UnsupportedOperationException(PlanType.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
            } else {
                planType = PlanType.REMOVE_ADS;
            }
            if (savedStateHandle.contains("plan")) {
                if (Parcelable.class.isAssignableFrom(Plan.class) || Serializable.class.isAssignableFrom(Plan.class)) {
                    Plan plan = (Plan) savedStateHandle.get("plan");
                    if (savedStateHandle.contains("time")) {
                        if (!Parcelable.class.isAssignableFrom(ProSubscriptionTime.class) && !Serializable.class.isAssignableFrom(ProSubscriptionTime.class)) {
                            throw new UnsupportedOperationException(ProSubscriptionTime.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                        }
                        proSubscriptionTime = (ProSubscriptionTime) savedStateHandle.get("time");
                        if (proSubscriptionTime == null) {
                            throw new IllegalArgumentException("Argument \"time\" is marked as non-null but was passed a null value");
                        }
                    } else {
                        proSubscriptionTime = ProSubscriptionTime.ONE_YEAR;
                    }
                    return new PaymentMethodFragmentArgs(plan, planType, proSubscriptionTime);
                }
                throw new UnsupportedOperationException(Plan.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            throw new IllegalArgumentException("Required argument \"plan\" is missing and does not have an android:defaultValue");
        }
    }
}
