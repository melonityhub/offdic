package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.BindingAdapters;
import fast.dic.dict.R;
import fast.dic.dict.generated.callback.OnClickListener;

/* JADX INFO: loaded from: classes11.dex */
public class WodDirectoriesItemLayoutBindingImpl extends WodDirectoriesItemLayoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback25;
    private long mDirtyFlags;
    private final MaterialCardView mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.iv_icon, 3);
        sparseIntArray.put(R.id.words_count_label_parent, 4);
    }

    public WodDirectoriesItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds));
    }

    private WodDirectoriesItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[1], (ImageView) objArr[3], (TextView) objArr[2], (MaterialCardView) objArr[4]);
        this.mDirtyFlags = -1L;
        this.directoryNameLabel.setTag(null);
        MaterialCardView materialCardView = (MaterialCardView) objArr[0];
        this.mboundView0 = materialCardView;
        materialCardView.setTag(null);
        this.wordsCountLabel.setTag(null);
        setRootTag(view);
        this.mCallback25 = new OnClickListener(this, 1);
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
        if (3 == i) {
            setCount((Integer) obj);
            return true;
        }
        if (32 == i) {
            setOnClickListener((View.OnClickListener) obj);
            return true;
        }
        if (22 != i) {
            return false;
        }
        setIsPersianLanguage((Boolean) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.WodDirectoriesItemLayoutBinding
    public void setCount(Integer num) {
        this.mCount = num;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.WodDirectoriesItemLayoutBinding
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(32);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.WodDirectoriesItemLayoutBinding
    public void setIsPersianLanguage(Boolean bool) {
        this.mIsPersianLanguage = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(22);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Integer num = this.mCount;
        View.OnClickListener onClickListener = this.mOnClickListener;
        long j2 = 9 & j;
        long j3 = 12 & j;
        boolean zSafeUnbox = j3 != 0 ? ViewDataBinding.safeUnbox(this.mIsPersianLanguage) : false;
        if (j3 != 0) {
            BindingAdapters.setPersianAlignment(this.directoryNameLabel, zSafeUnbox);
        }
        if ((j & 8) != 0) {
            this.mboundView0.setOnClickListener(this.mCallback25);
        }
        if (j2 != 0) {
            BindingAdapters.setLocalizedNumber(this.wordsCountLabel, num);
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
