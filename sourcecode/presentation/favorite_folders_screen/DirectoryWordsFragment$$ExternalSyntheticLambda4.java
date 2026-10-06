package fast.dic.dict.presentation.favorite_folders_screen;

import android.content.DialogInterface;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class DirectoryWordsFragment$$ExternalSyntheticLambda4 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int f$1;

    public /* synthetic */ DirectoryWordsFragment$$ExternalSyntheticLambda4() {
        pos = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        DirectoryWordsFragment.showDeleteConfirmationWithRestore$lambda$1(this.f$0, pos, dialogInterface, i);
    }
}
