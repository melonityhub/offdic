package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.adapters.PricingFeatureListAdapter;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingStickyHeaderUIData;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentPricingBindingSw600dpImpl extends FragmentPricingBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final FrameLayout mboundView0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(9);
        sIncludes = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"pricing_sticky_header_layout"}, new int[]{5}, new int[]{R.layout.pricing_sticky_header_layout});
        includedLayouts.setIncludes(2, new String[]{"pricing_sticky_header_layout"}, new int[]{4}, new int[]{R.layout.pricing_sticky_header_layout});
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.scrollview, 6);
        sparseIntArray.put(R.id.restore_purchase_button, 7);
        sparseIntArray.put(R.id.loading_spinner, 8);
    }

    public FragmentPricingBindingSw600dpImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds));
    }

    private FragmentPricingBindingSw600dpImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (LinearLayout) objArr[2], (RecyclerView) objArr[3], (CustomProgressbar) objArr[8], (RecyclerView) objArr[1], (PricingStickyHeaderLayoutBinding) objArr[4], (PricingStickyHeaderLayoutBinding) objArr[5], (Button) objArr[7], (NestedScrollView) objArr[6]);
        this.mDirtyFlags = -1L;
        this.featuresLayout.setTag(null);
        this.featuresRv.setTag(null);
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.mboundView0 = frameLayout;
        frameLayout.setTag(null);
        this.planRv.setTag(null);
        setContainedBinding(this.pricingHeaderLayout);
        setContainedBinding(this.pricingStickyHeaderLayout);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 32L;
        }
        this.pricingHeaderLayout.invalidateAll();
        this.pricingStickyHeaderLayout.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.mDirtyFlags != 0) {
                return true;
            }
            return this.pricingHeaderLayout.hasPendingBindings() || this.pricingStickyHeaderLayout.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        if (30 == i) {
            setModel((PricingStickyHeaderUIData) obj);
            return true;
        }
        if (11 == i) {
            setFeatureAdapter((PricingFeatureListAdapter) obj);
            return true;
        }
        if (39 != i) {
            return false;
        }
        setPlanAdapter((PricingPlanAdapter) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentPricingBinding
    public void setModel(PricingStickyHeaderUIData pricingStickyHeaderUIData) {
        this.mModel = pricingStickyHeaderUIData;
    }

    @Override // fast.dic.dict.databinding.FragmentPricingBinding
    public void setFeatureAdapter(PricingFeatureListAdapter pricingFeatureListAdapter) {
        this.mFeatureAdapter = pricingFeatureListAdapter;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(11);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentPricingBinding
    public void setPlanAdapter(PricingPlanAdapter pricingPlanAdapter) {
        this.mPlanAdapter = pricingPlanAdapter;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(39);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.pricingHeaderLayout.setLifecycleOwner(lifecycleOwner);
        this.pricingStickyHeaderLayout.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return onChangePricingStickyHeaderLayout((PricingStickyHeaderLayoutBinding) obj, i2);
        }
        if (i != 1) {
            return false;
        }
        return onChangePricingHeaderLayout((PricingStickyHeaderLayoutBinding) obj, i2);
    }

    private boolean onChangePricingStickyHeaderLayout(PricingStickyHeaderLayoutBinding pricingStickyHeaderLayoutBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangePricingHeaderLayout(PricingStickyHeaderLayoutBinding pricingStickyHeaderLayoutBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        PricingFeatureListAdapter pricingFeatureListAdapter = this.mFeatureAdapter;
        PricingPlanAdapter pricingPlanAdapter = this.mPlanAdapter;
        long j2 = 40 & j;
        long j3 = j & 48;
        if (j2 != 0) {
            this.featuresRv.setAdapter(pricingFeatureListAdapter);
        }
        if (j3 != 0) {
            this.planRv.setAdapter(pricingPlanAdapter);
        }
        executeBindingsOn(this.pricingHeaderLayout);
        executeBindingsOn(this.pricingStickyHeaderLayout);
    }
}
