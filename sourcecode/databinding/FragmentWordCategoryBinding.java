package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.presentation.word_category_screen.WordCategoryAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentWordCategoryBinding extends ViewDataBinding {
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected WordCategoryAdapter mAdapter;
    public final TextView placeholderLabel;
    public final RecyclerView recyclerView;

    public abstract void setAdapter(WordCategoryAdapter wordCategoryAdapter);

    protected FragmentWordCategoryBinding(Object obj, View view, int i, CustomProgressbar customProgressbar, TextView textView, RecyclerView recyclerView) {
        super(obj, view, i);
        this.loadingSpinner = customProgressbar;
        this.placeholderLabel = textView;
        this.recyclerView = recyclerView;
    }

    public WordCategoryAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentWordCategoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWordCategoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentWordCategoryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_word_category, viewGroup, z, obj);
    }

    public static FragmentWordCategoryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWordCategoryBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentWordCategoryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_word_category, null, false, obj);
    }

    public static FragmentWordCategoryBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWordCategoryBinding bind(View view, Object obj) {
        return (FragmentWordCategoryBinding) bind(obj, view, R.layout.fragment_word_category);
    }
}
