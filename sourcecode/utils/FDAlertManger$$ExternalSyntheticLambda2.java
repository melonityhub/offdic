package fast.dic.dict.utils;

import android.content.DialogInterface;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDAlertManger$$ExternalSyntheticLambda2 implements DialogInterface.OnClickListener {
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ DialogInterface.OnClickListener f$1;

    public /* synthetic */ FDAlertManger$$ExternalSyntheticLambda2() {
        quit = z;
        listenerButton1 = onClickListener;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        FDAlertManger.showAlertWithOptions$lambda$0(quit, listenerButton1, dialogInterface, i);
    }
}
