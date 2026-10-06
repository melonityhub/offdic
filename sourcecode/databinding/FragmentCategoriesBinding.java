package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.presentation.categories_screen.CategoriesAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentCategoriesBinding extends ViewDataBinding {
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected CategoriesAdapter mAdapter;
    public final RecyclerView myWordsDirectoryView;
    public final RecyclerView recyclerView;

    public abstract void setAdapter(CategoriesAdapter categoriesAdapter);

    protected FragmentCategoriesBinding(Object obj, View view, int i, CustomProgressbar customProgressbar, RecyclerView recyclerView, RecyclerView recyclerView2) {
        super(obj, view, i);
        this.loadingSpinner = customProgressbar;
        this.myWordsDirectoryView = recyclerView;
        this.recyclerView = recyclerView2;
    }

    public CategoriesAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentCategoriesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentCategoriesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentCategoriesBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_categories, viewGroup, z, obj);
    }

    public static FragmentCategoriesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentCategoriesBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentCategoriesBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_categories, null, false, obj);
    }

    public static FragmentCategoriesBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentCategoriesBinding bind(View view, Object obj) {
        return (FragmentCategoriesBinding) bind(obj, view, R.layout.fragment_categories);
    }
}
