package fast.dic.dict.utils;

import android.content.DialogInterface;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDAlertManger$$ExternalSyntheticLambda3 implements DialogInterface.OnClickListener {
    public final /* synthetic */ DialogInterface.OnClickListener f$0;

    public /* synthetic */ FDAlertManger$$ExternalSyntheticLambda3() {
        listenerButton2 = onClickListener;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        FDAlertManger.showAlertWithOptions$lambda$1(listenerButton2, dialogInterface, i);
    }
}
