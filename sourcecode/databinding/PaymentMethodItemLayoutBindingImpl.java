package fast.dic.dict.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.ImageViewBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.material.imageview.ShapeableImageView;
import fast.dic.dict.adapters.PaymentMethod;

/* JADX INFO: loaded from: classes11.dex */
public class PaymentMethodItemLayoutBindingImpl extends PaymentMethodItemLayoutBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private long mDirtyFlags;
    private final ConstraintLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public PaymentMethodItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds));
    }

    private PaymentMethodItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[4], (ShapeableImageView) objArr[1], (TextView) objArr[2], (TextView) objArr[3]);
        this.mDirtyFlags = -1L;
        this.arrowIconImageView.setTag(null);
        this.logoIv.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        this.methodTv.setTag(null);
        this.priceTv.setTag(null);
        setRootTag(view);
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
        if (26 == i) {
            setLogo((Drawable) obj);
            return true;
        }
        if (38 == i) {
            setPayment((PaymentMethod) obj);
            return true;
        }
        if (29 == i) {
            setMethod((String) obj);
            return true;
        }
        if (42 != i) {
            return false;
        }
        setPrice((String) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.PaymentMethodItemLayoutBinding
    public void setLogo(Drawable drawable) {
        this.mLogo = drawable;
    }

    @Override // fast.dic.dict.databinding.PaymentMethodItemLayoutBinding
    public void setPayment(PaymentMethod paymentMethod) {
        this.mPayment = paymentMethod;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(38);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PaymentMethodItemLayoutBinding
    public void setMethod(String str) {
        this.mMethod = str;
    }

    @Override // fast.dic.dict.databinding.PaymentMethodItemLayoutBinding
    public void setPrice(String str) {
        this.mPrice = str;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        String str;
        String price;
        Drawable logo;
        boolean selected;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        PaymentMethod paymentMethod = this.mPayment;
        long j2 = j & 18;
        Drawable drawable = null;
        String platformDescription = null;
        int i = 0;
        if (j2 != 0) {
            if (paymentMethod != null) {
                platformDescription = paymentMethod.getPlatformDescription();
                price = paymentMethod.getPrice();
                logo = paymentMethod.getLogo();
                selected = paymentMethod.getSelected();
            } else {
                price = null;
                logo = null;
                selected = false;
            }
            boolean z = selected;
            if (j2 != 0) {
                j |= z ? 64L : 32L;
            }
            i = z ? 0 : 4;
            str = platformDescription;
            drawable = logo;
        } else {
            str = null;
            price = null;
        }
        if ((j & 18) != 0) {
            this.arrowIconImageView.setVisibility(i);
            ImageViewBindingAdapter.setImageDrawable(this.logoIv, drawable);
            TextViewBindingAdapter.setText(this.methodTv, str);
            TextViewBindingAdapter.setText(this.priceTv, price);
        }
    }
}
