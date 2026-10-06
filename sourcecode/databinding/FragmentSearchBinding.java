package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.adapters.WordSuggestionAdapter;
import fast.dic.dict.views.CustomProgressbar;
import fast.dic.dict.views.SearchBarView;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentSearchBinding extends ViewDataBinding {
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected WordSuggestionAdapter mAdapter;
    public final TextView placeholderLabel;
    public final TextView placeholderLabelEn;
    public final ConstraintLayout placeholderNoResult;
    public final RecyclerView recyclerView;
    public final SearchBarView searchBarView;

    public abstract void setAdapter(WordSuggestionAdapter wordSuggestionAdapter);

    protected FragmentSearchBinding(Object obj, View view, int i, CustomProgressbar customProgressbar, TextView textView, TextView textView2, ConstraintLayout constraintLayout, RecyclerView recyclerView, SearchBarView searchBarView) {
        super(obj, view, i);
        this.loadingSpinner = customProgressbar;
        this.placeholderLabel = textView;
        this.placeholderLabelEn = textView2;
        this.placeholderNoResult = constraintLayout;
        this.recyclerView = recyclerView;
        this.searchBarView = searchBarView;
    }

    public WordSuggestionAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentSearchBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSearchBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentSearchBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_search, viewGroup, z, obj);
    }

    public static FragmentSearchBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSearchBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentSearchBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_search, null, false, obj);
    }

    public static FragmentSearchBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSearchBinding bind(View view, Object obj) {
        return (FragmentSearchBinding) bind(obj, view, R.layout.fragment_search);
    }
}
