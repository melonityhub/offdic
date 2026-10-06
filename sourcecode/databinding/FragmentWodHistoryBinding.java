package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.presentation.wod_history_screen.WodMonthHistoryAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentWodHistoryBinding extends ViewDataBinding {
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected WodMonthHistoryAdapter mAdapter;
    public final RecyclerView recyclerView;

    public abstract void setAdapter(WodMonthHistoryAdapter wodMonthHistoryAdapter);

    protected FragmentWodHistoryBinding(Object obj, View view, int i, CustomProgressbar customProgressbar, RecyclerView recyclerView) {
        super(obj, view, i);
        this.loadingSpinner = customProgressbar;
        this.recyclerView = recyclerView;
    }

    public WodMonthHistoryAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentWodHistoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWodHistoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentWodHistoryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_wod_history, viewGroup, z, obj);
    }

    public static FragmentWodHistoryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWodHistoryBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentWodHistoryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_wod_history, null, false, obj);
    }

    public static FragmentWodHistoryBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWodHistoryBinding bind(View view, Object obj) {
        return (FragmentWodHistoryBinding) bind(obj, view, R.layout.fragment_wod_history);
    }
}
