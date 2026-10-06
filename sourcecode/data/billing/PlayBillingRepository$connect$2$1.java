package fast.dic.dict.data.billing;

import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import fast.dic.dict.domain.billing.BillingEvent;
import fast.dic.dict.utils.LoggerKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;

/* JADX INFO: compiled from: PlayBillingRepository.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"fast/dic/dict/data/billing/PlayBillingRepository$connect$2$1", "Lcom/android/billingclient/api/BillingClientStateListener;", "onBillingServiceDisconnected", "", "onBillingSetupFinished", "result", "Lcom/android/billingclient/api/BillingResult;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PlayBillingRepository$connect$2$1 implements BillingClientStateListener {
    final /* synthetic */ CancellableContinuation<Unit> $cont;

    /* JADX WARN: Multi-variable type inference failed */
    PlayBillingRepository$connect$2$1() {
        cancellableContinuationImpl2 = cancellableContinuation;
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingServiceDisconnected() {
        LoggerKt.getLogger().warn("Billing service disconnected", new Object[0]);
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public void onBillingSetupFinished(BillingResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        LoggerKt.getLogger().debug("Billing setup finished", new Object[0]);
        int responseCode = result.getResponseCode();
        PlayBillingRepository playBillingRepository = this.this$0;
        if (responseCode == 0) {
            playBillingRepository._events.tryEmit(new BillingEvent.BillingInitialized(true));
        } else {
            playBillingRepository._events.tryEmit(new BillingEvent.InitializeError(result.getResponseCode(), result.getDebugMessage()));
        }
        CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuation.resumeWith(Result.m5163constructorimpl(Unit.INSTANCE));
    }
}
