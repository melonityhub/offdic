package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import fast.dic.dict.R;
import fast.dic.dict.presentation.sort_screen.SortDialogAdapter;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentSortDialogBinding extends ViewDataBinding {
    public final AppBarLayout appBar;
    public final TextView backToolbarButton;

    @Bindable
    protected SortDialogAdapter mAdapter;

    @Bindable
    protected View.OnClickListener mDoneClickListener;
    public final RecyclerView sortRv;
    public final Toolbar toolbar;
    public final TextView toolbarTitle;

    public abstract void setAdapter(SortDialogAdapter sortDialogAdapter);

    public abstract void setDoneClickListener(View.OnClickListener onClickListener);

    protected FragmentSortDialogBinding(Object obj, View view, int i, AppBarLayout appBarLayout, TextView textView, RecyclerView recyclerView, Toolbar toolbar, TextView textView2) {
        super(obj, view, i);
        this.appBar = appBarLayout;
        this.backToolbarButton = textView;
        this.sortRv = recyclerView;
        this.toolbar = toolbar;
        this.toolbarTitle = textView2;
    }

    public View.OnClickListener getDoneClickListener() {
        return this.mDoneClickListener;
    }

    public SortDialogAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentSortDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSortDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentSortDialogBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_sort_dialog, viewGroup, z, obj);
    }

    public static FragmentSortDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSortDialogBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentSortDialogBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_sort_dialog, null, false, obj);
    }

    public static FragmentSortDialogBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSortDialogBinding bind(View view, Object obj) {
        return (FragmentSortDialogBinding) bind(obj, view, R.layout.fragment_sort_dialog);
    }
}
