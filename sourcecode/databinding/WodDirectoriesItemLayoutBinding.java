package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class WodDirectoriesItemLayoutBinding extends ViewDataBinding {
    public final TextView directoryNameLabel;
    public final ImageView ivIcon;

    @Bindable
    protected Integer mCount;

    @Bindable
    protected Boolean mIsPersianLanguage;

    @Bindable
    protected View.OnClickListener mOnClickListener;
    public final TextView wordsCountLabel;
    public final MaterialCardView wordsCountLabelParent;

    public abstract void setCount(Integer num);

    public abstract void setIsPersianLanguage(Boolean bool);

    public abstract void setOnClickListener(View.OnClickListener onClickListener);

    protected WodDirectoriesItemLayoutBinding(Object obj, View view, int i, TextView textView, ImageView imageView, TextView textView2, MaterialCardView materialCardView) {
        super(obj, view, i);
        this.directoryNameLabel = textView;
        this.ivIcon = imageView;
        this.wordsCountLabel = textView2;
        this.wordsCountLabelParent = materialCardView;
    }

    public View.OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public Integer getCount() {
        return this.mCount;
    }

    public Boolean getIsPersianLanguage() {
        return this.mIsPersianLanguage;
    }

    public static WodDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (WodDirectoriesItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.wod_directories_item_layout, viewGroup, z, obj);
    }

    public static WodDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (WodDirectoriesItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.wod_directories_item_layout, null, false, obj);
    }

    public static WodDirectoriesItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodDirectoriesItemLayoutBinding bind(View view, Object obj) {
        return (WodDirectoriesItemLayoutBinding) bind(obj, view, R.layout.wod_directories_item_layout);
    }
}
