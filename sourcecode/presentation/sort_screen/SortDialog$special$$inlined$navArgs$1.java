package fast.dic.dict.presentation.sort_screen;

import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: FragmentNavArgsLazy.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
public final class SortDialog$special$$inlined$navArgs$1 implements Function0<Bundle> {
    public SortDialog$special$$inlined$navArgs$1() {
    }

    @Override // kotlin.jvm.functions.Function0
    public final Bundle invoke() {
        Bundle arguments = sortDialog.getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException("Fragment " + sortDialog + " has null arguments");
    }
}
