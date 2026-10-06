package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.adapters.MoreAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentMoreBinding extends ViewDataBinding {
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected MoreAdapter mAdapter;
    public final RecyclerView settingsRecyclerView;

    public abstract void setAdapter(MoreAdapter moreAdapter);

    protected FragmentMoreBinding(Object obj, View view, int i, CustomProgressbar customProgressbar, RecyclerView recyclerView) {
        super(obj, view, i);
        this.loadingSpinner = customProgressbar;
        this.settingsRecyclerView = recyclerView;
    }

    public MoreAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentMoreBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentMoreBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentMoreBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_more, viewGroup, z, obj);
    }

    public static FragmentMoreBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentMoreBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentMoreBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_more, null, false, obj);
    }

    public static FragmentMoreBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentMoreBinding bind(View view, Object obj) {
        return (FragmentMoreBinding) bind(obj, view, R.layout.fragment_more);
    }
}
