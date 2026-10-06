package fast.dic.dict.presentation.select_folder_screen;

import android.content.DialogInterface;
import fast.dic.dict.models.database.FolderModel;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class SelectFavoriteFolderModal$$ExternalSyntheticLambda0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ FolderModel f$1;

    public /* synthetic */ SelectFavoriteFolderModal$$ExternalSyntheticLambda0() {
        model = folderModel;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        SelectFavoriteFolderModal.onDeleteConfirmationDialog$lambda$0$0(this.f$0, model, dialogInterface, i);
    }
}
