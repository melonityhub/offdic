package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;
import fast.dic.dict.views.SearchBarView;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentWordResultBindingImpl extends FragmentWordResultBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final FrameLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.toolbar_title, 4);
        sparseIntArray.put(R.id.web_view_container, 5);
    }

    public FragmentWordResultBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds));
    }

    private FragmentWordResultBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (CustomProgressbar) objArr[3], (SearchBarView) objArr[2], (TextView) objArr[4], (Toolbar) objArr[1], (FrameLayout) objArr[5]);
        this.mDirtyFlags = -1L;
        this.loadingSpinner.setTag(null);
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.mboundView0 = frameLayout;
        frameLayout.setTag(null);
        this.searchBarView.setTag(null);
        this.toolbarTop.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 8L;
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
        if (24 == i) {
            setLoading((Boolean) obj);
            return true;
        }
        if (9 == i) {
            setEnableSearchBar((Boolean) obj);
            return true;
        }
        if (10 != i) {
            return false;
        }
        setEnableToolbar((Boolean) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentWordResultBinding
    public void setLoading(Boolean bool) {
        this.mLoading = bool;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(24);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentWordResultBinding
    public void setEnableSearchBar(Boolean bool) {
        this.mEnableSearchBar = bool;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(9);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentWordResultBinding
    public void setEnableToolbar(Boolean bool) {
        this.mEnableToolbar = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(10);
        super.requestRebind();
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002e A[PHI: r2
  0x002e: PHI (r2v1 long) = (r2v0 long), (r2v11 long) binds: [B:7:0x0019, B:14:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x004a A[PHI: r2
  0x004a: PHI (r2v3 long) = (r2v2 long), (r2v9 long) binds: [B:19:0x0035, B:26:0x0045] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        int i;
        int i2;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Boolean bool = this.mLoading;
        Boolean bool2 = this.mEnableSearchBar;
        Boolean bool3 = this.mEnableToolbar;
        long j2 = j & 9;
        int i3 = 0;
        if (j2 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j2 != 0) {
                j |= zSafeUnbox ? 32L : 16L;
            }
            if (zSafeUnbox) {
                i = 0;
            } else {
                i = 8;
            }
        } else {
            i = 0;
        }
        long j3 = j & 10;
        if (j3 != 0) {
            boolean zSafeUnbox2 = ViewDataBinding.safeUnbox(bool2);
            if (j3 != 0) {
                j |= zSafeUnbox2 ? 512L : 256L;
            }
            if (zSafeUnbox2) {
                i2 = 0;
            } else {
                i2 = 8;
            }
        } else {
            i2 = 0;
        }
        long j4 = j & 12;
        if (j4 != 0) {
            boolean zSafeUnbox3 = ViewDataBinding.safeUnbox(bool3);
            if (j4 != 0) {
                j |= zSafeUnbox3 ? 128L : 64L;
            }
            i3 = zSafeUnbox3 ? 0 : 8;
        }
        if ((j & 9) != 0) {
            this.loadingSpinner.setVisibility(i);
        }
        if ((j & 10) != 0) {
            this.searchBarView.setVisibility(i2);
        }
        if ((j & 12) != 0) {
            this.toolbarTop.setVisibility(i3);
        }
    }
}
