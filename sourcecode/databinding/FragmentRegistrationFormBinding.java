package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputEditText;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentRegistrationFormBinding extends ViewDataBinding {
    public final ImageButton backButton;
    public final Button editEmail;
    public final TextView emailAddressLabel;
    public final TextInputEditText enterPasswordInput;
    public final CustomProgressbar loadingSpinner;
    public final TextInputEditText repeatEnterPasswordInput;
    public final Button signupButton;
    public final Button termsButton;
    public final TextView titleLabel;
    public final ConstraintLayout topToolbarContainer;
    public final TextInputEditText userFullNameInput;

    protected FragmentRegistrationFormBinding(Object obj, View view, int i, ImageButton imageButton, Button button, TextView textView, TextInputEditText textInputEditText, CustomProgressbar customProgressbar, TextInputEditText textInputEditText2, Button button2, Button button3, TextView textView2, ConstraintLayout constraintLayout, TextInputEditText textInputEditText3) {
        super(obj, view, i);
        this.backButton = imageButton;
        this.editEmail = button;
        this.emailAddressLabel = textView;
        this.enterPasswordInput = textInputEditText;
        this.loadingSpinner = customProgressbar;
        this.repeatEnterPasswordInput = textInputEditText2;
        this.signupButton = button2;
        this.termsButton = button3;
        this.titleLabel = textView2;
        this.topToolbarContainer = constraintLayout;
        this.userFullNameInput = textInputEditText3;
    }

    public static FragmentRegistrationFormBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentRegistrationFormBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentRegistrationFormBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_registration_form, viewGroup, z, obj);
    }

    public static FragmentRegistrationFormBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentRegistrationFormBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentRegistrationFormBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_registration_form, null, false, obj);
    }

    public static FragmentRegistrationFormBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentRegistrationFormBinding bind(View view, Object obj) {
        return (FragmentRegistrationFormBinding) bind(obj, view, R.layout.fragment_registration_form);
    }
}
