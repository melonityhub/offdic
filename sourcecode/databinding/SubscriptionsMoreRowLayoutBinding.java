package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;
import fast.dic.dict.adapters.MoreRowModel;

/* JADX INFO: loaded from: classes11.dex */
public abstract class SubscriptionsMoreRowLayoutBinding extends ViewDataBinding {

    @Bindable
    protected MoreRowModel mModel;

    @Bindable
    protected View.OnClickListener mOnSubscriptionClick;

    public abstract void setModel(MoreRowModel moreRowModel);

    public abstract void setOnSubscriptionClick(View.OnClickListener onClickListener);

    protected SubscriptionsMoreRowLayoutBinding(Object obj, View view, int i) {
        super(obj, view, i);
    }

    public MoreRowModel getModel() {
        return this.mModel;
    }

    public View.OnClickListener getOnSubscriptionClick() {
        return this.mOnSubscriptionClick;
    }

    public static SubscriptionsMoreRowLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SubscriptionsMoreRowLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (SubscriptionsMoreRowLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.subscriptions_more_row_layout, viewGroup, z, obj);
    }

    public static SubscriptionsMoreRowLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SubscriptionsMoreRowLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (SubscriptionsMoreRowLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.subscriptions_more_row_layout, null, false, obj);
    }

    public static SubscriptionsMoreRowLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SubscriptionsMoreRowLayoutBinding bind(View view, Object obj) {
        return (SubscriptionsMoreRowLayoutBinding) bind(obj, view, R.layout.subscriptions_more_row_layout);
    }
}
