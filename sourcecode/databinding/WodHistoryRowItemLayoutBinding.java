package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class WodHistoryRowItemLayoutBinding extends ViewDataBinding {

    @Bindable
    protected String mDate;

    @Bindable
    protected View.OnClickListener mOnClickListener;

    @Bindable
    protected String mWord;
    public final TextView meaningTitle;
    public final TextView wordTitle;

    public abstract void setDate(String str);

    public abstract void setOnClickListener(View.OnClickListener onClickListener);

    public abstract void setWord(String str);

    protected WodHistoryRowItemLayoutBinding(Object obj, View view, int i, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.meaningTitle = textView;
        this.wordTitle = textView2;
    }

    public View.OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public String getWord() {
        return this.mWord;
    }

    public String getDate() {
        return this.mDate;
    }

    public static WodHistoryRowItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodHistoryRowItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (WodHistoryRowItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.wod_history_row_item_layout, viewGroup, z, obj);
    }

    public static WodHistoryRowItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodHistoryRowItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (WodHistoryRowItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.wod_history_row_item_layout, null, false, obj);
    }

    public static WodHistoryRowItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodHistoryRowItemLayoutBinding bind(View view, Object obj) {
        return (WodHistoryRowItemLayoutBinding) bind(obj, view, R.layout.wod_history_row_item_layout);
    }
}
