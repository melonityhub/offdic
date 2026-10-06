package fast.dic.dict.viewmodels;

import android.content.Context;
import ir.cafebazaar.poolakey.callback.ConnectionCallback;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ Context f$1;

    public /* synthetic */ BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda0() {
        context = context;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return BazaarPaymentViewModel.C45401.invokeSuspend$lambda$0(mutableLiveData, context, (ConnectionCallback) obj);
    }
}
