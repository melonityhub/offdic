package fast.dic.dict.utils;

import fast.dic.dict.activities.MainActivity;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FragmentExtensionKt$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ String f$0;
    public final /* synthetic */ MainActivity f$1;

    public /* synthetic */ FragmentExtensionKt$$ExternalSyntheticLambda0() {
        documentId = str;
        mainActivity = mainActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        FragmentExtensionKt.navigateToAiScreen(documentId, mainActivity);
    }
}
