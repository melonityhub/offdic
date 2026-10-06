package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;
import fast.dic.dict.models.database.ListModel;

/* JADX INFO: loaded from: classes11.dex */
public abstract class WordSuggestionItemLayoutBinding extends ViewDataBinding {

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

    protected WordSuggestionItemLayoutBinding(Object obj, View view, int i, TextView textView, TextView textView2) {
        super(obj, view, i);
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

    public static WordSuggestionItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WordSuggestionItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (WordSuggestionItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.word_suggestion_item_layout, viewGroup, z, obj);
    }

    public static WordSuggestionItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WordSuggestionItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (WordSuggestionItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.word_suggestion_item_layout, null, false, obj);
    }

    public static WordSuggestionItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WordSuggestionItemLayoutBinding bind(View view, Object obj) {
        return (WordSuggestionItemLayoutBinding) bind(obj, view, R.layout.word_suggestion_item_layout);
    }
}
