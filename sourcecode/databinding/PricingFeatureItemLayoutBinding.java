package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class PricingFeatureItemLayoutBinding extends ViewDataBinding {
    public final TextView featureDescTv;
    public final TextView featureTitleTv;
    public final ConstraintLayout leftView;

    @Bindable
    protected Integer mFeatureColor;

    @Bindable
    protected String mFeatureDescription;

    @Bindable
    protected Integer mFeatureStatusIcon;

    @Bindable
    protected String mFeatureStatusText;

    @Bindable
    protected String mFeatureTitle;
    public final ConstraintLayout rightView;

    public abstract void setFeatureColor(Integer num);

    public abstract void setFeatureDescription(String str);

    public abstract void setFeatureStatusIcon(Integer num);

    public abstract void setFeatureStatusText(String str);

    public abstract void setFeatureTitle(String str);

    protected PricingFeatureItemLayoutBinding(Object obj, View view, int i, TextView textView, TextView textView2, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        super(obj, view, i);
        this.featureDescTv = textView;
        this.featureTitleTv = textView2;
        this.leftView = constraintLayout;
        this.rightView = constraintLayout2;
    }

    public String getFeatureTitle() {
        return this.mFeatureTitle;
    }

    public String getFeatureDescription() {
        return this.mFeatureDescription;
    }

    public Integer getFeatureStatusIcon() {
        return this.mFeatureStatusIcon;
    }

    public Integer getFeatureColor() {
        return this.mFeatureColor;
    }

    public String getFeatureStatusText() {
        return this.mFeatureStatusText;
    }

    public static PricingFeatureItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PricingFeatureItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (PricingFeatureItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.pricing_feature_item_layout, viewGroup, z, obj);
    }

    public static PricingFeatureItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PricingFeatureItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (PricingFeatureItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.pricing_feature_item_layout, null, false, obj);
    }

    public static PricingFeatureItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PricingFeatureItemLayoutBinding bind(View view, Object obj) {
        return (PricingFeatureItemLayoutBinding) bind(obj, view, R.layout.pricing_feature_item_layout);
    }
}
