package fast.dic.dict.presentation.word_result_screen;

import android.os.Bundle;
import fast.dic.dict.R;
import fast.dic.dict.utils.FragmentExtensionKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: WordResultFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
final class WordResultFragment$requestInterstitialAfterResult$1$1$1$1$1 implements Function1<Boolean, Unit> {
    WordResultFragment$requestInterstitialAfterResult$1$1$1$1$1() {
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
        invoke(bool.booleanValue());
        return Unit.INSTANCE;
    }

    public final void invoke(boolean z) {
        if (z) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("fromOnBoarding", true);
            FragmentExtensionKt.openTab(fullscreenModal, R.id.moreFragment, Integer.valueOf(R.id.newPricingFragment), bundle);
        }
    }
}
