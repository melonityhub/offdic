package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import fast.dic.dict.BindingAdapters;
import fast.dic.dict.R;
import fast.dic.dict.generated.callback.OnClickListener;
import fast.dic.dict.models.database.ListModel;

/* JADX INFO: loaded from: classes11.dex */
public class EditModeFavoriteWordItemLayoutBindingImpl extends EditModeFavoriteWordItemLayoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback17;
    private long mDirtyFlags;
    private final ConstraintLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.suggestion_word_parent, 4);
    }

    public EditModeFavoriteWordItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds));
    }

    private EditModeFavoriteWordItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[3], (ImageButton) objArr[1], (ConstraintLayout) objArr[4], (TextView) objArr[2]);
        this.mDirtyFlags = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        this.meaningTitle.setTag(null);
        this.removeIcon.setTag(null);
        this.wordTitle.setTag(null);
        setRootTag(view);
        this.mCallback17 = new OnClickListener(this, 1);
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
            setModel((ListModel) obj);
            return true;
        }
        if (21 == i) {
            setIsMeaningEnglish((Boolean) obj);
            return true;
        }
        if (23 == i) {
            setIsWordEnglish((Boolean) obj);
            return true;
        }
        if (34 != i) {
            return false;
        }
        setOnDeleteListener((View.OnClickListener) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.EditModeFavoriteWordItemLayoutBinding
    public void setModel(ListModel listModel) {
        this.mModel = listModel;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.EditModeFavoriteWordItemLayoutBinding
    public void setIsMeaningEnglish(Boolean bool) {
        this.mIsMeaningEnglish = bool;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(21);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.EditModeFavoriteWordItemLayoutBinding
    public void setIsWordEnglish(Boolean bool) {
        this.mIsWordEnglish = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(23);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.EditModeFavoriteWordItemLayoutBinding
    public void setOnDeleteListener(View.OnClickListener onClickListener) {
        this.mOnDeleteListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(34);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        String meaning;
        String word;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        ListModel listModel = this.mModel;
        Boolean bool = this.mIsMeaningEnglish;
        Boolean bool2 = this.mIsWordEnglish;
        View.OnClickListener onClickListener = this.mOnDeleteListener;
        long j2 = 17 & j;
        if (j2 == 0 || listModel == null) {
            meaning = null;
            word = null;
        } else {
            meaning = listModel.getMeaning();
            word = listModel.getWord();
        }
        long j3 = 18 & j;
        boolean zSafeUnbox = j3 != 0 ? ViewDataBinding.safeUnbox(bool) : false;
        long j4 = 20 & j;
        boolean zSafeUnbox2 = j4 != 0 ? ViewDataBinding.safeUnbox(bool2) : false;
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.meaningTitle, meaning);
            TextViewBindingAdapter.setText(this.wordTitle, word);
        }
        if (j3 != 0) {
            BindingAdapters.setIsEnglishMeaningForFont(this.meaningTitle, zSafeUnbox);
        }
        if ((j & 16) != 0) {
            this.removeIcon.setOnClickListener(this.mCallback17);
        }
        if (j4 != 0) {
            BindingAdapters.setIsEnglishWordForFont(this.wordTitle, zSafeUnbox2);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        View.OnClickListener onClickListener = this.mOnDeleteListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
