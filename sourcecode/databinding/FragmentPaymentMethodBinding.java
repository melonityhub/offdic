package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.adapters.PaymentMethodAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentPaymentMethodBinding extends ViewDataBinding {
    public final ConstraintLayout actionButtonContainer;
    public final ImageButton backButton;
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected PaymentMethodAdapter mDataAdapter;

    @Bindable
    protected Boolean mDecorator;
    public final RecyclerView methodsRv;
    public final Button purchaseButton;
    public final Button restoreButton;
    public final TextView toolbarTitle;
    public final ConstraintLayout topToolbarContainer;

    public abstract void setDataAdapter(PaymentMethodAdapter paymentMethodAdapter);

    public abstract void setDecorator(Boolean bool);

    protected FragmentPaymentMethodBinding(Object obj, View view, int i, ConstraintLayout constraintLayout, ImageButton imageButton, CustomProgressbar customProgressbar, RecyclerView recyclerView, Button button, Button button2, TextView textView, ConstraintLayout constraintLayout2) {
        super(obj, view, i);
        this.actionButtonContainer = constraintLayout;
        this.backButton = imageButton;
        this.loadingSpinner = customProgressbar;
        this.methodsRv = recyclerView;
        this.purchaseButton = button;
        this.restoreButton = button2;
        this.toolbarTitle = textView;
        this.topToolbarContainer = constraintLayout2;
    }

    public PaymentMethodAdapter getDataAdapter() {
        return this.mDataAdapter;
    }

    public Boolean getDecorator() {
        return this.mDecorator;
    }

    public static FragmentPaymentMethodBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentPaymentMethodBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentPaymentMethodBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_payment_method, viewGroup, z, obj);
    }

    public static FragmentPaymentMethodBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentPaymentMethodBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentPaymentMethodBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_payment_method, null, false, obj);
    }

    public static FragmentPaymentMethodBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentPaymentMethodBinding bind(View view, Object obj) {
        return (FragmentPaymentMethodBinding) bind(obj, view, R.layout.fragment_payment_method);
    }
}
