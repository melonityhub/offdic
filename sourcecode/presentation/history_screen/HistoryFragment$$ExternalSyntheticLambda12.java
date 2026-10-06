package fast.dic.dict.presentation.history_screen;

import android.content.DialogInterface;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class HistoryFragment$$ExternalSyntheticLambda12 implements DialogInterface.OnClickListener {
    public final /* synthetic */ String f$0;
    public final /* synthetic */ HistoryFragment f$1;

    public /* synthetic */ HistoryFragment$$ExternalSyntheticLambda12() {
        docId = str;
        this = historyFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        HistoryFragment.showDeleteSingleItemConfirmationAlert$lambda$0$0(docId, this, dialogInterface, i);
    }
}
