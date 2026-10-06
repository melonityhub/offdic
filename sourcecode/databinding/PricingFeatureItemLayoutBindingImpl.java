package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import fast.dic.dict.BindingAdapters;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public class PricingFeatureItemLayoutBindingImpl extends PricingFeatureItemLayoutBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final ConstraintLayout mboundView0;
    private final TextView mboundView3;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.right_view, 4);
        sparseIntArray.put(R.id.left_view, 5);
    }

    public PricingFeatureItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds));
    }

    private PricingFeatureItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[2], (TextView) objArr[1], (ConstraintLayout) objArr[5], (ConstraintLayout) objArr[4]);
        this.mDirtyFlags = -1L;
        this.featureDescTv.setTag(null);
        this.featureTitleTv.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) objArr[3];
        this.mboundView3 = textView;
        textView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 32L;
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
        if (16 == i) {
            setFeatureTitle((String) obj);
            return true;
        }
        if (13 == i) {
            setFeatureDescription((String) obj);
            return true;
        }
        if (12 == i) {
            setFeatureColor((Integer) obj);
            return true;
        }
        if (14 == i) {
            setFeatureStatusIcon((Integer) obj);
            return true;
        }
        if (15 != i) {
            return false;
        }
        setFeatureStatusText((String) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.PricingFeatureItemLayoutBinding
    public void setFeatureTitle(String str) {
        this.mFeatureTitle = str;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(16);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PricingFeatureItemLayoutBinding
    public void setFeatureDescription(String str) {
        this.mFeatureDescription = str;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(13);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PricingFeatureItemLayoutBinding
    public void setFeatureColor(Integer num) {
        this.mFeatureColor = num;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(12);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PricingFeatureItemLayoutBinding
    public void setFeatureStatusIcon(Integer num) {
        this.mFeatureStatusIcon = num;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(14);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PricingFeatureItemLayoutBinding
    public void setFeatureStatusText(String str) {
        this.mFeatureStatusText = str;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(15);
        super.requestRebind();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0035 A[PHI: r2
  0x0035: PHI (r2v1 long) = (r2v0 long), (r2v6 long) binds: [B:7:0x001b, B:16:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        int i;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        String str = this.mFeatureTitle;
        String str2 = this.mFeatureDescription;
        Integer num = this.mFeatureColor;
        Integer num2 = this.mFeatureStatusIcon;
        String str3 = this.mFeatureStatusText;
        long j2 = j & 34;
        if (j2 == 0) {
            i = 0;
        } else {
            boolean zIsEmpty = str2 != null ? str2.isEmpty() : false;
            if (j2 != 0) {
                j |= !zIsEmpty ? 128L : 64L;
            }
            if (zIsEmpty) {
                i = 8;
            } else {
                i = 0;
            }
        }
        long j3 = 36 & j;
        int iSafeUnbox = j3 != 0 ? ViewDataBinding.safeUnbox(num) : 0;
        long j4 = 40 & j;
        long j5 = 48 & j;
        if ((34 & j) != 0) {
            TextViewBindingAdapter.setText(this.featureDescTv, str2);
            this.featureDescTv.setVisibility(i);
        }
        if ((j & 33) != 0) {
            TextViewBindingAdapter.setText(this.featureTitleTv, str);
        }
        if (j5 != 0) {
            TextViewBindingAdapter.setText(this.mboundView3, str3);
        }
        if (j3 != 0) {
            BindingAdapters.setTextColor(this.mboundView3, iSafeUnbox);
            BindingAdapters.setIconTintColorTextView(this.mboundView3, iSafeUnbox);
        }
        if (j4 != 0) {
            BindingAdapters.setRightIcon(this.mboundView3, num2);
        }
    }
}
