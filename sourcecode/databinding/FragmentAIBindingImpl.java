package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.views.CustomProgressbar;
import im.delight.android.webview.AdvancedWebView;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentAIBindingImpl extends FragmentAIBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private long mDirtyFlags;
    private final FrameLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public FragmentAIBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds));
    }

    private FragmentAIBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomProgressbar) objArr[2], (AdvancedWebView) objArr[1]);
        this.mDirtyFlags = -1L;
        this.loadingSpinner.setTag(null);
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.mboundView0 = frameLayout;
        frameLayout.setTag(null);
        this.webView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 2L;
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
        if (24 != i) {
            return false;
        }
        setLoading((Boolean) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentAIBinding
    public void setLoading(Boolean bool) {
        this.mLoading = bool;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        int i;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Boolean bool = this.mLoading;
        long j2 = j & 3;
        int i2 = 0;
        if (j2 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j2 != 0) {
                j |= zSafeUnbox ? 40L : 20L;
            }
            i = zSafeUnbox ? 4 : 0;
            if (!zSafeUnbox) {
                i2 = 8;
            }
        } else {
            i = 0;
        }
        if ((j & 3) != 0) {
            this.loadingSpinner.setVisibility(i2);
            this.webView.setVisibility(i);
        }
    }
}
