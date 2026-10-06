package fast.dic.dict.data.billing;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: PlayBillingRepository.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
@DebugMetadata(c = "fast.dic.dict.data.billing.PlayBillingRepository", f = "PlayBillingRepository.kt", i = {0, 0, 0, 0}, l = {107}, m = "queryProducts$query", n = {"this$0", "type", "ids", "params"}, nl = {108}, s = {"L$0", "L$1", "L$2", "L$3"}, v = 2)
final class PlayBillingRepository$queryProducts$query$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;

    PlayBillingRepository$queryProducts$query$1(Continuation<? super PlayBillingRepository$queryProducts$query$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return PlayBillingRepository.queryProducts$query(null, null, null, this);
    }
}
