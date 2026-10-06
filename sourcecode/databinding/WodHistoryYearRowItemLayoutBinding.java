package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class WodHistoryYearRowItemLayoutBinding extends ViewDataBinding {

    @Bindable
    protected View.OnClickListener mOnClickListener;

    @Bindable
    protected String mYear;

    public abstract void setOnClickListener(View.OnClickListener onClickListener);

    public abstract void setYear(String str);

    protected WodHistoryYearRowItemLayoutBinding(Object obj, View view, int i) {
        super(obj, view, i);
    }

    public View.OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public String getYear() {
        return this.mYear;
    }

    public static WodHistoryYearRowItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodHistoryYearRowItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (WodHistoryYearRowItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.wod_history_year_row_item_layout, viewGroup, z, obj);
    }

    public static WodHistoryYearRowItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodHistoryYearRowItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (WodHistoryYearRowItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.wod_history_year_row_item_layout, null, false, obj);
    }

    public static WodHistoryYearRowItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodHistoryYearRowItemLayoutBinding bind(View view, Object obj) {
        return (WodHistoryYearRowItemLayoutBinding) bind(obj, view, R.layout.wod_history_year_row_item_layout);
    }
}
