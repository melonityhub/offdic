package fast.dic.dict.databinding;

import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.imageview.ShapeableImageView;
import fast.dic.dict.R;
import fast.dic.dict.adapters.PaymentMethod;

/* JADX INFO: loaded from: classes11.dex */
public abstract class PaymentMethodItemLayoutBinding extends ViewDataBinding {
    public final ImageView arrowIconImageView;
    public final ShapeableImageView logoIv;

    @Bindable
    protected Drawable mLogo;

    @Bindable
    protected String mMethod;

    @Bindable
    protected PaymentMethod mPayment;

    @Bindable
    protected String mPrice;
    public final TextView methodTv;
    public final TextView priceTv;

    public abstract void setLogo(Drawable drawable);

    public abstract void setMethod(String str);

    public abstract void setPayment(PaymentMethod paymentMethod);

    public abstract void setPrice(String str);

    protected PaymentMethodItemLayoutBinding(Object obj, View view, int i, ImageView imageView, ShapeableImageView shapeableImageView, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.arrowIconImageView = imageView;
        this.logoIv = shapeableImageView;
        this.methodTv = textView;
        this.priceTv = textView2;
    }

    public String getMethod() {
        return this.mMethod;
    }

    public String getPrice() {
        return this.mPrice;
    }

    public Drawable getLogo() {
        return this.mLogo;
    }

    public PaymentMethod getPayment() {
        return this.mPayment;
    }

    public static PaymentMethodItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PaymentMethodItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (PaymentMethodItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.payment_method_item_layout, viewGroup, z, obj);
    }

    public static PaymentMethodItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PaymentMethodItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (PaymentMethodItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.payment_method_item_layout, null, false, obj);
    }

    public static PaymentMethodItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PaymentMethodItemLayoutBinding bind(View view, Object obj) {
        return (PaymentMethodItemLayoutBinding) bind(obj, view, R.layout.payment_method_item_layout);
    }
}
