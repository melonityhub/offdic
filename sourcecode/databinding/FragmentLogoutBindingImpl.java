package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import fast.dic.dict.R;
import fast.dic.dict.generated.callback.OnClickListener;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentLogoutBindingImpl extends FragmentLogoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback15;
    private final View.OnClickListener mCallback16;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.not_logged_in_view, 4);
        sparseIntArray.put(R.id.title_label, 5);
    }

    public FragmentLogoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 6, sIncludes, sViewsWithIds));
    }

    private FragmentLogoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[1], (LinearLayout) objArr[4], (Button) objArr[2], (Button) objArr[3], (TextView) objArr[5]);
        this.mDirtyFlags = -1L;
        this.descriptionLabel.setTag(null);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        this.primaryBtn.setTag(null);
        this.secondaryBtn.setTag(null);
        setRootTag(view);
        this.mCallback16 = new OnClickListener(this, 2);
        this.mCallback15 = new OnClickListener(this, 1);
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
        if (27 == i) {
            setLogoutAction((View.OnClickListener) obj);
            return true;
        }
        if (2 == i) {
            setCloseAction((View.OnClickListener) obj);
            return true;
        }
        if (28 != i) {
            return false;
        }
        setLogoutBody((String) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentLogoutBinding
    public void setLogoutAction(View.OnClickListener onClickListener) {
        this.mLogoutAction = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(27);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentLogoutBinding
    public void setCloseAction(View.OnClickListener onClickListener) {
        this.mCloseAction = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(2);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentLogoutBinding
    public void setLogoutBody(String str) {
        this.mLogoutBody = str;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(28);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        View.OnClickListener onClickListener = this.mLogoutAction;
        View.OnClickListener onClickListener2 = this.mCloseAction;
        String str = this.mLogoutBody;
        if ((12 & j) != 0) {
            TextViewBindingAdapter.setText(this.descriptionLabel, str);
        }
        if ((j & 8) != 0) {
            this.primaryBtn.setOnClickListener(this.mCallback15);
            this.secondaryBtn.setOnClickListener(this.mCallback16);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        View.OnClickListener onClickListener;
        if (i != 1) {
            if (i == 2 && (onClickListener = this.mCloseAction) != null) {
                onClickListener.onClick(view);
                return;
            }
            return;
        }
        View.OnClickListener onClickListener2 = this.mLogoutAction;
        if (onClickListener2 != null) {
            onClickListener2.onClick(view);
        }
    }
}
