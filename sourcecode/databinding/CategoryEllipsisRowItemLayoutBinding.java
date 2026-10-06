package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.R;
import fast.dic.dict.models.WordCategoryModel;

/* JADX INFO: loaded from: classes11.dex */
public abstract class CategoryEllipsisRowItemLayoutBinding extends ViewDataBinding {
    public final TextView directoryNameLabel;
    public final ImageView ivIcon;
    public final ProgressBar loadingSpinner;
    public final ImageView lockIv;

    @Bindable
    protected Boolean mIsPersianLanguage;

    @Bindable
    protected Boolean mLocked;

    @Bindable
    protected WordCategoryModel mModel;

    @Bindable
    protected View.OnClickListener mOnClickListener;
    public final TextView wordsCountLabel;
    public final MaterialCardView wordsCountLabelParent;

    public abstract void setIsPersianLanguage(Boolean bool);

    public abstract void setLocked(Boolean bool);

    public abstract void setModel(WordCategoryModel wordCategoryModel);

    public abstract void setOnClickListener(View.OnClickListener onClickListener);

    protected CategoryEllipsisRowItemLayoutBinding(Object obj, View view, int i, TextView textView, ImageView imageView, ProgressBar progressBar, ImageView imageView2, TextView textView2, MaterialCardView materialCardView) {
        super(obj, view, i);
        this.directoryNameLabel = textView;
        this.ivIcon = imageView;
        this.loadingSpinner = progressBar;
        this.lockIv = imageView2;
        this.wordsCountLabel = textView2;
        this.wordsCountLabelParent = materialCardView;
    }

    public View.OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public WordCategoryModel getModel() {
        return this.mModel;
    }

    public Boolean getLocked() {
        return this.mLocked;
    }

    public Boolean getIsPersianLanguage() {
        return this.mIsPersianLanguage;
    }

    public static CategoryEllipsisRowItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CategoryEllipsisRowItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (CategoryEllipsisRowItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.category_ellipsis_row_item_layout, viewGroup, z, obj);
    }

    public static CategoryEllipsisRowItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CategoryEllipsisRowItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (CategoryEllipsisRowItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.category_ellipsis_row_item_layout, null, false, obj);
    }

    public static CategoryEllipsisRowItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CategoryEllipsisRowItemLayoutBinding bind(View view, Object obj) {
        return (CategoryEllipsisRowItemLayoutBinding) bind(obj, view, R.layout.category_ellipsis_row_item_layout);
    }
}
