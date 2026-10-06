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
public abstract class HistoryEnItemLayoutBinding extends ViewDataBinding {
    public final ImageView historyIcon;

    @Bindable
    protected Boolean mIsMeaningEnglish;

    @Bindable
    protected Boolean mIsWordEnglish;

    @Bindable
    protected ListModel mModel;

    @Bindable
    protected View.OnClickListener mOnClickListener;
    public final TextView meaningTitle;
    public final TextView wordTitle;

    public abstract void setIsMeaningEnglish(Boolean bool);

    public abstract void setIsWordEnglish(Boolean bool);

    public abstract void setModel(ListModel listModel);

    public abstract void setOnClickListener(View.OnClickListener onClickListener);

    protected HistoryEnItemLayoutBinding(Object obj, View view, int i, ImageView imageView, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.historyIcon = imageView;
        this.meaningTitle = textView;
        this.wordTitle = textView2;
    }

    public Boolean getIsWordEnglish() {
        return this.mIsWordEnglish;
    }

    public Boolean getIsMeaningEnglish() {
        return this.mIsMeaningEnglish;
    }

    public View.OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public ListModel getModel() {
        return this.mModel;
    }

    public static HistoryEnItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static HistoryEnItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (HistoryEnItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.history_en_item_layout, viewGroup, z, obj);
    }

    public static HistoryEnItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static HistoryEnItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (HistoryEnItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.history_en_item_layout, null, false, obj);
    }

    public static HistoryEnItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static HistoryEnItemLayoutBinding bind(View view, Object obj) {
        return (HistoryEnItemLayoutBinding) bind(obj, view, R.layout.history_en_item_layout);
    }
}
