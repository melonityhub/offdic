package fast.dic.dict.viewmodels;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import fast.dic.dict.services.parse.FDPurchased;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class BazaarPaymentViewModel$$ExternalSyntheticLambda6 implements Function0 {
    public final /* synthetic */ FDPurchased f$1;
    public final /* synthetic */ Context f$2;
    public final /* synthetic */ String f$3;
    public final /* synthetic */ MutableLiveData f$4;

    public /* synthetic */ BazaarPaymentViewModel$$ExternalSyntheticLambda6() {
        fDPurchased = fDPurchased;
        context = context;
        str = str;
        mutableLiveData = mutableLiveData;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return BazaarPaymentViewModel.consumeCafeBazaarProduct$lambda$0$0(planType, fDPurchased, context, str, mutableLiveData);
    }
}
