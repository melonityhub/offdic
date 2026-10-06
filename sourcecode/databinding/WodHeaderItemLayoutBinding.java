package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class WodHeaderItemLayoutBinding extends ViewDataBinding {
    public final ImageView imageView2;

    @Bindable
    protected String mDate;
    public final ConstraintLayout suggestionWordParent;
    public final TextView wordTitle;

    public abstract void setDate(String str);

    protected WodHeaderItemLayoutBinding(Object obj, View view, int i, ImageView imageView, ConstraintLayout constraintLayout, TextView textView) {
        super(obj, view, i);
        this.imageView2 = imageView;
        this.suggestionWordParent = constraintLayout;
        this.wordTitle = textView;
    }

    public String getDate() {
        return this.mDate;
    }

    public static WodHeaderItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodHeaderItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (WodHeaderItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.wod_header_item_layout, viewGroup, z, obj);
    }

    public static WodHeaderItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodHeaderItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (WodHeaderItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.wod_header_item_layout, null, false, obj);
    }

    public static WodHeaderItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static WodHeaderItemLayoutBinding bind(View view, Object obj) {
        return (WodHeaderItemLayoutBinding) bind(obj, view, R.layout.wod_header_item_layout);
    }
}
