package fast.dic.dict.helpers;

import com.google.android.gms.tasks.OnFailureListener;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDOfflineTranslator$$ExternalSyntheticLambda5 implements OnFailureListener {
    public /* synthetic */ FDOfflineTranslator$$ExternalSyntheticLambda5() {
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        FDOfflineTranslator.translateAsync$lambda$2(callback, exc);
    }
}
