package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import fast.dic.dict.BindingAdapters;

/* JADX INFO: loaded from: classes11.dex */
public class PricingHeaderItemLayoutBindingImpl extends PricingHeaderItemLayoutBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private long mDirtyFlags;
    private final ConstraintLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public PricingHeaderItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 2, sIncludes, sViewsWithIds));
    }

    private PricingHeaderItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[1]);
        this.mDirtyFlags = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        this.packageTitleTv.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.mDirtyFlags != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        if (52 == i) {
            setTitle((String) obj);
            return true;
        }
        if (19 != i) {
            return false;
        }
        setIcon((Integer) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.PricingHeaderItemLayoutBinding
    public void setTitle(String str) {
        this.mTitle = str;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(52);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PricingHeaderItemLayoutBinding
    public void setIcon(Integer num) {
        this.mIcon = num;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(19);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        String str = this.mTitle;
        Integer num = this.mIcon;
        long j2 = 5 & j;
        long j3 = j & 6;
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.packageTitleTv, str);
        }
        if (j3 != 0) {
            BindingAdapters.setLeftIcon(this.packageTitleTv, num);
        }
    }
}
