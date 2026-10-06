package fast.dic.dict.presentation.pricing_screen;

import fast.dic.dict.utils.FDLanguageWord;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class PricingFragment$$ExternalSyntheticLambda7 implements Function1 {
    public final /* synthetic */ FDLanguageWord.LanguageType f$1;

    public /* synthetic */ PricingFragment$$ExternalSyntheticLambda7() {
        languageType = languageType;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return PricingFragment.fetchAndShowPricingPlan$lambda$0(this.f$0, languageType, (List) obj);
    }
}
