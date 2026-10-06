package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputEditText;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentEnterPasswordBinding implements ViewBinding {
    public final ImageButton backButton;
    public final TextView emailAddressLabel;
    public final Button forgetPassword;
    public final CustomProgressbar loadingSpinner;
    public final Button loginButton;
    public final TextInputEditText passwordInput;
    private final FrameLayout rootView;
    public final TextView titleLabel;
    public final ConstraintLayout topToolbarContainer;

    private FragmentEnterPasswordBinding(FrameLayout frameLayout, ImageButton imageButton, TextView textView, Button button, CustomProgressbar customProgressbar, Button button2, TextInputEditText textInputEditText, TextView textView2, ConstraintLayout constraintLayout) {
        this.rootView = frameLayout;
        this.backButton = imageButton;
        this.emailAddressLabel = textView;
        this.forgetPassword = button;
        this.loadingSpinner = customProgressbar;
        this.loginButton = button2;
        this.passwordInput = textInputEditText;
        this.titleLabel = textView2;
        this.topToolbarContainer = constraintLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentEnterPasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentEnterPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_enter_password, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentEnterPasswordBinding bind(View view) {
        int i = R.id.back_button;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
        if (imageButton != null) {
            i = R.id.email_address_label;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.forget_password;
                Button button = (Button) ViewBindings.findChildViewById(view, i);
                if (button != null) {
                    i = R.id.loading_spinner;
                    CustomProgressbar customProgressbar = (CustomProgressbar) ViewBindings.findChildViewById(view, i);
                    if (customProgressbar != null) {
                        i = R.id.login_button;
                        Button button2 = (Button) ViewBindings.findChildViewById(view, i);
                        if (button2 != null) {
                            i = R.id.password_input;
                            TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, i);
                            if (textInputEditText != null) {
                                i = R.id.title_label;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView2 != null) {
                                    i = R.id.top_toolbar_container;
                                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                                    if (constraintLayout != null) {
                                        return new FragmentEnterPasswordBinding((FrameLayout) view, imageButton, textView, button, customProgressbar, button2, textInputEditText, textView2, constraintLayout);
                                    }
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
