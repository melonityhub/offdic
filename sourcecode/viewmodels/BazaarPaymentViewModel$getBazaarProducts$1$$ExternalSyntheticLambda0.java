package fast.dic.dict.viewmodels;

import ir.cafebazaar.poolakey.callback.GetSkuDetailsCallback;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda0 implements Function1 {
    public /* synthetic */ BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda0() {
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return BazaarPaymentViewModel.AnonymousClass1.invokeSuspend$lambda$0(mutableLiveData, (GetSkuDetailsCallback) obj);
    }
}
