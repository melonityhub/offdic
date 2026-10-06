package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryAdapter;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentWodYearHistoryBinding extends ViewDataBinding {

    @Bindable
    protected WodYearHistoryAdapter mAdapter;
    public final RecyclerView recyclerView;

    public abstract void setAdapter(WodYearHistoryAdapter wodYearHistoryAdapter);

    protected FragmentWodYearHistoryBinding(Object obj, View view, int i, RecyclerView recyclerView) {
        super(obj, view, i);
        this.recyclerView = recyclerView;
    }

    public WodYearHistoryAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentWodYearHistoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWodYearHistoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentWodYearHistoryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_wod_year_history, viewGroup, z, obj);
    }

    public static FragmentWodYearHistoryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWodYearHistoryBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentWodYearHistoryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_wod_year_history, null, false, obj);
    }

    public static FragmentWodYearHistoryBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentWodYearHistoryBinding bind(View view, Object obj) {
        return (FragmentWodYearHistoryBinding) bind(obj, view, R.layout.fragment_wod_year_history);
    }
}
