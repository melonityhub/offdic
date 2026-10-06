package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;
import fast.dic.dict.models.database.ListModel;

/* JADX INFO: loaded from: classes11.dex */
public abstract class WsTranslatorNoSubscriptionItemLayoutBinding extends ViewDataBinding {
    public final ImageView backIconImageview;
    public final ImageView historyIconImageview;

    @Bindable
    protected ListModel mModel;

    @Bindable
    protected View.OnClickListener mOnClickListener;
    public final TextView translatorTextSubView;
    public final TextView translatorTextView;

    public abstract void setModel(ListModel listModel);

    public abstract void setOnClickListener(View.OnClickListener onClickListener);

    protected WsTranslatorNoSubscriptionItemLayoutBinding(Object obj, View view, int i, ImageView imageView, ImageView imageView2, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.backIconImageview = imageView;
        this.historyIconImageview = imageView2;
        this.translatorTextSubView = textView;
        this.translatorTextView = textView2;
    }

    public View.OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public ListModel getModel() {
        return this.mModel;
    }

    public static WsTranslatorNoSubscriptionItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WsTranslatorNoSubscriptionItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (WsTranslatorNoSubscriptionItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.ws_translator_no_subscription_item_layout, viewGroup, z, obj);
    }

    public static WsTranslatorNoSubscriptionItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WsTranslatorNoSubscriptionItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (WsTranslatorNoSubscriptionItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.ws_translator_no_subscription_item_layout, null, false, obj);
    }

    public static WsTranslatorNoSubscriptionItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WsTranslatorNoSubscriptionItemLayoutBinding bind(View view, Object obj) {
        return (WsTranslatorNoSubscriptionItemLayoutBinding) bind(obj, view, R.layout.ws_translator_no_subscription_item_layout);
    }
}
