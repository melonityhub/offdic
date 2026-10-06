package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;
import fast.dic.dict.views.SearchBarView;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentWordResultBinding extends ViewDataBinding {
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected Boolean mEnableSearchBar;

    @Bindable
    protected Boolean mEnableToolbar;

    @Bindable
    protected Boolean mLoading;
    public final SearchBarView searchBarView;
    public final TextView toolbarTitle;
    public final Toolbar toolbarTop;
    public final FrameLayout webViewContainer;

    public abstract void setEnableSearchBar(Boolean bool);

    public abstract void setEnableToolbar(Boolean bool);

    public abstract void setLoading(Boolean bool);

    protected FragmentWordResultBinding(Object obj, View view, int i, CustomProgressbar customProgressbar, SearchBarView searchBarView, TextView textView, Toolbar toolbar, FrameLayout frameLayout) {
        super(obj, view, i);
        this.loadingSpinner = customProgressbar;
        this.searchBarView = searchBarView;
        this.toolbarTitle = textView;
        this.toolbarTop = toolbar;
        this.webViewContainer = frameLayout;
    }

    public Boolean getLoading() {
        return this.mLoading;
    }

    public Boolean getEnableToolbar() {
        return this.mEnableToolbar;
    }

    public Boolean getEnableSearchBar() {
        return this.mEnableSearchBar;
    }

    public static FragmentWordResultBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWordResultBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentWordResultBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_word_result, viewGroup, z, obj);
    }

    public static FragmentWordResultBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWordResultBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentWordResultBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_word_result, null, false, obj);
    }

    public static FragmentWordResultBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWordResultBinding bind(View view, Object obj) {
        return (FragmentWordResultBinding) bind(obj, view, R.layout.fragment_word_result);
    }
}
