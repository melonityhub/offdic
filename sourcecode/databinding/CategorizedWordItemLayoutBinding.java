package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.flexbox.FlexboxLayout;
import fast.dic.dict.R;
import fast.dic.dict.models.database.CategorizedWordDto;

/* JADX INFO: loaded from: classes11.dex */
public abstract class CategorizedWordItemLayoutBinding extends ViewDataBinding {

    @Bindable
    protected Boolean mIsMeaningEnglish;

    @Bindable
    protected Boolean mIsWordEnglish;

    @Bindable
    protected CategorizedWordDto mModel;
    public final TextView meaningTitle;
    public final FlexboxLayout posContainer;
    public final TextView wordTitle;
    public final ConstraintLayout wordTitleContainer;

    public abstract void setIsMeaningEnglish(Boolean bool);

    public abstract void setIsWordEnglish(Boolean bool);

    public abstract void setModel(CategorizedWordDto categorizedWordDto);

    protected CategorizedWordItemLayoutBinding(Object obj, View view, int i, TextView textView, FlexboxLayout flexboxLayout, TextView textView2, ConstraintLayout constraintLayout) {
        super(obj, view, i);
        this.meaningTitle = textView;
        this.posContainer = flexboxLayout;
        this.wordTitle = textView2;
        this.wordTitleContainer = constraintLayout;
    }

    public Boolean getIsWordEnglish() {
        return this.mIsWordEnglish;
    }

    public Boolean getIsMeaningEnglish() {
        return this.mIsMeaningEnglish;
    }

    public CategorizedWordDto getModel() {
        return this.mModel;
    }

    public static CategorizedWordItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CategorizedWordItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (CategorizedWordItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.categorized_word_item_layout, viewGroup, z, obj);
    }

    public static CategorizedWordItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CategorizedWordItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (CategorizedWordItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.categorized_word_item_layout, null, false, obj);
    }

    public static CategorizedWordItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CategorizedWordItemLayoutBinding bind(View view, Object obj) {
        return (CategorizedWordItemLayoutBinding) bind(obj, view, R.layout.categorized_word_item_layout);
    }
}
