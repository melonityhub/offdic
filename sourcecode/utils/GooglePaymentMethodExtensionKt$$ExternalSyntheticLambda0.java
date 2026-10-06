package fast.dic.dict.utils;

import fast.dic.dict.domain.billing.PurchasedItem;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class GooglePaymentMethodExtensionKt$$ExternalSyntheticLambda0 implements Function1 {
    public /* synthetic */ GooglePaymentMethodExtensionKt$$ExternalSyntheticLambda0() {
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return GooglePaymentMethodExtensionKt.restorePurchaseFromGooglePlay$lambda$0(paymentMethodFragment, (PurchasedItem) obj);
    }
}
