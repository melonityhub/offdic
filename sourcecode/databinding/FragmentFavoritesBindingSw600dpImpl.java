package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import fast.dic.dict.R;
import fast.dic.dict.presentation.favorite_screen.FavoriteFoldersAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentFavoritesBindingSw600dpImpl extends FragmentFavoritesBinding {
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
        sparseIntArray.put(R.id.sync_date_container, 4);
        sparseIntArray.put(R.id.setting_btn, 5);
        sparseIntArray.put(R.id.sync_iv, 6);
        sparseIntArray.put(R.id.swipe_refresh, 7);
        sparseIntArray.put(R.id.add_directory_fab, 8);
        sparseIntArray.put(R.id.loading_spinner, 9);
    }

    public FragmentFavoritesBindingSw600dpImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 10, sIncludes, sViewsWithIds));
    }

    private FragmentFavoritesBindingSw600dpImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FloatingActionButton) objArr[8], (CustomProgressbar) objArr[9], (RecyclerView) objArr[3], (Button) objArr[5], (SwipeRefreshLayout) objArr[7], (RelativeLayout) objArr[4], (TextView) objArr[2], (ImageView) objArr[6], (TextView) objArr[1]);
        this.mDirtyFlags = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        this.myWordsDirectoryView.setTag(null);
        this.syncDateTv.setTag(null);
        this.syncStateTv.setTag(null);
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
        if (50 == i) {
            setStateMessage((String) obj);
            return true;
        }
        if (51 == i) {
            setStateTitle((String) obj);
            return true;
        }
        if (1 != i) {
            return false;
        }
        setAdapter((FavoriteFoldersAdapter) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentFavoritesBinding
    public void setStateMessage(String str) {
        this.mStateMessage = str;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(50);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentFavoritesBinding
    public void setStateTitle(String str) {
        this.mStateTitle = str;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(51);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentFavoritesBinding
    public void setAdapter(FavoriteFoldersAdapter favoriteFoldersAdapter) {
        this.mAdapter = favoriteFoldersAdapter;
        synchronized (this) {
            this.mDirtyFlags |= 4;
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
        String str = this.mStateMessage;
        String str2 = this.mStateTitle;
        FavoriteFoldersAdapter favoriteFoldersAdapter = this.mAdapter;
        long j2 = 9 & j;
        long j3 = 10 & j;
        if ((j & 12) != 0) {
            this.myWordsDirectoryView.setAdapter(favoriteFoldersAdapter);
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.syncDateTv, str);
        }
        if (j3 != 0) {
            TextViewBindingAdapter.setText(this.syncStateTv, str2);
        }
    }
}
