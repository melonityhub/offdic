package fast.dic.dict.presentation.pricing_screen.extension;

import fast.dic.dict.models.PlanType;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class PricingExtKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ PlanType f$1;

    public /* synthetic */ PricingExtKt$$ExternalSyntheticLambda1() {
        type = planType;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return PricingExtKt.updateModelForFeatureTable$lambda$0(pricingFragment, type, (PlanType) obj);
    }
}
