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
public abstract class WsTranslatorItemLayoutBinding extends ViewDataBinding {
    public final ImageView backIconImageview;
    public final ImageView historyIconImageview;

    @Bindable
    protected ListModel mModel;

    @Bindable
    protected View.OnClickListener mOnClickListener;
    public final TextView translatorTextView;

    public abstract void setModel(ListModel listModel);

    public abstract void setOnClickListener(View.OnClickListener onClickListener);

    protected WsTranslatorItemLayoutBinding(Object obj, View view, int i, ImageView imageView, ImageView imageView2, TextView textView) {
        super(obj, view, i);
        this.backIconImageview = imageView;
        this.historyIconImageview = imageView2;
        this.translatorTextView = textView;
    }

    public View.OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public ListModel getModel() {
        return this.mModel;
    }

    public static WsTranslatorItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WsTranslatorItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (WsTranslatorItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.ws_translator_item_layout, viewGroup, z, obj);
    }

    public static WsTranslatorItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WsTranslatorItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (WsTranslatorItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.ws_translator_item_layout, null, false, obj);
    }

    public static WsTranslatorItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WsTranslatorItemLayoutBinding bind(View view, Object obj) {
        return (WsTranslatorItemLayoutBinding) bind(obj, view, R.layout.ws_translator_item_layout);
    }
}
