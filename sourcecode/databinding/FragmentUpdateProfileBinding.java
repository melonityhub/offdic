package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentUpdateProfileBinding implements ViewBinding {
    public final Button editButton;
    public final TextView editTextSettingsText;
    public final TextInputEditText emailAddressInput;
    public final CustomProgressbar loadingSpinner;
    private final FrameLayout rootView;
    public final TextInputEditText userFullNameInput;

    private FragmentUpdateProfileBinding(FrameLayout frameLayout, Button button, TextView textView, TextInputEditText textInputEditText, CustomProgressbar customProgressbar, TextInputEditText textInputEditText2) {
        this.rootView = frameLayout;
        this.editButton = button;
        this.editTextSettingsText = textView;
        this.emailAddressInput = textInputEditText;
        this.loadingSpinner = customProgressbar;
        this.userFullNameInput = textInputEditText2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentUpdateProfileBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentUpdateProfileBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_update_profile, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentUpdateProfileBinding bind(View view) {
        int i = R.id.edit_Button;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.editTextSettingsText;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.email_address_input;
                TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, i);
                if (textInputEditText != null) {
                    i = R.id.loading_spinner;
                    CustomProgressbar customProgressbar = (CustomProgressbar) ViewBindings.findChildViewById(view, i);
                    if (customProgressbar != null) {
                        i = R.id.user_full_name_input;
                        TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(view, i);
                        if (textInputEditText2 != null) {
                            return new FragmentUpdateProfileBinding((FrameLayout) view, button, textView, textInputEditText, customProgressbar, textInputEditText2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
