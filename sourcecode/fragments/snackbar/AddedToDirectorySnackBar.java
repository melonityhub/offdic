package fast.dic.dict.fragments.snackbar;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.snackbar.Snackbar;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.databinding.AddedToDirectorySnackbarLayoutBinding;
import fast.dic.dict.models.database.FolderModel;
import fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal;
import fast.dic.dict.utils.IntExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;

/* JADX INFO: compiled from: AddedToDirectorySnackBar.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\f\u001a\u00020\rH\u0007b\u0010\b\u000e\u0012\f\b\u000f\u0012\b\b\fJ\u0004\b\b(\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;", "", DebugKt.DEBUG_PROPERTY_VALUE_ON, "Landroid/view/View;", "title", "", "directory", "Lfast/dic/dict/models/database/FolderModel;", Names.CONTEXT, "Landroidx/fragment/app/Fragment;", "<init>", "(Landroid/view/View;Ljava/lang/String;Lfast/dic/dict/models/database/FolderModel;Landroidx/fragment/app/Fragment;)V", "show", "", "Landroid/annotation/SuppressLint;", "value", "RestrictedApi", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class AddedToDirectorySnackBar {
    private final Fragment context;
    private final FolderModel directory;
    private final View on;
    private final String title;

    public AddedToDirectorySnackBar(View on, String title, FolderModel directory, Fragment context) {
        Intrinsics.checkNotNullParameter(on, "on");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(directory, "directory");
        Intrinsics.checkNotNullParameter(context, "context");
        this.on = on;
        this.title = title;
        this.directory = directory;
        this.context = context;
    }

    public final void show() {
        Snackbar snackbarMake = Snackbar.make(this.on, "", 0);
        Intrinsics.checkNotNullExpressionValue(snackbarMake, "make(...)");
        AddedToDirectorySnackbarLayoutBinding addedToDirectorySnackbarLayoutBindingInflate = AddedToDirectorySnackbarLayoutBinding.inflate(LayoutInflater.from(this.context.requireContext()));
        Intrinsics.checkNotNullExpressionValue(addedToDirectorySnackbarLayoutBindingInflate, "inflate(...)");
        View view = snackbarMake.getView();
        Intrinsics.checkNotNull(view, "null cannot be cast to non-null type com.google.android.material.snackbar.Snackbar.SnackbarLayout");
        Snackbar.SnackbarLayout snackbarLayout = (Snackbar.SnackbarLayout) view;
        Context contextRequireContext = this.context.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        snackbarLayout.setPadding(0, 0, 0, IntExtKt.toDimensionUnit$default(48.0f, contextRequireContext, 0, 2, null));
        addedToDirectorySnackbarLayoutBindingInflate.titleTextViewSnackBar.setText(this.title);
        addedToDirectorySnackbarLayoutBindingInflate.snackBarButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.snackbar.AddedToDirectorySnackBar$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AddedToDirectorySnackBar.show$lambda$0(this.f$0, view2);
            }
        });
        snackbarLayout.addView(addedToDirectorySnackbarLayoutBindingInflate.getRoot(), 0);
        snackbarLayout.setBackgroundColor(0);
        snackbarMake.show();
    }

    static final void show$lambda$0(AddedToDirectorySnackBar addedToDirectorySnackBar, View view) {
        FragmentActivity activity = addedToDirectorySnackBar.context.getActivity();
        FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
        SelectFavoriteFolderModal selectFavoriteFolderModal = new SelectFavoriteFolderModal();
        selectFavoriteFolderModal.setFolderId(addedToDirectorySnackBar.directory.getDocumentId());
        selectFavoriteFolderModal.setWordId(addedToDirectorySnackBar.directory.getWordDocumentId());
        if (supportFragmentManager != null) {
            selectFavoriteFolderModal.show(supportFragmentManager, "");
        }
    }
}
