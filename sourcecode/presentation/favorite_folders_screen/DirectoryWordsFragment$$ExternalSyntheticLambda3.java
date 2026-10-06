package fast.dic.dict.presentation.favorite_folders_screen;

import android.content.DialogInterface;
import fast.dic.dict.models.database.ListModel;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class DirectoryWordsFragment$$ExternalSyntheticLambda3 implements DialogInterface.OnClickListener {
    public final /* synthetic */ ListModel f$1;

    public /* synthetic */ DirectoryWordsFragment$$ExternalSyntheticLambda3() {
        item = listModel;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f$0.getViewModel().deleteItem(item);
    }
}
