package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.generated.callback.OnClickListener;

/* JADX INFO: loaded from: classes11.dex */
public class WodHistoryRowItemLayoutBindingImpl extends WodHistoryRowItemLayoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private final View.OnClickListener mCallback11;
    private long mDirtyFlags;
    private final MaterialCardView mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public WodHistoryRowItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 3, sIncludes, sViewsWithIds));
    }

    private WodHistoryRowItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[2], (TextView) objArr[1]);
        this.mDirtyFlags = -1L;
        MaterialCardView materialCardView = (MaterialCardView) objArr[0];
        this.mboundView0 = materialCardView;
        materialCardView.setTag(null);
        this.meaningTitle.setTag(null);
        this.wordTitle.setTag(null);
        setRootTag(view);
        this.mCallback11 = new OnClickListener(this, 1);
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
        if (5 == i) {
            setDate((String) obj);
            return true;
        }
        if (32 == i) {
            setOnClickListener((View.OnClickListener) obj);
            return true;
        }
        if (54 != i) {
            return false;
        }
        setWord((String) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.WodHistoryRowItemLayoutBinding
    public void setDate(String str) {
        this.mDate = str;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.WodHistoryRowItemLayoutBinding
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(32);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.WodHistoryRowItemLayoutBinding
    public void setWord(String str) {
        this.mWord = str;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        String str = this.mDate;
        View.OnClickListener onClickListener = this.mOnClickListener;
        String str2 = this.mWord;
        long j2 = 9 & j;
        long j3 = 12 & j;
        if ((j & 8) != 0) {
            this.mboundView0.setOnClickListener(this.mCallback11);
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.meaningTitle, str);
        }
        if (j3 != 0) {
            TextViewBindingAdapter.setText(this.wordTitle, str2);
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
