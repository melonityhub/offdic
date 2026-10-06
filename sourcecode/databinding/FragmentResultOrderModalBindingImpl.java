package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import fast.dic.dict.R;
import fast.dic.dict.generated.callback.OnClickListener;
import fast.dic.dict.presentation.result_order_modal.ResultOrderAdapter;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentResultOrderModalBindingImpl extends FragmentResultOrderModalBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback1;
    private final View.OnClickListener mCallback2;
    private final View.OnClickListener mCallback3;
    private long mDirtyFlags;
    private final FrameLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.app_bar, 5);
        sparseIntArray.put(R.id.toolbar, 6);
        sparseIntArray.put(R.id.toolbar_title, 7);
        sparseIntArray.put(R.id.subtitle_tv, 8);
        sparseIntArray.put(R.id.cta_layout, 9);
    }

    public FragmentResultOrderModalBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 10, sIncludes, sViewsWithIds));
    }

    private FragmentResultOrderModalBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppBarLayout) objArr[5], (Button) objArr[1], (ConstraintLayout) objArr[9], (RecyclerView) objArr[2], (Button) objArr[3], (Button) objArr[4], (TextView) objArr[8], (Toolbar) objArr[6], (TextView) objArr[7]);
        this.mDirtyFlags = -1L;
        this.backToolbarButton.setTag(null);
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.mboundView0 = frameLayout;
        frameLayout.setTag(null);
        this.orderRv.setTag(null);
        this.primaryBtn.setTag(null);
        this.secondaryBtn.setTag(null);
        setRootTag(view);
        this.mCallback3 = new OnClickListener(this, 3);
        this.mCallback1 = new OnClickListener(this, 1);
        this.mCallback2 = new OnClickListener(this, 2);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 16L;
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
        if (43 == i) {
            setRestoreClickListener((View.OnClickListener) obj);
            return true;
        }
        if (45 == i) {
            setSaveClickListener((View.OnClickListener) obj);
            return true;
        }
        if (7 == i) {
            setDismissClickListener((View.OnClickListener) obj);
            return true;
        }
        if (1 != i) {
            return false;
        }
        setAdapter((ResultOrderAdapter) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentResultOrderModalBinding
    public void setRestoreClickListener(View.OnClickListener onClickListener) {
        this.mRestoreClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(43);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentResultOrderModalBinding
    public void setSaveClickListener(View.OnClickListener onClickListener) {
        this.mSaveClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(45);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentResultOrderModalBinding
    public void setDismissClickListener(View.OnClickListener onClickListener) {
        this.mDismissClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentResultOrderModalBinding
    public void setAdapter(ResultOrderAdapter resultOrderAdapter) {
        this.mAdapter = resultOrderAdapter;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        View.OnClickListener onClickListener = this.mRestoreClickListener;
        View.OnClickListener onClickListener2 = this.mSaveClickListener;
        View.OnClickListener onClickListener3 = this.mDismissClickListener;
        ResultOrderAdapter resultOrderAdapter = this.mAdapter;
        long j2 = 24 & j;
        if ((j & 16) != 0) {
            this.backToolbarButton.setOnClickListener(this.mCallback1);
            this.primaryBtn.setOnClickListener(this.mCallback2);
            this.secondaryBtn.setOnClickListener(this.mCallback3);
        }
        if (j2 != 0) {
            this.orderRv.setAdapter(resultOrderAdapter);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        View.OnClickListener onClickListener;
        if (i == 1) {
            View.OnClickListener onClickListener2 = this.mDismissClickListener;
            if (onClickListener2 != null) {
                onClickListener2.onClick(view);
                return;
            }
            return;
        }
        if (i != 2) {
            if (i == 3 && (onClickListener = this.mRestoreClickListener) != null) {
                onClickListener.onClick(view);
                return;
            }
            return;
        }
        View.OnClickListener onClickListener3 = this.mSaveClickListener;
        if (onClickListener3 != null) {
            onClickListener3.onClick(view);
        }
    }
}
