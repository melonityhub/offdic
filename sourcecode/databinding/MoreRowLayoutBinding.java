package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class MoreRowLayoutBinding extends ViewDataBinding {
    public final ImageView arrowIconImageView;

    @Bindable
    protected View.OnClickListener mOnClickListener;

    @Bindable
    protected String mTitle;

    public abstract void setOnClickListener(View.OnClickListener onClickListener);

    public abstract void setTitle(String str);

    protected MoreRowLayoutBinding(Object obj, View view, int i, ImageView imageView) {
        super(obj, view, i);
        this.arrowIconImageView = imageView;
    }

    public View.OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public static MoreRowLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static MoreRowLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (MoreRowLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.more_row_layout, viewGroup, z, obj);
    }

    public static MoreRowLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static MoreRowLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (MoreRowLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.more_row_layout, null, false, obj);
    }

    public static MoreRowLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static MoreRowLayoutBinding bind(View view, Object obj) {
        return (MoreRowLayoutBinding) bind(obj, view, R.layout.more_row_layout);
    }
}
