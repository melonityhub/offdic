package fast.dic.dict.presentation.common;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class SyncViewModel$logout$1$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ SyncViewModel$logout$1$$ExternalSyntheticLambda0() {
        function0 = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return SyncViewModel.AnonymousClass1.invokeSuspend$lambda$0(syncViewModel, function0, ((Boolean) obj).booleanValue());
    }
}
