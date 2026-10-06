package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.divider.MaterialDivider;
import com.google.android.material.tabs.TabLayout;
import fast.dic.dict.R;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingStickyHeaderUIData;

/* JADX INFO: loaded from: classes11.dex */
public abstract class PricingStickyHeaderLayoutBinding extends ViewDataBinding {
    public final TabLayout TabLayout;
    public final ConstraintLayout actionButtonContainer;
    public final ConstraintLayout containerView;
    public final MaterialDivider dividerView;

    @Bindable
    protected PricingStickyHeaderUIData mModel;
    public final TextView packagePriceTv;
    public final TextView packageTitleTv;
    public final Button purchaseButton;

    public abstract void setModel(PricingStickyHeaderUIData pricingStickyHeaderUIData);

    protected PricingStickyHeaderLayoutBinding(Object obj, View view, int i, TabLayout tabLayout, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, MaterialDivider materialDivider, TextView textView, TextView textView2, Button button) {
        super(obj, view, i);
        this.TabLayout = tabLayout;
        this.actionButtonContainer = constraintLayout;
        this.containerView = constraintLayout2;
        this.dividerView = materialDivider;
        this.packagePriceTv = textView;
        this.packageTitleTv = textView2;
        this.purchaseButton = button;
    }

    public PricingStickyHeaderUIData getModel() {
        return this.mModel;
    }

    public static PricingStickyHeaderLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PricingStickyHeaderLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (PricingStickyHeaderLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.pricing_sticky_header_layout, viewGroup, z, obj);
    }

    public static PricingStickyHeaderLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PricingStickyHeaderLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (PricingStickyHeaderLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.pricing_sticky_header_layout, null, false, obj);
    }

    public static PricingStickyHeaderLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PricingStickyHeaderLayoutBinding bind(View view, Object obj) {
        return (PricingStickyHeaderLayoutBinding) bind(obj, view, R.layout.pricing_sticky_header_layout);
    }
}
