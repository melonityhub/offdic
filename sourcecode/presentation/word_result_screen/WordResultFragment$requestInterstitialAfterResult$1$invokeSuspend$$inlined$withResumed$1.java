package fast.dic.dict.presentation.word_result_screen;

import androidx.fragment.app.FragmentActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WithLifecycleState.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
public final class WordResultFragment$requestInterstitialAfterResult$1$invokeSuspend$$inlined$withResumed$1 implements Function0<Unit> {
    public WordResultFragment$requestInterstitialAfterResult$1$invokeSuspend$$inlined$withResumed$1() {
    }

    @Override // kotlin.jvm.functions.Function0
    public final Unit invoke() {
        WordResultViewModel viewModel = wordResultFragment.getViewModel();
        FragmentActivity fragmentActivityRequireActivity = wordResultFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        viewModel.handleFullscreenAdsForFreeUsers(fragmentActivityRequireActivity, new WordResultFragment$requestInterstitialAfterResult$1$1$1(wordResultFragment));
        return Unit.INSTANCE;
    }
}
