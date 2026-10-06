package fast.dic.dict.presentation.pricing_screen.extension;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class PricingExtKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ Job f$1;
    public final /* synthetic */ Function1 f$2;

    public /* synthetic */ PricingExtKt$$ExternalSyntheticLambda0() {
        jobLaunch$default = job;
        callback = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return PricingExtKt.getProductFromGooglePlay$lambda$0(booleanRef, jobLaunch$default, callback, (List) obj);
    }
}
