package fast.dic.dict.services.analytics;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FirebaseSegmentUser$$ExternalSyntheticLambda0 implements OnCompleteListener {
    public final /* synthetic */ String f$0;

    public /* synthetic */ FirebaseSegmentUser$$ExternalSyntheticLambda0() {
        attribute = str;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        FirebaseSegmentUser.removeAttribute$lambda$0(attribute, task);
    }
}
