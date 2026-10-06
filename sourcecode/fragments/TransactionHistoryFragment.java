package fast.dic.dict.fragments;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.parse.ParseException;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentTransactionHistoryBinding;
import fast.dic.dict.helpers.FDInternetHelper;
import fast.dic.dict.services.parse.FDTransaction;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionHistoryFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u0011¨\u0006\u0010"}, d2 = {"Lfast/dic/dict/fragments/TransactionHistoryFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "getTransactions", "", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class TransactionHistoryFragment extends Hilt_TransactionHistoryFragment {
    private FragmentTransactionHistoryBinding binding;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentTransactionHistoryBinding fragmentTransactionHistoryBindingInflate = FragmentTransactionHistoryBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionHistoryBindingInflate, "inflate(...)");
        this.binding = fragmentTransactionHistoryBindingInflate;
        getTransactions();
        FragmentTransactionHistoryBinding fragmentTransactionHistoryBinding = this.binding;
        if (fragmentTransactionHistoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTransactionHistoryBinding = null;
        }
        View root = fragmentTransactionHistoryBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    private final void getTransactions() {
        FDInternetHelper fDInternetHelper = FDInternetHelper.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (!fDInternetHelper.isInternetAvailable(contextRequireContext)) {
            FDAlertManger.INSTANCE.showNotConnectedToInternetAlert(requireContext());
            return;
        }
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        final boolean zCurrentLanguageIsPersian = new LocalStorage(contextRequireContext2).currentLanguageIsPersian();
        FragmentTransactionHistoryBinding fragmentTransactionHistoryBinding = this.binding;
        if (fragmentTransactionHistoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTransactionHistoryBinding = null;
        }
        CustomProgressbar loadingSpinner = fragmentTransactionHistoryBinding.loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        new Thread(new Runnable() { // from class: fast.dic.dict.fragments.TransactionHistoryFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws ParseException {
                TransactionHistoryFragment.getTransactions$lambda$0(this.f$0, zCurrentLanguageIsPersian);
            }
        }).start();
    }

    static final void getTransactions$lambda$0(TransactionHistoryFragment transactionHistoryFragment, boolean z) throws ParseException {
        FDTransaction fDTransaction = new FDTransaction();
        try {
            fDTransaction.registerCallback(new TransactionHistoryFragment$getTransactions$1$1(transactionHistoryFragment, z));
        } catch (Exception e) {
            e.printStackTrace();
        }
        fDTransaction.transactions();
    }
}
