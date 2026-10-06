package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.appbar.AppBarLayout;
import fast.dic.dict.R;
import fast.dic.dict.generated.callback.OnClickListener;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentCameraPermissionBindingImpl extends FragmentCameraPermissionBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback18;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;
    private final Button mboundView1;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.toolbar_view, 2);
        sparseIntArray.put(R.id.toolbar, 3);
        sparseIntArray.put(R.id.not_logged_in_view, 4);
        sparseIntArray.put(R.id.title_label, 5);
        sparseIntArray.put(R.id.description_label, 6);
        sparseIntArray.put(R.id.continue_button, 7);
    }

    public FragmentCameraPermissionBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 8, sIncludes, sViewsWithIds));
    }

    private FragmentCameraPermissionBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (Button) objArr[7], (TextView) objArr[6], (LinearLayout) objArr[4], (TextView) objArr[5], (Toolbar) objArr[3], (AppBarLayout) objArr[2]);
        this.mDirtyFlags = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
        Button button = (Button) objArr[1];
        this.mboundView1 = button;
        button.setTag(null);
        setRootTag(view);
        this.mCallback18 = new OnClickListener(this, 1);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 2L;
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
        if (31 != i) {
            return false;
        }
        setOnBackListener((View.OnClickListener) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentCameraPermissionBinding
    public void setOnBackListener(View.OnClickListener onClickListener) {
        this.mOnBackListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(31);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        View.OnClickListener onClickListener = this.mOnBackListener;
        if ((j & 2) != 0) {
            this.mboundView1.setOnClickListener(this.mCallback18);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        View.OnClickListener onClickListener = this.mOnBackListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
