package fast.dic.dict.viewmodels;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import fast.dic.dict.services.parse.FDPurchased;
import ir.cafebazaar.poolakey.callback.ConsumeCallback;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class BazaarPaymentViewModel$$ExternalSyntheticLambda8 implements Function1 {
    public final /* synthetic */ FDPurchased f$1;
    public final /* synthetic */ Context f$2;
    public final /* synthetic */ String f$3;
    public final /* synthetic */ MutableLiveData f$4;

    public /* synthetic */ BazaarPaymentViewModel$$ExternalSyntheticLambda8() {
        fdPurchased = fDPurchased;
        context = context;
        message = str;
        mutableLiveData = mutableLiveData;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return BazaarPaymentViewModel.consumeCafeBazaarProduct$lambda$0(planType, fdPurchased, context, message, mutableLiveData, (ConsumeCallback) obj);
    }
}
