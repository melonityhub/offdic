package fast.dic.dict.presentation.ai_screen;

import androidx.lifecycle.ViewModelStore;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FragmentViewModelLazy.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
public final class AIFragment$special$$inlined$activityViewModels$default$1 implements Function0<ViewModelStore> {
    public AIFragment$special$$inlined$activityViewModels$default$1() {
    }

    @Override // kotlin.jvm.functions.Function0
    public final ViewModelStore invoke() {
        ViewModelStore viewModelStore = aIFragment.requireActivity().get$viewModelStore();
        Intrinsics.checkNotNullExpressionValue(viewModelStore, "<get-viewModelStore>(...)");
        return viewModelStore;
    }
}
