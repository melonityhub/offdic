package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class CreateFavoriteDirectoryBottomSheetLayoutBinding implements ViewBinding {
    public final Button addDirectoryButton;
    public final Button closeButton;
    public final TextView createDirectoryTitleLabel;
    public final RelativeLayout createNewDirectoryView;
    public final MaterialCardView directoryNameContainer;
    public final TextInputEditText directoryNameInput;
    public final View dividerView;
    public final ConstraintLayout headerBarView;
    private final RelativeLayout rootView;

    private CreateFavoriteDirectoryBottomSheetLayoutBinding(RelativeLayout relativeLayout, Button button, Button button2, TextView textView, RelativeLayout relativeLayout2, MaterialCardView materialCardView, TextInputEditText textInputEditText, View view, ConstraintLayout constraintLayout) {
        this.rootView = relativeLayout;
        this.addDirectoryButton = button;
        this.closeButton = button2;
        this.createDirectoryTitleLabel = textView;
        this.createNewDirectoryView = relativeLayout2;
        this.directoryNameContainer = materialCardView;
        this.directoryNameInput = textInputEditText;
        this.dividerView = view;
        this.headerBarView = constraintLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static CreateFavoriteDirectoryBottomSheetLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CreateFavoriteDirectoryBottomSheetLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.create_favorite_directory_bottom_sheet_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static CreateFavoriteDirectoryBottomSheetLayoutBinding bind(View view) {
        View viewFindChildViewById;
        int i = R.id.add_directory_button;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.close_button;
            Button button2 = (Button) ViewBindings.findChildViewById(view, i);
            if (button2 != null) {
                i = R.id.create_directory_title_label;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    i = R.id.directory_name_container;
                    MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, i);
                    if (materialCardView != null) {
                        i = R.id.directory_name_input;
                        TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, i);
                        if (textInputEditText != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.divider_view))) != null) {
                            i = R.id.header_bar_view;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                            if (constraintLayout != null) {
                                return new CreateFavoriteDirectoryBottomSheetLayoutBinding(relativeLayout, button, button2, textView, relativeLayout, materialCardView, textInputEditText, viewFindChildViewById, constraintLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
