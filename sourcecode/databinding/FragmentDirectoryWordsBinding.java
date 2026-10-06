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
import fast.dic.dict.presentation.favorite_folders_screen.FavoriteWordAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentDirectoryWordsBinding extends ViewDataBinding {
    public final RecyclerView directoryWordsRecyclerView;
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected FavoriteWordAdapter mAdapter;
    public final TextView placeholderLabel;

    public abstract void setAdapter(FavoriteWordAdapter favoriteWordAdapter);

    protected FragmentDirectoryWordsBinding(Object obj, View view, int i, RecyclerView recyclerView, CustomProgressbar customProgressbar, TextView textView) {
        super(obj, view, i);
        this.directoryWordsRecyclerView = recyclerView;
        this.loadingSpinner = customProgressbar;
        this.placeholderLabel = textView;
    }

    public FavoriteWordAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentDirectoryWordsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDirectoryWordsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentDirectoryWordsBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_directory_words, viewGroup, z, obj);
    }

    public static FragmentDirectoryWordsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDirectoryWordsBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentDirectoryWordsBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_directory_words, null, false, obj);
    }

    public static FragmentDirectoryWordsBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDirectoryWordsBinding bind(View view, Object obj) {
        return (FragmentDirectoryWordsBinding) bind(obj, view, R.layout.fragment_directory_words);
    }
}
