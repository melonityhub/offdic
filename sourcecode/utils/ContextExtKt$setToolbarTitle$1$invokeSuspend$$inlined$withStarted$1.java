package fast.dic.dict.utils;

import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import fast.dic.dict.activities.MainActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: WithLifecycleState.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
public final class ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1 implements Function0<Unit> {
    final /* synthetic */ String $title$inlined;

    public ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1() {
        str = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Unit invoke() {
        SavedStateHandle savedStateHandle;
        try {
            NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(fragment).getCurrentBackStackEntry();
            if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null) {
                String str = str;
                if (str == null) {
                    str = "";
                }
                savedStateHandle.set("toolbarTitle", str);
            }
        } catch (Exception unused) {
            FragmentActivity activity = fragment.getActivity();
            MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
            if (mainActivity != null) {
                mainActivity.updateTitle(str);
            }
        }
        return Unit.INSTANCE;
    }
}
