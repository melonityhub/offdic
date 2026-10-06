package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import fast.dic.dict.R;
import fast.dic.dict.generated.callback.OnClickListener;
import fast.dic.dict.presentation.sort_screen.SortDialogAdapter;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentSortDialogBindingImpl extends FragmentSortDialogBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback21;
    private long mDirtyFlags;
    private final LinearLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.app_bar, 3);
        sparseIntArray.put(R.id.toolbar, 4);
        sparseIntArray.put(R.id.toolbar_title, 5);
    }

    public FragmentSortDialogBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds));
    }

    private FragmentSortDialogBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppBarLayout) objArr[3], (TextView) objArr[1], (RecyclerView) objArr[2], (Toolbar) objArr[4], (TextView) objArr[5]);
        this.mDirtyFlags = -1L;
        this.backToolbarButton.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.mboundView0 = linearLayout;
        linearLayout.setTag(null);
        this.sortRv.setTag(null);
        setRootTag(view);
        this.mCallback21 = new OnClickListener(this, 1);
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
        if (8 == i) {
            setDoneClickListener((View.OnClickListener) obj);
            return true;
        }
        if (1 != i) {
            return false;
        }
        setAdapter((SortDialogAdapter) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentSortDialogBinding
    public void setDoneClickListener(View.OnClickListener onClickListener) {
        this.mDoneClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentSortDialogBinding
    public void setAdapter(SortDialogAdapter sortDialogAdapter) {
        this.mAdapter = sortDialogAdapter;
        synchronized (this) {
            this.mDirtyFlags |= 2;
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
        View.OnClickListener onClickListener = this.mDoneClickListener;
        SortDialogAdapter sortDialogAdapter = this.mAdapter;
        long j2 = 6 & j;
        if ((j & 4) != 0) {
            this.backToolbarButton.setOnClickListener(this.mCallback21);
        }
        if (j2 != 0) {
            this.sortRv.setAdapter(sortDialogAdapter);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        View.OnClickListener onClickListener = this.mDoneClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
