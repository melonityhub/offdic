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
import com.google.android.material.button.MaterialButton;
import com.google.android.material.divider.MaterialDivider;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentFullscreenModalBinding extends ViewDataBinding {
    public final Button continueButton;
    public final TextView descriptionLabel;
    public final MaterialDivider divider;

    @Bindable
    protected Boolean mRewardedAdsLoading;
    public final LinearLayout notLoggedInView;
    public final MaterialButton secondButton;
    public final Button thirdBtn;
    public final TextView titleLabel;
    public final BottomSheetToolbarLayoutBinding toolbarView;

    public abstract void setRewardedAdsLoading(Boolean bool);

    protected FragmentFullscreenModalBinding(Object obj, View view, int i, Button button, TextView textView, MaterialDivider materialDivider, LinearLayout linearLayout, MaterialButton materialButton, Button button2, TextView textView2, BottomSheetToolbarLayoutBinding bottomSheetToolbarLayoutBinding) {
        super(obj, view, i);
        this.continueButton = button;
        this.descriptionLabel = textView;
        this.divider = materialDivider;
        this.notLoggedInView = linearLayout;
        this.secondButton = materialButton;
        this.thirdBtn = button2;
        this.titleLabel = textView2;
        this.toolbarView = bottomSheetToolbarLayoutBinding;
    }

    public Boolean getRewardedAdsLoading() {
        return this.mRewardedAdsLoading;
    }

    public static FragmentFullscreenModalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentFullscreenModalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentFullscreenModalBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_fullscreen_modal, viewGroup, z, obj);
    }

    public static FragmentFullscreenModalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentFullscreenModalBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentFullscreenModalBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_fullscreen_modal, null, false, obj);
    }

    public static FragmentFullscreenModalBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentFullscreenModalBinding bind(View view, Object obj) {
        return (FragmentFullscreenModalBinding) bind(obj, view, R.layout.fragment_fullscreen_modal);
    }
}
