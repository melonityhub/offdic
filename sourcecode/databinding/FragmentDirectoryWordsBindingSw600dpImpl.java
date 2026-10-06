package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.presentation.favorite_folders_screen.FavoriteWordAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentDirectoryWordsBindingSw600dpImpl extends FragmentDirectoryWordsBinding {
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
        sparseIntArray.put(R.id.placeholder_label, 2);
        sparseIntArray.put(R.id.loading_spinner, 3);
    }

    public FragmentDirectoryWordsBindingSw600dpImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds));
    }

    private FragmentDirectoryWordsBindingSw600dpImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[1], (CustomProgressbar) objArr[3], (TextView) objArr[2]);
        this.mDirtyFlags = -1L;
        this.directoryWordsRecyclerView.setTag(null);
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.mboundView0 = frameLayout;
        frameLayout.setTag(null);
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
        if (1 != i) {
            return false;
        }
        setAdapter((FavoriteWordAdapter) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentDirectoryWordsBinding
    public void setAdapter(FavoriteWordAdapter favoriteWordAdapter) {
        this.mAdapter = favoriteWordAdapter;
        synchronized (this) {
            this.mDirtyFlags |= 1;
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
        FavoriteWordAdapter favoriteWordAdapter = this.mAdapter;
        if ((j & 3) != 0) {
            this.directoryWordsRecyclerView.setAdapter(favoriteWordAdapter);
        }
    }
}
