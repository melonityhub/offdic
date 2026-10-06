package fast.dic.dict.viewmodels;

import ir.cafebazaar.poolakey.callback.PurchaseCallback;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class BazaarPaymentViewModel$$ExternalSyntheticLambda5 implements Function1 {
    public final /* synthetic */ String f$1;

    public /* synthetic */ BazaarPaymentViewModel$$ExternalSyntheticLambda5() {
        productId = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return BazaarPaymentViewModel.purchasePackageFromCafeBazaar$lambda$0(mutableLiveData, productId, (PurchaseCallback) obj);
    }
}
