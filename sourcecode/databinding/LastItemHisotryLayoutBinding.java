package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class LastItemHisotryLayoutBinding extends ViewDataBinding {
    public final TextView endOfDataViewLabel;

    protected LastItemHisotryLayoutBinding(Object obj, View view, int i, TextView textView) {
        super(obj, view, i);
        this.endOfDataViewLabel = textView;
    }

    public static LastItemHisotryLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LastItemHisotryLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (LastItemHisotryLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.last_item_hisotry_layout, viewGroup, z, obj);
    }

    public static LastItemHisotryLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LastItemHisotryLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (LastItemHisotryLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.last_item_hisotry_layout, null, false, obj);
    }

    public static LastItemHisotryLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LastItemHisotryLayoutBinding bind(View view, Object obj) {
        return (LastItemHisotryLayoutBinding) bind(obj, view, R.layout.last_item_hisotry_layout);
    }
}
