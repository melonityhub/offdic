package fast.dic.dict.viewmodels;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class BazaarPaymentViewModel$$ExternalSyntheticLambda7 implements Function1 {
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ MutableLiveData f$1;

    public /* synthetic */ BazaarPaymentViewModel$$ExternalSyntheticLambda7() {
        context = context;
        mutableLiveData = mutableLiveData;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return BazaarPaymentViewModel.consumeCafeBazaarProduct$lambda$0$1(context, mutableLiveData, (Throwable) obj);
    }
}
