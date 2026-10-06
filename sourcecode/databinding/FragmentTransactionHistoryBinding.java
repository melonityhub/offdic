package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentTransactionHistoryBinding extends ViewDataBinding {
    public final CustomProgressbar loadingSpinner;
    public final TextView placeholderLabel;
    public final RecyclerView recyclerView;

    protected FragmentTransactionHistoryBinding(Object obj, View view, int i, CustomProgressbar customProgressbar, TextView textView, RecyclerView recyclerView) {
        super(obj, view, i);
        this.loadingSpinner = customProgressbar;
        this.placeholderLabel = textView;
        this.recyclerView = recyclerView;
    }

    public static FragmentTransactionHistoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentTransactionHistoryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentTransactionHistoryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_transaction_history, viewGroup, z, obj);
    }

    public static FragmentTransactionHistoryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentTransactionHistoryBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentTransactionHistoryBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_transaction_history, null, false, obj);
    }

    public static FragmentTransactionHistoryBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentTransactionHistoryBinding bind(View view, Object obj) {
        return (FragmentTransactionHistoryBinding) bind(obj, view, R.layout.fragment_transaction_history);
    }
}
