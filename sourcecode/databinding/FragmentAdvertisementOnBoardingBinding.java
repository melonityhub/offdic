package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentAdvertisementOnBoardingBinding extends ViewDataBinding {
    public final Button continueButton;
    public final TextView descriptionLabel;

    @Bindable
    protected String mSecondaryButtonTitle;
    public final LinearLayout notLoggedInView;
    public final Button purchaseButton;
    public final TextView titleLabel;

    public abstract void setSecondaryButtonTitle(String str);

    protected FragmentAdvertisementOnBoardingBinding(Object obj, View view, int i, Button button, TextView textView, LinearLayout linearLayout, Button button2, TextView textView2) {
        super(obj, view, i);
        this.continueButton = button;
        this.descriptionLabel = textView;
        this.notLoggedInView = linearLayout;
        this.purchaseButton = button2;
        this.titleLabel = textView2;
    }

    public String getSecondaryButtonTitle() {
        return this.mSecondaryButtonTitle;
    }

    public static FragmentAdvertisementOnBoardingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentAdvertisementOnBoardingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentAdvertisementOnBoardingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_advertisement_on_boarding, viewGroup, z, obj);
    }

    public static FragmentAdvertisementOnBoardingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentAdvertisementOnBoardingBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentAdvertisementOnBoardingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_advertisement_on_boarding, null, false, obj);
    }

    public static FragmentAdvertisementOnBoardingBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentAdvertisementOnBoardingBinding bind(View view, Object obj) {
        return (FragmentAdvertisementOnBoardingBinding) bind(obj, view, R.layout.fragment_advertisement_on_boarding);
    }
}
