package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class AddedToDirectorySnackbarLayoutBinding implements ViewBinding {
    private final MaterialCardView rootView;
    public final Button snackBarButton;
    public final TextView titleTextViewSnackBar;

    private AddedToDirectorySnackbarLayoutBinding(MaterialCardView materialCardView, Button button, TextView textView) {
        this.rootView = materialCardView;
        this.snackBarButton = button;
        this.titleTextViewSnackBar = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static AddedToDirectorySnackbarLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AddedToDirectorySnackbarLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.added_to_directory_snackbar_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AddedToDirectorySnackbarLayoutBinding bind(View view) {
        int i = R.id.snack_bar_button;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.title_text_view_snack_bar;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new AddedToDirectorySnackbarLayoutBinding((MaterialCardView) view, button, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
