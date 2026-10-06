package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.BindingAdapters;
import fast.dic.dict.R;
import fast.dic.dict.generated.callback.OnClickListener;
import fast.dic.dict.models.database.FolderModel;

/* JADX INFO: loaded from: classes11.dex */
public class EditFavoriteDirectoriesItemLayoutBindingImpl extends EditFavoriteDirectoriesItemLayoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback12;
    private final View.OnClickListener mCallback13;
    private long mDirtyFlags;
    private final ConstraintLayout mboundView0;
    private final MaterialCardView mboundView3;
    private final ImageView mboundView6;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.words_count_label_parent, 7);
        sparseIntArray.put(R.id.reorder_image, 8);
    }

    public EditFavoriteDirectoriesItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds));
    }

    private EditFavoriteDirectoriesItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[4], (ImageView) objArr[1], (ImageButton) objArr[2], (ImageView) objArr[8], (TextView) objArr[5], (MaterialCardView) objArr[7]);
        this.mDirtyFlags = -1L;
        this.directoryNameLabel.setTag(null);
        this.editIcon.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        MaterialCardView materialCardView = (MaterialCardView) objArr[3];
        this.mboundView3 = materialCardView;
        materialCardView.setTag(null);
        ImageView imageView = (ImageView) objArr[6];
        this.mboundView6 = imageView;
        imageView.setTag(null);
        this.removeIcon.setTag(null);
        this.wordsCountLabel.setTag(null);
        setRootTag(view);
        this.mCallback12 = new OnClickListener(this, 1);
        this.mCallback13 = new OnClickListener(this, 2);
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
        if (30 == i) {
            setModel((FolderModel) obj);
            return true;
        }
        if (33 == i) {
            setOnDeleteClickListener((View.OnClickListener) obj);
            return true;
        }
        if (35 == i) {
            setOnEditClickListener((View.OnClickListener) obj);
            return true;
        }
        if (47 != i) {
            return false;
        }
        setSelected((Boolean) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.EditFavoriteDirectoriesItemLayoutBinding
    public void setModel(FolderModel folderModel) {
        this.mModel = folderModel;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.EditFavoriteDirectoriesItemLayoutBinding
    public void setOnDeleteClickListener(View.OnClickListener onClickListener) {
        this.mOnDeleteClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(33);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.EditFavoriteDirectoriesItemLayoutBinding
    public void setOnEditClickListener(View.OnClickListener onClickListener) {
        this.mOnEditClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(35);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.EditFavoriteDirectoriesItemLayoutBinding
    public void setSelected(Boolean bool) {
        this.mSelected = bool;
        synchronized (this) {
            this.mDirtyFlags |= 8;
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
        View.OnClickListener onClickListener = this.mOnDeleteClickListener;
        View.OnClickListener onClickListener2 = this.mOnEditClickListener;
        Boolean bool = this.mSelected;
        if ((j & 17) == 0 || folderModel == null) {
            count = null;
            name = null;
        } else {
            count = folderModel.getCount();
            name = folderModel.getName();
        }
        long j2 = j & 24;
        boolean z = false;
        if (j2 != 0) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j2 != 0) {
                j |= zSafeUnbox ? 64L : 32L;
            }
            z = zSafeUnbox;
            i = zSafeUnbox ? 0 : 8;
        } else {
            i = 0;
        }
        if ((17 & j) != 0) {
            TextViewBindingAdapter.setText(this.directoryNameLabel, name);
            BindingAdapters.setLocalizedNumber(this.wordsCountLabel, count);
        }
        if ((16 & j) != 0) {
            this.editIcon.setOnClickListener(this.mCallback12);
            this.removeIcon.setOnClickListener(this.mCallback13);
        }
        if ((j & 24) != 0) {
            BindingAdapters.setSelectedState(this.mboundView3, z);
            this.mboundView6.setVisibility(i);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        View.OnClickListener onClickListener;
        if (i != 1) {
            if (i == 2 && (onClickListener = this.mOnDeleteClickListener) != null) {
                onClickListener.onClick(view);
                return;
            }
            return;
        }
        View.OnClickListener onClickListener2 = this.mOnEditClickListener;
        if (onClickListener2 != null) {
            onClickListener2.onClick(view);
        }
    }
}
