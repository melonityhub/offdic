package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.flexbox.FlexboxLayout;
import fast.dic.dict.BindingAdapters;
import fast.dic.dict.R;
import fast.dic.dict.models.database.CategorizedWordDto;

/* JADX INFO: loaded from: classes11.dex */
public class CategorizedWordItemLayoutBindingImpl extends CategorizedWordItemLayoutBinding {
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
        sparseIntArray.put(R.id.word_title_container, 3);
        sparseIntArray.put(R.id.pos_container, 4);
    }

    public CategorizedWordItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds));
    }

    private CategorizedWordItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[2], (FlexboxLayout) objArr[4], (TextView) objArr[1], (ConstraintLayout) objArr[3]);
        this.mDirtyFlags = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        this.meaningTitle.setTag(null);
        this.wordTitle.setTag(null);
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
        if (30 == i) {
            setModel((CategorizedWordDto) obj);
            return true;
        }
        if (21 == i) {
            setIsMeaningEnglish((Boolean) obj);
            return true;
        }
        if (23 != i) {
            return false;
        }
        setIsWordEnglish((Boolean) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.CategorizedWordItemLayoutBinding
    public void setModel(CategorizedWordDto categorizedWordDto) {
        this.mModel = categorizedWordDto;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.CategorizedWordItemLayoutBinding
    public void setIsMeaningEnglish(Boolean bool) {
        this.mIsMeaningEnglish = bool;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(21);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.CategorizedWordItemLayoutBinding
    public void setIsWordEnglish(Boolean bool) {
        this.mIsWordEnglish = bool;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(23);
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
        CategorizedWordDto categorizedWordDto = this.mModel;
        Boolean bool = this.mIsMeaningEnglish;
        Boolean bool2 = this.mIsWordEnglish;
        long j2 = 9 & j;
        if (j2 == 0 || categorizedWordDto == null) {
            meaning = null;
            word = null;
        } else {
            meaning = categorizedWordDto.getMeaning();
            word = categorizedWordDto.getWord();
        }
        long j3 = 10 & j;
        boolean zSafeUnbox = j3 != 0 ? ViewDataBinding.safeUnbox(bool) : false;
        long j4 = j & 12;
        boolean zSafeUnbox2 = j4 != 0 ? ViewDataBinding.safeUnbox(bool2) : false;
        if (j3 != 0) {
            BindingAdapters.setIsEnglishMeaningForFont(this.meaningTitle, zSafeUnbox);
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.meaningTitle, meaning);
            TextViewBindingAdapter.setText(this.wordTitle, word);
        }
        if (j4 != 0) {
            BindingAdapters.setIsEnglishWordForFont(this.wordTitle, zSafeUnbox2);
        }
    }
}
