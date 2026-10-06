package fast.dic.dict.presentation.ai_screen;

import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FragmentViewModelLazy.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
public final class AIFragment$special$$inlined$activityViewModels$default$3 implements Function0<ViewModelProvider.Factory> {
    public AIFragment$special$$inlined$activityViewModels$default$3() {
    }

    @Override // kotlin.jvm.functions.Function0
    public final ViewModelProvider.Factory invoke() {
        ViewModelProvider.Factory defaultViewModelProviderFactory = aIFragment.requireActivity().get$defaultFactory();
        Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory, "<get-defaultViewModelProviderFactory>(...)");
        return defaultViewModelProviderFactory;
    }
}
