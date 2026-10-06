package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputEditText;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentLoginSignupBinding extends ViewDataBinding {
    public final Button closeButton;
    public final TextView descriptionLabel;
    public final TextInputEditText emailAddressInput;
    public final Button forgetPassword;
    public final CustomProgressbar loadingSpinner;
    public final Button okAndNavigateButton;
    public final TextView titleLabel;
    public final ConstraintLayout topToolbarContainer;

    protected FragmentLoginSignupBinding(Object obj, View view, int i, Button button, TextView textView, TextInputEditText textInputEditText, Button button2, CustomProgressbar customProgressbar, Button button3, TextView textView2, ConstraintLayout constraintLayout) {
        super(obj, view, i);
        this.closeButton = button;
        this.descriptionLabel = textView;
        this.emailAddressInput = textInputEditText;
        this.forgetPassword = button2;
        this.loadingSpinner = customProgressbar;
        this.okAndNavigateButton = button3;
        this.titleLabel = textView2;
        this.topToolbarContainer = constraintLayout;
    }

    public static FragmentLoginSignupBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLoginSignupBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentLoginSignupBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_login_signup, viewGroup, z, obj);
    }

    public static FragmentLoginSignupBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLoginSignupBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentLoginSignupBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_login_signup, null, false, obj);
    }

    public static FragmentLoginSignupBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLoginSignupBinding bind(View view, Object obj) {
        return (FragmentLoginSignupBinding) bind(obj, view, R.layout.fragment_login_signup);
    }
}
