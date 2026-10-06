package fast.dic.dict.presentation.favorite_folders_screen;

import androidx.lifecycle.SavedStateHandle;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class DirectoryWordsFragment$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ SavedStateHandle f$1;

    public /* synthetic */ DirectoryWordsFragment$$ExternalSyntheticLambda2() {
        savedStateHandle = savedStateHandle;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return DirectoryWordsFragment.setupSortObserver$lambda$0(this.f$0, savedStateHandle, (String) obj);
    }
}
