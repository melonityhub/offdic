package fast.dic.dict.presentation.pricing_screen;

import fast.dic.dict.domain.entity.pricing.PricingResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PricingViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState;", "", "<init>", "()V", "PricingPlan", "Error", "Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$Error;", "Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$PricingPlan;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class PricingPlanViewModelState {
    public /* synthetic */ PricingPlanViewModelState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: PricingViewModel.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$PricingPlan;", "Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState;", "pricingResponse", "Lfast/dic/dict/domain/entity/pricing/PricingResponse;", "<init>", "(Lfast/dic/dict/domain/entity/pricing/PricingResponse;)V", "getPricingResponse", "()Lfast/dic/dict/domain/entity/pricing/PricingResponse;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class PricingPlan extends PricingPlanViewModelState {
        private final PricingResponse pricingResponse;

        public static /* synthetic */ PricingPlan copy$default(PricingPlan pricingPlan, PricingResponse pricingResponse, int i, Object obj) {
            if ((i & 1) != 0) {
                pricingResponse = pricingPlan.pricingResponse;
            }
            return pricingPlan.copy(pricingResponse);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PricingResponse getPricingResponse() {
            return this.pricingResponse;
        }

        public final PricingPlan copy(PricingResponse pricingResponse) {
            Intrinsics.checkNotNullParameter(pricingResponse, "pricingResponse");
            return new PricingPlan(pricingResponse);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PricingPlan) && Intrinsics.areEqual(this.pricingResponse, ((PricingPlan) other).pricingResponse);
        }

        public int hashCode() {
            return this.pricingResponse.hashCode();
        }

        public String toString() {
            return "PricingPlan(pricingResponse=" + this.pricingResponse + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PricingPlan(PricingResponse pricingResponse) {
            super(null);
            Intrinsics.checkNotNullParameter(pricingResponse, "pricingResponse");
            this.pricingResponse = pricingResponse;
        }

        public final PricingResponse getPricingResponse() {
            return this.pricingResponse;
        }
    }

    private PricingPlanViewModelState() {
    }

    /* JADX INFO: compiled from: PricingViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState$Error;", "Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState;", "error", "", "code", "", "<init>", "(Ljava/lang/String;I)V", "getError", "()Ljava/lang/String;", "getCode", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Error extends PricingPlanViewModelState {
        private final int code;
        private final String error;

        public static /* synthetic */ Error copy$default(Error error, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = error.error;
            }
            if ((i2 & 2) != 0) {
                i = error.code;
            }
            return error.copy(str, i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getError() {
            return this.error;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getCode() {
            return this.code;
        }

        public final Error copy(String error, int code) {
            Intrinsics.checkNotNullParameter(error, "error");
            return new Error(error, code);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Error)) {
                return false;
            }
            Error error = (Error) other;
            return Intrinsics.areEqual(this.error, error.error) && this.code == error.code;
        }

        public int hashCode() {
            return (this.error.hashCode() * 31) + Integer.hashCode(this.code);
        }

        public String toString() {
            return "Error(error=" + this.error + ", code=" + this.code + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(String error, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
            this.code = i;
        }

        public final int getCode() {
            return this.code;
        }

        public final String getError() {
            return this.error;
        }
    }
}
