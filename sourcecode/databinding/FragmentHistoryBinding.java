package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.creageek.segmentedbutton.SegmentedButton;
import fast.dic.dict.R;
import fast.dic.dict.presentation.history_screen.HistoryAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentHistoryBinding extends ViewDataBinding {
    public final RecyclerView historyRv;
    public final SegmentedButton historySegmentedView;
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected HistoryAdapter mAdapter;
    public final TextView placeholderLabel;

    public abstract void setAdapter(HistoryAdapter historyAdapter);

    protected FragmentHistoryBinding(Object obj, View view, int i, RecyclerView recyclerView, SegmentedButton segmentedButton, CustomProgressbar customProgressbar, TextView textView) {
        super(obj, view, i);
        this.historyRv = recyclerView;
        this.historySegmentedView = segmentedButton;
        this.loadingSpinner = customProgressbar;
        this.placeholderLabel = textView;
    }

    public HistoryAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentHistoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentHistoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentHistoryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_history, viewGroup, z, obj);
    }

    public static FragmentHistoryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentHistoryBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentHistoryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_history, null, false, obj);
    }

    public static FragmentHistoryBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentHistoryBinding bind(View view, Object obj) {
        return (FragmentHistoryBinding) bind(obj, view, R.layout.fragment_history);
    }
}
