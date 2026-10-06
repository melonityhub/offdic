package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.adapters.PricingFeatureListAdapter;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingStickyHeaderUIData;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentPricingBinding extends ViewDataBinding {
    public final LinearLayout featuresLayout;
    public final RecyclerView featuresRv;
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected PricingFeatureListAdapter mFeatureAdapter;

    @Bindable
    protected PricingStickyHeaderUIData mModel;

    @Bindable
    protected PricingPlanAdapter mPlanAdapter;
    public final RecyclerView planRv;
    public final PricingStickyHeaderLayoutBinding pricingHeaderLayout;
    public final PricingStickyHeaderLayoutBinding pricingStickyHeaderLayout;
    public final Button restorePurchaseButton;
    public final NestedScrollView scrollview;

    public abstract void setFeatureAdapter(PricingFeatureListAdapter pricingFeatureListAdapter);

    public abstract void setModel(PricingStickyHeaderUIData pricingStickyHeaderUIData);

    public abstract void setPlanAdapter(PricingPlanAdapter pricingPlanAdapter);

    protected FragmentPricingBinding(Object obj, View view, int i, LinearLayout linearLayout, RecyclerView recyclerView, CustomProgressbar customProgressbar, RecyclerView recyclerView2, PricingStickyHeaderLayoutBinding pricingStickyHeaderLayoutBinding, PricingStickyHeaderLayoutBinding pricingStickyHeaderLayoutBinding2, Button button, NestedScrollView nestedScrollView) {
        super(obj, view, i);
        this.featuresLayout = linearLayout;
        this.featuresRv = recyclerView;
        this.loadingSpinner = customProgressbar;
        this.planRv = recyclerView2;
        this.pricingHeaderLayout = pricingStickyHeaderLayoutBinding;
        this.pricingStickyHeaderLayout = pricingStickyHeaderLayoutBinding2;
        this.restorePurchaseButton = button;
        this.scrollview = nestedScrollView;
    }

    public PricingStickyHeaderUIData getModel() {
        return this.mModel;
    }

    public PricingFeatureListAdapter getFeatureAdapter() {
        return this.mFeatureAdapter;
    }

    public PricingPlanAdapter getPlanAdapter() {
        return this.mPlanAdapter;
    }

    public static FragmentPricingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentPricingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentPricingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_pricing, viewGroup, z, obj);
    }

    public static FragmentPricingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentPricingBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentPricingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_pricing, null, false, obj);
    }

    public static FragmentPricingBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentPricingBinding bind(View view, Object obj) {
        return (FragmentPricingBinding) bind(obj, view, R.layout.fragment_pricing);
    }
}
