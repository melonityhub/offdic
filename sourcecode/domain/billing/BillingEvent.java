package fast.dic.dict.domain.billing;

import com.ironsource.U3;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BillingRepository.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lfast/dic/dict/domain/billing/BillingEvent;", "", "BillingInitialized", "PurchaseCompleted", "PurchaseRestored", "PurchaseConsumed", "Error", "InitializeError", "Idle", "Lfast/dic/dict/domain/billing/BillingEvent$BillingInitialized;", "Lfast/dic/dict/domain/billing/BillingEvent$Error;", "Lfast/dic/dict/domain/billing/BillingEvent$Idle;", "Lfast/dic/dict/domain/billing/BillingEvent$InitializeError;", "Lfast/dic/dict/domain/billing/BillingEvent$PurchaseCompleted;", "Lfast/dic/dict/domain/billing/BillingEvent$PurchaseConsumed;", "Lfast/dic/dict/domain/billing/BillingEvent$PurchaseRestored;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface BillingEvent {

    /* JADX INFO: compiled from: BillingRepository.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/domain/billing/BillingEvent$BillingInitialized;", "Lfast/dic/dict/domain/billing/BillingEvent;", U3.i.s, "", "<init>", "(Z)V", "getReady", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class BillingInitialized implements BillingEvent {
        private final boolean ready;

        public static /* synthetic */ BillingInitialized copy$default(BillingInitialized billingInitialized, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = billingInitialized.ready;
            }
            return billingInitialized.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getReady() {
            return this.ready;
        }

        public final BillingInitialized copy(boolean ready) {
            return new BillingInitialized(ready);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof BillingInitialized) && this.ready == ((BillingInitialized) other).ready;
        }

        public int hashCode() {
            return Boolean.hashCode(this.ready);
        }

        public String toString() {
            return "BillingInitialized(ready=" + this.ready + ")";
        }

        public BillingInitialized(boolean z) {
            this.ready = z;
        }

        public final boolean getReady() {
            return this.ready;
        }
    }

    /* JADX INFO: compiled from: BillingRepository.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/domain/billing/BillingEvent$PurchaseCompleted;", "Lfast/dic/dict/domain/billing/BillingEvent;", "item", "Lfast/dic/dict/domain/billing/PurchasedItem;", "<init>", "(Lfast/dic/dict/domain/billing/PurchasedItem;)V", "getItem", "()Lfast/dic/dict/domain/billing/PurchasedItem;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class PurchaseCompleted implements BillingEvent {
        private final PurchasedItem item;

        public static /* synthetic */ PurchaseCompleted copy$default(PurchaseCompleted purchaseCompleted, PurchasedItem purchasedItem, int i, Object obj) {
            if ((i & 1) != 0) {
                purchasedItem = purchaseCompleted.item;
            }
            return purchaseCompleted.copy(purchasedItem);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final PurchasedItem getItem() {
            return this.item;
        }

        public final PurchaseCompleted copy(PurchasedItem item) {
            Intrinsics.checkNotNullParameter(item, "item");
            return new PurchaseCompleted(item);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PurchaseCompleted) && Intrinsics.areEqual(this.item, ((PurchaseCompleted) other).item);
        }

        public int hashCode() {
            return this.item.hashCode();
        }

        public String toString() {
            return "PurchaseCompleted(item=" + this.item + ")";
        }

        public PurchaseCompleted(PurchasedItem item) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.item = item;
        }

        public final PurchasedItem getItem() {
            return this.item;
        }
    }

    /* JADX INFO: compiled from: BillingRepository.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lfast/dic/dict/domain/billing/BillingEvent$PurchaseRestored;", "Lfast/dic/dict/domain/billing/BillingEvent;", "items", "", "Lfast/dic/dict/domain/billing/PurchasedItem;", "<init>", "(Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class PurchaseRestored implements BillingEvent {
        private final List<PurchasedItem> items;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ PurchaseRestored copy$default(PurchaseRestored purchaseRestored, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = purchaseRestored.items;
            }
            return purchaseRestored.copy(list);
        }

        public final List<PurchasedItem> component1() {
            return this.items;
        }

        public final PurchaseRestored copy(List<PurchasedItem> items) {
            Intrinsics.checkNotNullParameter(items, "items");
            return new PurchaseRestored(items);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PurchaseRestored) && Intrinsics.areEqual(this.items, ((PurchaseRestored) other).items);
        }

        public int hashCode() {
            return this.items.hashCode();
        }

        public String toString() {
            return "PurchaseRestored(items=" + this.items + ")";
        }

        public PurchaseRestored(List<PurchasedItem> items) {
            Intrinsics.checkNotNullParameter(items, "items");
            this.items = items;
        }

        public final List<PurchasedItem> getItems() {
            return this.items;
        }
    }

    /* JADX INFO: compiled from: BillingRepository.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/domain/billing/BillingEvent$PurchaseConsumed;", "Lfast/dic/dict/domain/billing/BillingEvent;", "productId", "", "<init>", "(Ljava/lang/String;)V", "getProductId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class PurchaseConsumed implements BillingEvent {
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

        public PurchaseConsumed(String productId) {
            Intrinsics.checkNotNullParameter(productId, "productId");
            this.productId = productId;
        }

        public final String getProductId() {
            return this.productId;
        }
    }

    /* JADX INFO: compiled from: BillingRepository.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0005HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/domain/billing/BillingEvent$Error;", "Lfast/dic/dict/domain/billing/BillingEvent;", "code", "", "message", "", "<init>", "(ILjava/lang/String;)V", "getCode", "()I", "getMessage", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Error implements BillingEvent {
        private final int code;
        private final String message;

        public static /* synthetic */ Error copy$default(Error error, int i, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = error.code;
            }
            if ((i2 & 2) != 0) {
                str = error.message;
            }
            return error.copy(i, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getCode() {
            return this.code;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final Error copy(int code, String message) {
            return new Error(code, message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Error)) {
                return false;
            }
            Error error = (Error) other;
            return this.code == error.code && Intrinsics.areEqual(this.message, error.message);
        }

        public int hashCode() {
            int iHashCode = Integer.hashCode(this.code) * 31;
            String str = this.message;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "Error(code=" + this.code + ", message=" + this.message + ")";
        }

        public Error(int i, String str) {
            this.code = i;
            this.message = str;
        }

        public final int getCode() {
            return this.code;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: BillingRepository.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0005HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/domain/billing/BillingEvent$InitializeError;", "Lfast/dic/dict/domain/billing/BillingEvent;", "code", "", "message", "", "<init>", "(ILjava/lang/String;)V", "getCode", "()I", "getMessage", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class InitializeError implements BillingEvent {
        private final int code;
        private final String message;

        public static /* synthetic */ InitializeError copy$default(InitializeError initializeError, int i, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = initializeError.code;
            }
            if ((i2 & 2) != 0) {
                str = initializeError.message;
            }
            return initializeError.copy(i, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getCode() {
            return this.code;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final InitializeError copy(int code, String message) {
            return new InitializeError(code, message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof InitializeError)) {
                return false;
            }
            InitializeError initializeError = (InitializeError) other;
            return this.code == initializeError.code && Intrinsics.areEqual(this.message, initializeError.message);
        }

        public int hashCode() {
            int iHashCode = Integer.hashCode(this.code) * 31;
            String str = this.message;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "InitializeError(code=" + this.code + ", message=" + this.message + ")";
        }

        public InitializeError(int i, String str) {
            this.code = i;
            this.message = str;
        }

        public final int getCode() {
            return this.code;
        }

        public final String getMessage() {
            return this.message;
        }
    }

    /* JADX INFO: compiled from: BillingRepository.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0083\u0004J\n\u0010\b\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\n\u001a\u00020\u000bHÖ\u0081\u0004¨\u0006\f"}, d2 = {"Lfast/dic/dict/domain/billing/BillingEvent$Idle;", "Lfast/dic/dict/domain/billing/BillingEvent;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Idle implements BillingEvent {
        public static final Idle INSTANCE = new Idle();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Idle)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1990159140;
        }

        public String toString() {
            return "Idle";
        }

        private Idle() {
        }
    }
}
