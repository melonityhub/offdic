package fast.dic.dict.viewmodels.fragments;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import fast.dic.dict.domain.billing.PurchaseListingDetails;
import ir.cafebazaar.poolakey.constant.RawJson;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GooglePaymentViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\b\t\nB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0007\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;", "", "<init>", "()V", "Initializing", "Initialized", "Purchased", "PurchaseConsumed", "Products", "Error", "InitialError", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initializing;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Products;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$PurchaseConsumed;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Purchased;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class GooglePlayPaymentMethodState {
    public /* synthetic */ GooglePlayPaymentMethodState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private GooglePlayPaymentMethodState() {
    }

    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0083\u0004J\n\u0010\b\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\n\u001a\u00020\u000bHÖ\u0081\u0004¨\u0006\f"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initializing;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Initializing extends GooglePlayPaymentMethodState {
        public static final Initializing INSTANCE = new Initializing();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Initializing)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1453994064;
        }

        public String toString() {
            return "Initializing";
        }

        private Initializing() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;", "state", "", "<init>", "(Z)V", "getState", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Initialized extends GooglePlayPaymentMethodState {
        private final boolean state;

        public static /* synthetic */ Initialized copy$default(Initialized initialized, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = initialized.state;
            }
            return initialized.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getState() {
            return this.state;
        }

        public final Initialized copy(boolean state) {
            return new Initialized(state);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Initialized) && this.state == ((Initialized) other).state;
        }

        public int hashCode() {
            return Boolean.hashCode(this.state);
        }

        public String toString() {
            return "Initialized(state=" + this.state + ")";
        }

        public Initialized(boolean z) {
            super(null);
            this.state = z;
        }

        public final boolean getState() {
            return this.state;
        }
    }

    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Purchased;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;", RawJson.PURCHASE_TOKEN, "", "productId", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getPurchaseToken", "()Ljava/lang/String;", "getProductId", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Purchased extends GooglePlayPaymentMethodState {
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

    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$PurchaseConsumed;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;", "productId", "", "<init>", "(Ljava/lang/String;)V", "getProductId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class PurchaseConsumed extends GooglePlayPaymentMethodState {
        private final String productId;

        public static /* synthetic */ PurchaseConsumed copy$default(PurchaseConsumed purchaseConsumed, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = purchaseConsumed.productId;
            }
            return purchaseConsumed.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getProductId() {
            return this.productId;
        }

        public final PurchaseConsumed copy(String productId) {
            Intrinsics.checkNotNullParameter(productId, "productId");
            return new PurchaseConsumed(productId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PurchaseConsumed) && Intrinsics.areEqual(this.productId, ((PurchaseConsumed) other).productId);
        }

        public int hashCode() {
            return this.productId.hashCode();
        }

        public String toString() {
            return "PurchaseConsumed(productId=" + this.productId + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PurchaseConsumed(String productId) {
            super(null);
            Intrinsics.checkNotNullParameter(productId, "productId");
            this.productId = productId;
        }

        public final String getProductId() {
            return this.productId;
        }
    }

    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Products;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;", "products", "", "Lfast/dic/dict/domain/billing/PurchaseListingDetails;", "<init>", "(Ljava/util/List;)V", "getProducts", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Products extends GooglePlayPaymentMethodState {
        private final List<PurchaseListingDetails> products;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Products copy$default(Products products, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = products.products;
            }
            return products.copy(list);
        }

        public final List<PurchaseListingDetails> component1() {
            return this.products;
        }

        public final Products copy(List<PurchaseListingDetails> products) {
            Intrinsics.checkNotNullParameter(products, "products");
            return new Products(products);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Products) && Intrinsics.areEqual(this.products, ((Products) other).products);
        }

        public int hashCode() {
            return this.products.hashCode();
        }

        public String toString() {
            return "Products(products=" + this.products + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Products(List<PurchaseListingDetails> products) {
            super(null);
            Intrinsics.checkNotNullParameter(products, "products");
            this.products = products;
        }

        public final List<PurchaseListingDetails> getProducts() {
            return this.products;
        }
    }

    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;", "message", "", IronSourceConstants.EVENTS_ERROR_CODE, "", "<init>", "(Ljava/lang/String;I)V", "getMessage", "()Ljava/lang/String;", "getErrorCode", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Error extends GooglePlayPaymentMethodState {
        private final int errorCode;
        private final String message;

        public static /* synthetic */ Error copy$default(Error error, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = error.message;
            }
            if ((i2 & 2) != 0) {
                i = error.errorCode;
            }
            return error.copy(str, i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getErrorCode() {
            return this.errorCode;
        }

        public final Error copy(String message, int errorCode) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new Error(message, errorCode);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Error)) {
                return false;
            }
            Error error = (Error) other;
            return Intrinsics.areEqual(this.message, error.message) && this.errorCode == error.errorCode;
        }

        public int hashCode() {
            return (this.message.hashCode() * 31) + Integer.hashCode(this.errorCode);
        }

        public String toString() {
            return "Error(message=" + this.message + ", errorCode=" + this.errorCode + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(String message, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
            this.errorCode = i;
        }

        public /* synthetic */ Error(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? 0 : i);
        }

        public final int getErrorCode() {
            return this.errorCode;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;", "message", "", IronSourceConstants.EVENTS_ERROR_CODE, "", "<init>", "(Ljava/lang/String;I)V", "getMessage", "()Ljava/lang/String;", "getErrorCode", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class InitialError extends GooglePlayPaymentMethodState {
        private final int errorCode;
        private final String message;

        public static /* synthetic */ InitialError copy$default(InitialError initialError, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = initialError.message;
            }
            if ((i2 & 2) != 0) {
                i = initialError.errorCode;
            }
            return initialError.copy(str, i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getErrorCode() {
            return this.errorCode;
        }

        public final InitialError copy(String message, int errorCode) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new InitialError(message, errorCode);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof InitialError)) {
                return false;
            }
            InitialError initialError = (InitialError) other;
            return Intrinsics.areEqual(this.message, initialError.message) && this.errorCode == initialError.errorCode;
        }

        public int hashCode() {
            return (this.message.hashCode() * 31) + Integer.hashCode(this.errorCode);
        }

        public String toString() {
            return "InitialError(message=" + this.message + ", errorCode=" + this.errorCode + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InitialError(String message, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(message, "message");
            this.message = message;
            this.errorCode = i;
        }

        public /* synthetic */ InitialError(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? 0 : i);
        }

        public final int getErrorCode() {
            return this.errorCode;
        }

        public final String getMessage() {
            return this.message;
        }
    }
}
