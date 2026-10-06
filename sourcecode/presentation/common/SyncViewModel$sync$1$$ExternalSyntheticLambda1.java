package fast.dic.dict.presentation.common;

import com.couchbase.lite.ReplicatorChange;
import com.couchbase.lite.ReplicatorChangeListener;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class SyncViewModel$sync$1$$ExternalSyntheticLambda1 implements ReplicatorChangeListener {
    public /* synthetic */ SyncViewModel$sync$1$$ExternalSyntheticLambda1() {
    }

    @Override // com.couchbase.lite.ReplicatorChangeListener, com.couchbase.lite.ChangeListener
    public final void changed(ReplicatorChange replicatorChange) {
        SyncViewModel.C45151.invokeSuspend$lambda$0$0(syncViewModel, replicatorChange);
    }
}
