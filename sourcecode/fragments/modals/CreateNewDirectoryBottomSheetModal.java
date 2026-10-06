package fast.dic.dict.fragments.modals;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.google.android.material.textfield.TextInputEditText;
import fast.dic.dict.R;
import fast.dic.dict.helpers.database.couchbase.FDFavouriteFolder;
import fast.dic.dict.utils.EditTextExKt;
import fast.dic.dict.utils.KeyEventExtKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CreateNewDirectoryBottomSheetModal.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B9\u0012\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\tJ8\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017b\u0010\b\u0012\u0012\f\b\u0013\u0012\b\b\fJ\u0004\b\b(\u0014J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u0005H\u0016R\u001e\u0010\u0002\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "dismissed", "Lkotlin/Function1;", "", "", "currentDirectory", "documentId", "<init>", "(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "Landroid/annotation/SuppressLint;", "value", "SetTextI18n", "addDirectory", "input", "Landroid/widget/EditText;", "onStart", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class CreateNewDirectoryBottomSheetModal extends BottomSheetDialogFragment {
    private final String currentDirectory;
    private final Function1<String, Unit> dismissed;
    private final String documentId;

    public CreateNewDirectoryBottomSheetModal() {
        this(null, null, null, 7, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CreateNewDirectoryBottomSheetModal(Function1<? super String, Unit> function1, String str, String str2) {
        this.dismissed = function1;
        this.currentDirectory = str;
        this.documentId = str2;
    }

    public /* synthetic */ CreateNewDirectoryBottomSheetModal(Function1 function1, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : function1, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Resources resources;
        Resources resources2;
        String string;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.create_favorite_directory_bottom_sheet_layout, container, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.create_directory_title_label);
        final TextInputEditText textInputEditText = (TextInputEditText) viewInflate.findViewById(R.id.directory_name_input);
        final Button button = (Button) viewInflate.findViewById(R.id.add_directory_button);
        if (this.currentDirectory != null) {
            Context context = getContext();
            button.setText((context == null || (resources2 = context.getResources()) == null || (string = resources2.getString(R.string.edit)) == null) ? "" : string);
            Context context2 = getContext();
            textView.setText(((context2 == null || (resources = context2.getResources()) == null) ? null : resources.getString(R.string.edit)) + " " + this.currentDirectory);
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.modals.CreateNewDirectoryBottomSheetModal$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateNewDirectoryBottomSheetModal.onCreateView$lambda$0(this.f$0, textInputEditText, view);
            }
        });
        ((Button) viewInflate.findViewById(R.id.close_button)).setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.modals.CreateNewDirectoryBottomSheetModal$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CreateNewDirectoryBottomSheetModal.onCreateView$lambda$1(textInputEditText, this, view);
            }
        });
        String str = this.currentDirectory;
        textInputEditText.setText(str != null ? str : "");
        textInputEditText.addTextChangedListener(new TextWatcher() { // from class: fast.dic.dict.fragments.modals.CreateNewDirectoryBottomSheetModal.onCreateView.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable p0) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
                button.setEnabled(!(p0 == null || p0.length() == 0));
            }
        });
        textInputEditText.setOnKeyListener(new View.OnKeyListener() { // from class: fast.dic.dict.fragments.modals.CreateNewDirectoryBottomSheetModal.onCreateView.4
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View v, int keyCode, KeyEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                TextInputEditText textInputEditText2 = textInputEditText;
                Intrinsics.checkNotNull(textInputEditText2);
                if (!KeyEventExtKt.isReturnKey(textInputEditText2, keyCode, event.getAction())) {
                    return false;
                }
                CreateNewDirectoryBottomSheetModal createNewDirectoryBottomSheetModal = this;
                TextInputEditText textInputEditText3 = textInputEditText;
                Intrinsics.checkNotNull(textInputEditText3);
                createNewDirectoryBottomSheetModal.addDirectory(textInputEditText3);
                return true;
            }
        });
        textInputEditText.requestFocus();
        Intrinsics.checkNotNull(textInputEditText);
        EditTextExKt.showKeyboard(textInputEditText);
        Editable text = textInputEditText.getText();
        button.setEnabled(!(text == null || text.length() == 0));
        return viewInflate;
    }

    static final void onCreateView$lambda$0(CreateNewDirectoryBottomSheetModal createNewDirectoryBottomSheetModal, TextInputEditText textInputEditText, View view) {
        Intrinsics.checkNotNull(textInputEditText);
        createNewDirectoryBottomSheetModal.addDirectory(textInputEditText);
    }

    static final void onCreateView$lambda$1(TextInputEditText textInputEditText, CreateNewDirectoryBottomSheetModal createNewDirectoryBottomSheetModal, View view) {
        Intrinsics.checkNotNull(textInputEditText);
        EditTextExKt.hideKeyboard(textInputEditText);
        Function1<String, Unit> function1 = createNewDirectoryBottomSheetModal.dismissed;
        if (function1 != null) {
            function1.invoke(null);
        }
        createNewDirectoryBottomSheetModal.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addDirectory(EditText input) {
        String string = input.getText().toString();
        if (this.currentDirectory != null) {
            FDFavouriteFolder fDFavouriteFolder = new FDFavouriteFolder();
            String str = this.documentId;
            Intrinsics.checkNotNull(str);
            Boolean.valueOf(fDFavouriteFolder.updateName(str, string));
        } else {
            FDFavouriteFolder.insert$default(new FDFavouriteFolder(), string, false, 2, null);
        }
        EditTextExKt.hideKeyboard(input);
        Function1<String, Unit> function1 = this.dismissed;
        if (function1 != null) {
            function1.invoke(string);
        }
        dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Object parent = requireView().getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior.from((View) parent).setState(3);
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setSoftInputMode(16);
    }
}
