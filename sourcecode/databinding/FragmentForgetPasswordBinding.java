package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentForgetPasswordBinding implements ViewBinding {
    public final ImageButton backButton;
    public final TextView descriptionLabel;
    public final TextInputEditText emailAddressInput;
    public final CustomProgressbar loadingSpinner;
    private final FrameLayout rootView;
    public final MaterialButton sendRestPasswordButton;
    public final TextView titleLabel;
    public final ConstraintLayout topToolbarContainer;

    private FragmentForgetPasswordBinding(FrameLayout frameLayout, ImageButton imageButton, TextView textView, TextInputEditText textInputEditText, CustomProgressbar customProgressbar, MaterialButton materialButton, TextView textView2, ConstraintLayout constraintLayout) {
        this.rootView = frameLayout;
        this.backButton = imageButton;
        this.descriptionLabel = textView;
        this.emailAddressInput = textInputEditText;
        this.loadingSpinner = customProgressbar;
        this.sendRestPasswordButton = materialButton;
        this.titleLabel = textView2;
        this.topToolbarContainer = constraintLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentForgetPasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentForgetPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_forget_password, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentForgetPasswordBinding bind(View view) {
        int i = R.id.back_button;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
        if (imageButton != null) {
            i = R.id.description_label;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.email_address_input;
                TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, i);
                if (textInputEditText != null) {
                    i = R.id.loading_spinner;
                    CustomProgressbar customProgressbar = (CustomProgressbar) ViewBindings.findChildViewById(view, i);
                    if (customProgressbar != null) {
                        i = R.id.send_rest_password_button;
                        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, i);
                        if (materialButton != null) {
                            i = R.id.title_label;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView2 != null) {
                                i = R.id.top_toolbar_container;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                                if (constraintLayout != null) {
                                    return new FragmentForgetPasswordBinding((FrameLayout) view, imageButton, textView, textInputEditText, customProgressbar, materialButton, textView2, constraintLayout);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
