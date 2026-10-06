package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import fast.dic.dict.R;
import fast.dic.dict.presentation.result_order_modal.ResultOrderAdapter;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentResultOrderModalBinding extends ViewDataBinding {
    public final AppBarLayout appBar;
    public final Button backToolbarButton;
    public final ConstraintLayout ctaLayout;

    @Bindable
    protected ResultOrderAdapter mAdapter;

    @Bindable
    protected View.OnClickListener mDismissClickListener;

    @Bindable
    protected View.OnClickListener mRestoreClickListener;

    @Bindable
    protected View.OnClickListener mSaveClickListener;
    public final RecyclerView orderRv;
    public final Button primaryBtn;
    public final Button secondaryBtn;
    public final TextView subtitleTv;
    public final Toolbar toolbar;
    public final TextView toolbarTitle;

    public abstract void setAdapter(ResultOrderAdapter resultOrderAdapter);

    public abstract void setDismissClickListener(View.OnClickListener onClickListener);

    public abstract void setRestoreClickListener(View.OnClickListener onClickListener);

    public abstract void setSaveClickListener(View.OnClickListener onClickListener);

    protected FragmentResultOrderModalBinding(Object obj, View view, int i, AppBarLayout appBarLayout, Button button, ConstraintLayout constraintLayout, RecyclerView recyclerView, Button button2, Button button3, TextView textView, Toolbar toolbar, TextView textView2) {
        super(obj, view, i);
        this.appBar = appBarLayout;
        this.backToolbarButton = button;
        this.ctaLayout = constraintLayout;
        this.orderRv = recyclerView;
        this.primaryBtn = button2;
        this.secondaryBtn = button3;
        this.subtitleTv = textView;
        this.toolbar = toolbar;
        this.toolbarTitle = textView2;
    }

    public View.OnClickListener getDismissClickListener() {
        return this.mDismissClickListener;
    }

    public View.OnClickListener getRestoreClickListener() {
        return this.mRestoreClickListener;
    }

    public View.OnClickListener getSaveClickListener() {
        return this.mSaveClickListener;
    }

    public ResultOrderAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentResultOrderModalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentResultOrderModalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentResultOrderModalBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_result_order_modal, viewGroup, z, obj);
    }

    public static FragmentResultOrderModalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentResultOrderModalBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentResultOrderModalBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_result_order_modal, null, false, obj);
    }

    public static FragmentResultOrderModalBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentResultOrderModalBinding bind(View view, Object obj) {
        return (FragmentResultOrderModalBinding) bind(obj, view, R.layout.fragment_result_order_modal);
    }
}
