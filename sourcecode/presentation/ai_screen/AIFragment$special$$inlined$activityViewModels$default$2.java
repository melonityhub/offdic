package fast.dic.dict.presentation.ai_screen;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FragmentViewModelLazy.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
public final class AIFragment$special$$inlined$activityViewModels$default$2 implements Function0<CreationExtras> {
    final /* synthetic */ Fragment $this_activityViewModels;

    public AIFragment$special$$inlined$activityViewModels$default$2() {
        aIFragment = fragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final CreationExtras invoke() {
        CreationExtras creationExtras;
        Function0 function0 = function0;
        if (function0 != null && (creationExtras = (CreationExtras) function0.invoke()) != null) {
            return creationExtras;
        }
        CreationExtras defaultViewModelCreationExtras = aIFragment.requireActivity().getDefaultViewModelCreationExtras();
        Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "<get-defaultViewModelCreationExtras>(...)");
        return defaultViewModelCreationExtras;
    }
}
