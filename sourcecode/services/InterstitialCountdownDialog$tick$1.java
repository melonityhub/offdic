package fast.dic.dict.services;

import kotlin.Metadata;

/* JADX INFO: compiled from: InterstitialCountdownDialog.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"fast/dic/dict/services/InterstitialCountdownDialog$tick$1", "Ljava/lang/Runnable;", "run", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class InterstitialCountdownDialog$tick$1 implements Runnable {
    InterstitialCountdownDialog$tick$1() {
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.this$0.isRunning) {
            this.this$0.remainingSeconds--;
            int i = this.this$0.remainingSeconds;
            InterstitialCountdownDialog interstitialCountdownDialog = this.this$0;
            if (i > 0) {
                interstitialCountdownDialog.render();
                this.this$0.handler.postDelayed(this, 1000L);
            } else {
                interstitialCountdownDialog.isRunning = false;
                this.this$0.onFinish.invoke();
            }
        }
    }
}
