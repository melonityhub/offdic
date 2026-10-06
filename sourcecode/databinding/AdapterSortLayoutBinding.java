package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.R;
import fast.dic.dict.presentation.sort_screen.SortFragmentUIState;

/* JADX INFO: loaded from: classes11.dex */
public abstract class AdapterSortLayoutBinding extends ViewDataBinding {
    public final TextView languageTitleLabel;

    @Bindable
    protected SortFragmentUIState mModel;

    @Bindable
    protected View.OnClickListener mOnSelectListener;
    public final ConstraintLayout myWordsInsideOfContainer;
    public final MaterialCardView rowContainerCard;

    public abstract void setModel(SortFragmentUIState sortFragmentUIState);

    public abstract void setOnSelectListener(View.OnClickListener onClickListener);

    protected AdapterSortLayoutBinding(Object obj, View view, int i, TextView textView, ConstraintLayout constraintLayout, MaterialCardView materialCardView) {
        super(obj, view, i);
        this.languageTitleLabel = textView;
        this.myWordsInsideOfContainer = constraintLayout;
        this.rowContainerCard = materialCardView;
    }

    public View.OnClickListener getOnSelectListener() {
        return this.mOnSelectListener;
    }

    public SortFragmentUIState getModel() {
        return this.mModel;
    }

    public static AdapterSortLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static AdapterSortLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (AdapterSortLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.adapter_sort_layout, viewGroup, z, obj);
    }

    public static AdapterSortLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static AdapterSortLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (AdapterSortLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.adapter_sort_layout, null, false, obj);
    }

    public static AdapterSortLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static AdapterSortLayoutBinding bind(View view, Object obj) {
        return (AdapterSortLayoutBinding) bind(obj, view, R.layout.adapter_sort_layout);
    }
}
