package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.BindingAdapters;
import fast.dic.dict.R;
import fast.dic.dict.generated.callback.OnClickListener;
import fast.dic.dict.models.WordCategoryModel;

/* JADX INFO: loaded from: classes11.dex */
public class CategoryEllipsisRowItemLayoutBindingImpl extends CategoryEllipsisRowItemLayoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback4;
    private long mDirtyFlags;
    private final MaterialCardView mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.words_count_label_parent, 6);
    }

    public CategoryEllipsisRowItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 7, sIncludes, sViewsWithIds));
    }

    private CategoryEllipsisRowItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[2], (ImageView) objArr[1], (ProgressBar) objArr[4], (ImageView) objArr[5], (TextView) objArr[3], (MaterialCardView) objArr[6]);
        this.mDirtyFlags = -1L;
        this.directoryNameLabel.setTag(null);
        this.ivIcon.setTag(null);
        this.loadingSpinner.setTag(null);
        this.lockIv.setTag(null);
        MaterialCardView materialCardView = (MaterialCardView) objArr[0];
        this.mboundView0 = materialCardView;
        materialCardView.setTag(null);
        this.wordsCountLabel.setTag(null);
        setRootTag(view);
        this.mCallback4 = new OnClickListener(this, 1);
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
            setModel((WordCategoryModel) obj);
            return true;
        }
        if (32 == i) {
            setOnClickListener((View.OnClickListener) obj);
            return true;
        }
        if (22 == i) {
            setIsPersianLanguage((Boolean) obj);
            return true;
        }
        if (25 != i) {
            return false;
        }
        setLocked((Boolean) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.CategoryEllipsisRowItemLayoutBinding
    public void setModel(WordCategoryModel wordCategoryModel) {
        this.mModel = wordCategoryModel;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.CategoryEllipsisRowItemLayoutBinding
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(32);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.CategoryEllipsisRowItemLayoutBinding
    public void setIsPersianLanguage(Boolean bool) {
        this.mIsPersianLanguage = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(22);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.CategoryEllipsisRowItemLayoutBinding
    public void setLocked(Boolean bool) {
        this.mLocked = bool;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(25);
        super.requestRebind();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        Integer num;
        String name;
        int i;
        int i2;
        String str;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        WordCategoryModel wordCategoryModel = this.mModel;
        View.OnClickListener onClickListener = this.mOnClickListener;
        Boolean bool = this.mIsPersianLanguage;
        Boolean bool2 = this.mLocked;
        long j2 = j & 17;
        String str2 = null;
        Integer num2 = null;
        int i3 = 0;
        if (j2 != 0) {
            if (wordCategoryModel != null) {
                String icon = wordCategoryModel.getIcon();
                Integer count = wordCategoryModel.getCount();
                name = wordCategoryModel.getName();
                str = icon;
                num2 = count;
            } else {
                str = null;
                name = null;
            }
            int iSafeUnbox = ViewDataBinding.safeUnbox(num2);
            byte b = iSafeUnbox > 0;
            boolean z = iSafeUnbox == 0;
            if (j2 != 0) {
                j |= b != false ? 64L : 32L;
            }
            if ((j & 17) != 0) {
                j |= z ? 256L : 128L;
            }
            i = b != false ? 0 : 8;
            i2 = z ? 0 : 8;
            Integer num3 = num2;
            str2 = str;
            num = num3;
        } else {
            num = null;
            name = null;
            i = 0;
            i2 = 0;
        }
        boolean zSafeUnbox = (j & 20) != 0 ? ViewDataBinding.safeUnbox(bool) : false;
        long j3 = j & 24;
        if (j3 != 0) {
            boolean zSafeUnbox2 = ViewDataBinding.safeUnbox(bool2);
            if (j3 != 0) {
                j |= zSafeUnbox2 ? 1024L : 512L;
            }
            i3 = zSafeUnbox2 ? 0 : 8;
        }
        if ((j & 20) != 0) {
            BindingAdapters.setPersianAlignment(this.directoryNameLabel, zSafeUnbox);
        }
        if ((j & 17) != 0) {
            TextViewBindingAdapter.setText(this.directoryNameLabel, name);
            BindingAdapters.setImageCatId(this.ivIcon, str2);
            this.loadingSpinner.setVisibility(i2);
            BindingAdapters.setLocalizedNumber(this.wordsCountLabel, num);
            this.wordsCountLabel.setVisibility(i);
        }
        if ((j & 24) != 0) {
            this.lockIv.setVisibility(i3);
        }
        if ((j & 16) != 0) {
            this.mboundView0.setOnClickListener(this.mCallback4);
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
