package fast.dic.dict.presentation.word_result_screen;

import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.amazon.device.ads.DtbConstants;
import fast.dic.dict.R;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.presentation.fullscreen_modal.FullscreenModal;
import fast.dic.dict.utils.FragmentExtensionKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WordResultFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
final class WordResultFragment$requestInterstitialAfterResult$1$1$1 implements Function0<Unit> {
    final /* synthetic */ WordResultFragment this$0;

    WordResultFragment$requestInterstitialAfterResult$1$1$1(WordResultFragment wordResultFragment) {
        this.this$0 = wordResultFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        FragmentManager supportFragmentManager = this.this$0.requireActivity().getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        final FullscreenModal fullscreenModal = new FullscreenModal(true, this.this$0.getString(R.string.show_advertisements), this.this$0.getString(R.string.advertisements_description_on_boarding), this.this$0.getString(R.string.remove_ads_and_by_pro_subscription), ConstKt.FD_PRICING_SCREEN, null, null, null, null, DtbConstants.DEFAULT_PLAYER_HEIGHT, null);
        fullscreenModal.show(supportFragmentManager, "");
        fullscreenModal.setOnDismissed(new Function1<Boolean, Unit>() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$requestInterstitialAfterResult$1$1$1$1$1
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
        });
    }
}
