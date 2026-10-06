package fast.dic.dict.utils;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EditTextEx.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0004"}, d2 = {"showKeyboard", "", "Landroid/widget/EditText;", "hideKeyboard", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class EditTextExKt {
    public static final void showKeyboard(final EditText editText) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        editText.postDelayed(new Runnable() { // from class: fast.dic.dict.utils.EditTextExKt$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                EditTextExKt.showKeyboard$lambda$0(editText);
            }
        }, 400L);
    }

    static final void showKeyboard$lambda$0(EditText editText) {
        Object systemService = editText.getContext().getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).showSoftInput(editText, 1);
    }

    public static final void hideKeyboard(EditText editText) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        Object systemService = editText.getContext().getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).hideSoftInputFromWindow(editText.getWindowToken(), 0);
    }
}
