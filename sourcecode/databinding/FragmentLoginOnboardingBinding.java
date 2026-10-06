package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentLoginOnboardingBinding extends ViewDataBinding {
    public final Button continueButton;
    public final TextView descriptionLabel;
    public final LinearLayout notLoggedInView;
    public final TextView titleLabel;

    protected FragmentLoginOnboardingBinding(Object obj, View view, int i, Button button, TextView textView, LinearLayout linearLayout, TextView textView2) {
        super(obj, view, i);
        this.continueButton = button;
        this.descriptionLabel = textView;
        this.notLoggedInView = linearLayout;
        this.titleLabel = textView2;
    }

    public static FragmentLoginOnboardingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLoginOnboardingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentLoginOnboardingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_login_onboarding, viewGroup, z, obj);
    }

    public static FragmentLoginOnboardingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLoginOnboardingBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentLoginOnboardingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_login_onboarding, null, false, obj);
    }

    public static FragmentLoginOnboardingBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLoginOnboardingBinding bind(View view, Object obj) {
        return (FragmentLoginOnboardingBinding) bind(obj, view, R.layout.fragment_login_onboarding);
    }
}
