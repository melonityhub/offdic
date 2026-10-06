package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.BindingAdapters;
import fast.dic.dict.R;
import fast.dic.dict.generated.callback.OnClickListener;
import fast.dic.dict.models.database.FolderModel;

/* JADX INFO: loaded from: classes11.dex */
public class FavoriteDirectoriesItemLayoutBindingImpl extends FavoriteDirectoriesItemLayoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback30;
    private long mDirtyFlags;
    private final MaterialCardView mboundView0;
    private final ImageView mboundView3;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.words_count_label_parent, 4);
    }

    public FavoriteDirectoriesItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds));
    }

    private FavoriteDirectoriesItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[1], (TextView) objArr[2], (MaterialCardView) objArr[4]);
        this.mDirtyFlags = -1L;
        this.directoryNameLabel.setTag(null);
        MaterialCardView materialCardView = (MaterialCardView) objArr[0];
        this.mboundView0 = materialCardView;
        materialCardView.setTag(null);
        ImageView imageView = (ImageView) objArr[3];
        this.mboundView3 = imageView;
        imageView.setTag(null);
        this.wordsCountLabel.setTag(null);
        setRootTag(view);
        this.mCallback30 = new OnClickListener(this, 1);
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
        if (30 == i) {
            setModel((FolderModel) obj);
            return true;
        }
        if (32 == i) {
            setOnClickListener((View.OnClickListener) obj);
            return true;
        }
        if (47 != i) {
            return false;
        }
        setSelected((Boolean) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FavoriteDirectoriesItemLayoutBinding
    public void setModel(FolderModel folderModel) {
        this.mModel = folderModel;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FavoriteDirectoriesItemLayoutBinding
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(32);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FavoriteDirectoriesItemLayoutBinding
    public void setSelected(Boolean bool) {
        this.mSelected = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(47);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        Integer count;
        String name;
        int i;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        FolderModel folderModel = this.mModel;
        View.OnClickListener onClickListener = this.mOnClickListener;
        Boolean bool = this.mSelected;
        if ((j & 9) == 0 || folderModel == null) {
            count = null;
            name = null;
        } else {
            count = folderModel.getCount();
            name = folderModel.getName();
        }
        long j2 = j & 12;
        boolean z = false;
        if (j2 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j2 != 0) {
                j |= zSafeUnbox ? 32L : 16L;
            }
            z = zSafeUnbox;
            i = zSafeUnbox ? 0 : 8;
        } else {
            i = 0;
        }
        if ((9 & j) != 0) {
            TextViewBindingAdapter.setText(this.directoryNameLabel, name);
            BindingAdapters.setLocalizedNumber(this.wordsCountLabel, count);
        }
        if ((8 & j) != 0) {
            this.mboundView0.setOnClickListener(this.mCallback30);
        }
        if ((j & 12) != 0) {
            BindingAdapters.setSelectedState(this.mboundView0, z);
            this.mboundView3.setVisibility(i);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        View.OnClickListener onClickListener = this.mOnClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
