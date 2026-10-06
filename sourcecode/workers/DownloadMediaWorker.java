package fast.dic.dict.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.firebase.messaging.RemoteMessage;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.services.FDFirebaseMessagingService;
import fast.dic.dict.utils.Logger;
import io.sentry.SentryEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DownloadMediaWorker.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lfast/dic/dict/workers/DownloadMediaWorker;", "Landroidx/work/Worker;", Names.CONTEXT, "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", SentryEvent.JsonKeys.LOGGER, "Lfast/dic/dict/utils/Logger;", "doWork", "Landroidx/work/ListenableWorker$Result;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class DownloadMediaWorker extends Worker {
    private final Logger logger;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadMediaWorker(Context context, WorkerParameters workerParams) {
        super(context, workerParams);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(workerParams, "workerParams");
        this.logger = Logger.INSTANCE.getLogger1();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.Result doWork() {
        this.logger.debug("DownloadMediaWorker Started to showing rich notification.", new Object[0]);
        RemoteMessage remoteMessage = FDFirebaseMessagingService.INSTANCE.getRemoteMessage();
        if (remoteMessage != null) {
            FDFirebaseMessagingService.Companion companion = FDFirebaseMessagingService.INSTANCE;
            Context applicationContext = getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            companion.showNotification(remoteMessage, applicationContext);
        }
        this.logger.debug("Finished DownloadMediaWorker to showing rich notification.", new Object[0]);
        ListenableWorker.Result resultSuccess = ListenableWorker.Result.success();
        Intrinsics.checkNotNullExpressionValue(resultSuccess, "success(...)");
        return resultSuccess;
    }
}
