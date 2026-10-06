package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import fast.dic.dict.adapters.MoreRowModel;
import fast.dic.dict.generated.callback.OnClickListener;

/* JADX INFO: loaded from: classes11.dex */
public class SubscriptionsMoreRowLayoutBindingImpl extends SubscriptionsMoreRowLayoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private final View.OnClickListener mCallback6;
    private long mDirtyFlags;
    private final Button mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public SubscriptionsMoreRowLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 1, sIncludes, sViewsWithIds));
    }

    private SubscriptionsMoreRowLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0);
        this.mDirtyFlags = -1L;
        Button button = (Button) objArr[0];
        this.mboundView0 = button;
        button.setTag(null);
        setRootTag(view);
        this.mCallback6 = new OnClickListener(this, 1);
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
        if (30 == i) {
            setModel((MoreRowModel) obj);
            return true;
        }
        if (37 != i) {
            return false;
        }
        setOnSubscriptionClick((View.OnClickListener) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.SubscriptionsMoreRowLayoutBinding
    public void setModel(MoreRowModel moreRowModel) {
        this.mModel = moreRowModel;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.SubscriptionsMoreRowLayoutBinding
    public void setOnSubscriptionClick(View.OnClickListener onClickListener) {
        this.mOnSubscriptionClick = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(37);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        MoreRowModel moreRowModel = this.mModel;
        View.OnClickListener onClickListener = this.mOnSubscriptionClick;
        long j2 = 5 & j;
        String title = (j2 == 0 || moreRowModel == null) ? null : moreRowModel.getTitle();
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.mboundView0, title);
        }
        if ((j & 4) != 0) {
            this.mboundView0.setOnClickListener(this.mCallback6);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        View.OnClickListener onClickListener = this.mOnSubscriptionClick;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
