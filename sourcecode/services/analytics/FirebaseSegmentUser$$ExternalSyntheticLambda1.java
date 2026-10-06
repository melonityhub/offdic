package fast.dic.dict.services.analytics;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FirebaseSegmentUser$$ExternalSyntheticLambda1 implements OnCompleteListener {
    public final /* synthetic */ String f$0;

    public /* synthetic */ FirebaseSegmentUser$$ExternalSyntheticLambda1() {
        attribute = str;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        FirebaseSegmentUser.addAttribute$lambda$0(attribute, task);
    }
}
