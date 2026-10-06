package fast.dic.dict.viewmodels;

import ir.cafebazaar.poolakey.constant.RawJson;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BazaarPaymentViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/viewmodels/BazaarPurchaseState;", "", "<init>", "()V", "Purchased", "Error", "Lfast/dic/dict/viewmodels/BazaarPurchaseState$Error;", "Lfast/dic/dict/viewmodels/BazaarPurchaseState$Purchased;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class BazaarPurchaseState {
    public /* synthetic */ BazaarPurchaseState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: BazaarPaymentViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/viewmodels/BazaarPurchaseState$Purchased;", "Lfast/dic/dict/viewmodels/BazaarPurchaseState;", RawJson.PURCHASE_TOKEN, "", "productId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getPurchaseToken", "()Ljava/lang/String;", "getProductId", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Purchased extends BazaarPurchaseState {
        private final String productId;
        private final String purchaseToken;

        public static /* synthetic */ Purchased copy$default(Purchased purchased, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = purchased.purchaseToken;
            }
            if ((i & 2) != 0) {
                str2 = purchased.productId;
            }
            return purchased.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getPurchaseToken() {
            return this.purchaseToken;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getProductId() {
            return this.productId;
        }

        public final Purchased copy(String purchaseToken, String productId) {
            Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
            Intrinsics.checkNotNullParameter(productId, "productId");
            return new Purchased(purchaseToken, productId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Purchased)) {
                return false;
            }
            Purchased purchased = (Purchased) other;
            return Intrinsics.areEqual(this.purchaseToken, purchased.purchaseToken) && Intrinsics.areEqual(this.productId, purchased.productId);
        }

        public int hashCode() {
            return (this.purchaseToken.hashCode() * 31) + this.productId.hashCode();
        }

        public String toString() {
            return "Purchased(purchaseToken=" + this.purchaseToken + ", productId=" + this.productId + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Purchased(String purchaseToken, String productId) {
            super(null);
            Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
            Intrinsics.checkNotNullParameter(productId, "productId");
            this.purchaseToken = purchaseToken;
            this.productId = productId;
        }

        public final String getProductId() {
            return this.productId;
        }

        public final String getPurchaseToken() {
            return this.purchaseToken;
        }
    }

    private BazaarPurchaseState() {
    }

    /* JADX INFO: compiled from: BazaarPaymentViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/viewmodels/BazaarPurchaseState$Error;", "Lfast/dic/dict/viewmodels/BazaarPurchaseState;", "message", "", "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Error extends BazaarPurchaseState {
        private final String message;

        public static /* synthetic */ Error copy$default(Error error, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = error.message;
            }
            return error.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final Error copy(String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new Error(message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Error) && Intrinsics.areEqual(this.message, ((Error) other).message);
        }

        public int hashCode() {
            return this.message.hashCode();
        }

        public String toString() {
            return "Error(message=" + this.message + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(String message) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
        }

        public final String getMessage() {
            return this.message;
        }
    }
}
