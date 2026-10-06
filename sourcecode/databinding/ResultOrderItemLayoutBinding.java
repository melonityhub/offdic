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
public abstract class ResultOrderItemLayoutBinding extends ViewDataBinding {
    public final TextView directoryNameLabel;

    @Bindable
    protected Integer mIndex;

    @Bindable
    protected String mTitle;
    public final ImageView reorderImage;
    public final MaterialCardView titleContainerCard;

    public abstract void setIndex(Integer num);

    public abstract void setTitle(String str);

    protected ResultOrderItemLayoutBinding(Object obj, View view, int i, TextView textView, ImageView imageView, MaterialCardView materialCardView) {
        super(obj, view, i);
        this.directoryNameLabel = textView;
        this.reorderImage = imageView;
        this.titleContainerCard = materialCardView;
    }

    public Integer getIndex() {
        return this.mIndex;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public static ResultOrderItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ResultOrderItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ResultOrderItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.result_order_item_layout, viewGroup, z, obj);
    }

    public static ResultOrderItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ResultOrderItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ResultOrderItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.result_order_item_layout, null, false, obj);
    }

    public static ResultOrderItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ResultOrderItemLayoutBinding bind(View view, Object obj) {
        return (ResultOrderItemLayoutBinding) bind(obj, view, R.layout.result_order_item_layout);
    }
}
