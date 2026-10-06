package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.creageek.segmentedbutton.SegmentedButton;
import fast.dic.dict.R;
import fast.dic.dict.presentation.history_screen.HistoryAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentHistoryBindingSw600dpImpl extends FragmentHistoryBinding {
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
        sparseIntArray.put(R.id.history_segmented_view, 2);
        sparseIntArray.put(R.id.placeholder_label, 3);
        sparseIntArray.put(R.id.loading_spinner, 4);
    }

    public FragmentHistoryBindingSw600dpImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds));
    }

    private FragmentHistoryBindingSw600dpImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[1], (SegmentedButton) objArr[2], (CustomProgressbar) objArr[4], (TextView) objArr[3]);
        this.mDirtyFlags = -1L;
        this.historyRv.setTag(null);
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
        setAdapter((HistoryAdapter) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentHistoryBinding
    public void setAdapter(HistoryAdapter historyAdapter) {
        this.mAdapter = historyAdapter;
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
        HistoryAdapter historyAdapter = this.mAdapter;
        if ((j & 3) != 0) {
            this.historyRv.setAdapter(historyAdapter);
        }
    }
}
