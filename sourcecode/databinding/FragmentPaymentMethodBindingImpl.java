package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.BindingAdapters;
import fast.dic.dict.R;
import fast.dic.dict.adapters.PaymentMethodAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentPaymentMethodBindingImpl extends FragmentPaymentMethodBinding {
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
        sparseIntArray.put(R.id.top_toolbar_container, 2);
        sparseIntArray.put(R.id.toolbar_title, 3);
        sparseIntArray.put(R.id.back_button, 4);
        sparseIntArray.put(R.id.action_button_container, 5);
        sparseIntArray.put(R.id.purchase_button, 6);
        sparseIntArray.put(R.id.restore_button, 7);
        sparseIntArray.put(R.id.loading_spinner, 8);
    }

    public FragmentPaymentMethodBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds));
    }

    private FragmentPaymentMethodBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[5], (ImageButton) objArr[4], (CustomProgressbar) objArr[8], (RecyclerView) objArr[1], (Button) objArr[6], (Button) objArr[7], (TextView) objArr[3], (ConstraintLayout) objArr[2]);
        this.mDirtyFlags = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        this.methodsRv.setTag(null);
        setRootTag(view);
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
        if (6 == i) {
            setDecorator((Boolean) obj);
            return true;
        }
        if (4 != i) {
            return false;
        }
        setDataAdapter((PaymentMethodAdapter) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentPaymentMethodBinding
    public void setDecorator(Boolean bool) {
        this.mDecorator = bool;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(6);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.FragmentPaymentMethodBinding
    public void setDataAdapter(PaymentMethodAdapter paymentMethodAdapter) {
        this.mDataAdapter = paymentMethodAdapter;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(4);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        Boolean bool = this.mDecorator;
        PaymentMethodAdapter paymentMethodAdapter = this.mDataAdapter;
        long j2 = 5 & j;
        boolean zSafeUnbox = j2 != 0 ? ViewDataBinding.safeUnbox(bool) : false;
        long j3 = j & 6;
        if (j2 != 0) {
            BindingAdapters.setEnableDecorator(this.methodsRv, zSafeUnbox);
        }
        if (j3 != 0) {
            BindingAdapters.setAdapter(this.methodsRv, paymentMethodAdapter);
        }
    }
}
