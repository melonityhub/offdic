package fast.dic.dict.presentation.pricing_screen.extension;

import android.util.Log;
import fast.dic.dict.domain.billing.PurchaseListingDetails;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: PricingExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
@DebugMetadata(c = "fast.dic.dict.presentation.pricing_screen.extension.PricingExtKt$getProductFromGooglePlay$timeoutJob$1", f = "PricingExt.kt", i = {}, l = {233}, m = "invokeSuspend", n = {}, nl = {234}, s = {}, v = 2)
final class PricingExtKt$getProductFromGooglePlay$timeoutJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<List<PurchaseListingDetails>, Unit> $callback;
    final /* synthetic */ Ref.BooleanRef $timedOut;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PricingExtKt$getProductFromGooglePlay$timeoutJob$1(Ref.BooleanRef booleanRef, Function1<? super List<PurchaseListingDetails>, Unit> function1, Continuation<? super PricingExtKt$getProductFromGooglePlay$timeoutJob$1> continuation) {
        super(2, continuation);
        this.$timedOut = booleanRef;
        this.$callback = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PricingExtKt$getProductFromGooglePlay$timeoutJob$1(this.$timedOut, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PricingExtKt$getProductFromGooglePlay$timeoutJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (DelayKt.delay(6000L, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        Log.d("FD-HTTP", "[Pricing] Google Play timed out after 6000ms, using server prices");
        this.$timedOut.element = true;
        this.$callback.invoke(null);
        return Unit.INSTANCE;
    }
}
