package fast.dic.dict.utils;

import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDAlertManger$$ExternalSyntheticLambda1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ Context f$0;

    public /* synthetic */ FDAlertManger$$ExternalSyntheticLambda1() {
        context = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        FDAlertManger.showErrorForSpeechToTextAlert$lambda$1(context, dialogInterface, i);
    }
}
