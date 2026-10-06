package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import fast.dic.dict.R;
import fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFoldersAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public class SelectDirectoryBottomSheetLayoutBindingImpl extends SelectDirectoryBottomSheetLayoutBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final ConstraintLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.top_toolbar_container, 2);
        sparseIntArray.put(R.id.close_button, 3);
        sparseIntArray.put(R.id.edit_Button, 4);
        sparseIntArray.put(R.id.add_directory_fab, 5);
        sparseIntArray.put(R.id.placeholder_label, 6);
        sparseIntArray.put(R.id.loading_spinner, 7);
    }

    public SelectDirectoryBottomSheetLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 8, sIncludes, sViewsWithIds));
    }

    private SelectDirectoryBottomSheetLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FloatingActionButton) objArr[5], (Button) objArr[3], (Button) objArr[4], (CustomProgressbar) objArr[7], (TextView) objArr[6], (RecyclerView) objArr[1], (ConstraintLayout) objArr[2]);
        this.mDirtyFlags = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        this.recyclerViewBottomSheet.setTag(null);
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
        setAdapter((SelectFavoriteFoldersAdapter) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.SelectDirectoryBottomSheetLayoutBinding
    public void setAdapter(SelectFavoriteFoldersAdapter selectFavoriteFoldersAdapter) {
        this.mAdapter = selectFavoriteFoldersAdapter;
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
        SelectFavoriteFoldersAdapter selectFavoriteFoldersAdapter = this.mAdapter;
        if ((j & 3) != 0) {
            this.recyclerViewBottomSheet.setAdapter(selectFavoriteFoldersAdapter);
        }
    }
}
