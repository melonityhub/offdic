package fast.dic.dict.domain.billing;

import android.app.Activity;
import com.google.firebase.analytics.FirebaseAnalytics;
import ir.cafebazaar.poolakey.constant.RawJson;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: BillingRepository.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0007\u001a\u00020\bH¦@¢\u0006\u0002\u0010\tJ\u000e\u0010\n\u001a\u00020\bH¦@¢\u0006\u0002\u0010\tJ.\u0010\u000b\u001a\u00020\f2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH¦@¢\u0006\u0002\u0010\u0011J\u001e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000fH¦@¢\u0006\u0002\u0010\u0016J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000fH¦@¢\u0006\u0002\u0010\u001aJ\u0016\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000fH¦@¢\u0006\u0002\u0010\u001aJ\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000eH¦@¢\u0006\u0002\u0010\tJ\u0016\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u000fH¦@¢\u0006\u0002\u0010\u001aJ\u0018\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u0015\u001a\u00020\u000fH¦@¢\u0006\u0002\u0010\u001aJ4\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u000e2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH¦@¢\u0006\u0002\u0010\u0011R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006!À\u0006\u0003"}, d2 = {"Lfast/dic/dict/domain/billing/BillingRepository;", "", "events", "Lkotlinx/coroutines/flow/Flow;", "Lfast/dic/dict/domain/billing/BillingEvent;", "getEvents", "()Lkotlinx/coroutines/flow/Flow;", "connect", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "disconnect", "queryProducts", "Lfast/dic/dict/domain/billing/ProductCatalog;", "inappIds", "", "", "subIds", "(Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", FirebaseAnalytics.Event.PURCHASE, "activity", "Landroid/app/Activity;", "productId", "(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acknowledgeIfNeeded", "", RawJson.PURCHASE_TOKEN, "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "consume", "getActivePurchases", "Lfast/dic/dict/domain/billing/PurchasedItem;", "isPurchased", "getPurchaseListingDetailsAsync", "Lfast/dic/dict/domain/billing/PurchaseListingDetails;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface BillingRepository {
    Object acknowledgeIfNeeded(String str, Continuation<? super Boolean> continuation);

    Object connect(Continuation<? super Unit> continuation);

    Object consume(String str, Continuation<? super Boolean> continuation);

    Object disconnect(Continuation<? super Unit> continuation);

    Object getActivePurchases(Continuation<? super List<PurchasedItem>> continuation);

    Flow<BillingEvent> getEvents();

    Object getPurchaseListingDetailsAsync(String str, Continuation<? super PurchaseListingDetails> continuation);

    Object getPurchaseListingDetailsAsync(List<String> list, List<String> list2, Continuation<? super List<PurchaseListingDetails>> continuation);

    Object isPurchased(String str, Continuation<? super Boolean> continuation);

    Object purchase(Activity activity, String str, Continuation<? super Unit> continuation);

    Object queryProducts(List<String> list, List<String> list2, Continuation<? super ProductCatalog> continuation);

    /* JADX INFO: compiled from: BillingRepository.kt */
    /* JADX INFO: loaded from: classes11.dex */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final class DefaultImpls {
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Object queryProducts$default(BillingRepository billingRepository, List list, List list2, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: queryProducts");
        }
        if ((i & 1) != 0) {
            list = CollectionsKt.emptyList();
        }
        if ((i & 2) != 0) {
            list2 = CollectionsKt.emptyList();
        }
        return billingRepository.queryProducts(list, list2, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Object getPurchaseListingDetailsAsync$default(BillingRepository billingRepository, List list, List list2, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPurchaseListingDetailsAsync");
        }
        if ((i & 1) != 0) {
            list = CollectionsKt.emptyList();
        }
        if ((i & 2) != 0) {
            list2 = CollectionsKt.emptyList();
        }
        return billingRepository.getPurchaseListingDetailsAsync(list, list2, continuation);
    }
}
