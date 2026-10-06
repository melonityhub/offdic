package fast.dic.dict.helpers;

import com.amazon.aps.shared.metrics.model.ApsMetricsDataMap;
import com.getkeepsafe.relinker.ReLinker;
import kotlin.Metadata;

/* JADX INFO: compiled from: FDDatabaseHelper.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016¨\u0006\u0007"}, d2 = {"fast/dic/dict/helpers/FDMainDatabaseHelper$databaseFile$1", "Lcom/getkeepsafe/relinker/ReLinker$LoadListener;", "success", "", "failure", ApsMetricsDataMap.APSMETRICS_FIELD_TIMESTAMP, "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDMainDatabaseHelper$databaseFile$1 implements ReLinker.LoadListener {
    FDMainDatabaseHelper$databaseFile$1() {
    }

    @Override // com.getkeepsafe.relinker.ReLinker.LoadListener
    public void success() {
        this.this$0.logger.debug("Successfully load libraries", new Object[0]);
    }

    @Override // com.getkeepsafe.relinker.ReLinker.LoadListener
    public void failure(Throwable th) {
        this.this$0.logger.debug("Fail to load libraries = " + (th != null ? th.getMessage() : null), new Object[0]);
    }
}
