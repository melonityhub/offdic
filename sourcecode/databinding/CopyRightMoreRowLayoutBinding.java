package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class CopyRightMoreRowLayoutBinding extends ViewDataBinding {

    @Bindable
    protected String mTitle;

    public abstract void setTitle(String str);

    protected CopyRightMoreRowLayoutBinding(Object obj, View view, int i) {
        super(obj, view, i);
    }

    public String getTitle() {
        return this.mTitle;
    }

    public static CopyRightMoreRowLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CopyRightMoreRowLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (CopyRightMoreRowLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.copy_right_more_row_layout, viewGroup, z, obj);
    }

    public static CopyRightMoreRowLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CopyRightMoreRowLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (CopyRightMoreRowLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.copy_right_more_row_layout, null, false, obj);
    }

    public static CopyRightMoreRowLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CopyRightMoreRowLayoutBinding bind(View view, Object obj) {
        return (CopyRightMoreRowLayoutBinding) bind(obj, view, R.layout.copy_right_more_row_layout);
    }
}
