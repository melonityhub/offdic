package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class PricingHeaderItemLayoutBinding extends ViewDataBinding {

    @Bindable
    protected Integer mIcon;

    @Bindable
    protected String mTitle;
    public final TextView packageTitleTv;

    public abstract void setIcon(Integer num);

    public abstract void setTitle(String str);

    protected PricingHeaderItemLayoutBinding(Object obj, View view, int i, TextView textView) {
        super(obj, view, i);
        this.packageTitleTv = textView;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public Integer getIcon() {
        return this.mIcon;
    }

    public static PricingHeaderItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PricingHeaderItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (PricingHeaderItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.pricing_header_item_layout, viewGroup, z, obj);
    }

    public static PricingHeaderItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PricingHeaderItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (PricingHeaderItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.pricing_header_item_layout, null, false, obj);
    }

    public static PricingHeaderItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PricingHeaderItemLayoutBinding bind(View view, Object obj) {
        return (PricingHeaderItemLayoutBinding) bind(obj, view, R.layout.pricing_header_item_layout);
    }
}
