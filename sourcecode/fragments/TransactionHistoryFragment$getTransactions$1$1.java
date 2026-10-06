package fast.dic.dict.fragments;

import android.content.Context;
import android.view.View;
import fast.dic.dict.R;
import fast.dic.dict.adapters.TransactionAdapter;
import fast.dic.dict.databinding.FragmentTransactionHistoryBinding;
import fast.dic.dict.models.parse.TransactionModel;
import fast.dic.dict.services.parse.FDTransaction;
import fast.dic.dict.utils.Dispatch;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionHistoryFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0016¨\u0006\u0007"}, d2 = {"fast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1", "Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;", "transactionCallback", "", "transactionModel", "", "Lfast/dic/dict/models/parse/TransactionModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class TransactionHistoryFragment$getTransactions$1$1 implements FDTransaction.FDTransactionInterface {
    final /* synthetic */ boolean $currentLanguageIsPersian;
    final /* synthetic */ TransactionHistoryFragment this$0;

    TransactionHistoryFragment$getTransactions$1$1(TransactionHistoryFragment transactionHistoryFragment, boolean z) {
        this.this$0 = transactionHistoryFragment;
        this.$currentLanguageIsPersian = z;
    }

    @Override // fast.dic.dict.services.parse.FDTransaction.FDTransactionInterface
    public void transactionCallback(List<TransactionModel> transactionModel) {
        View viewFindViewById;
        String string;
        View viewFindViewById2;
        if (transactionModel != null) {
            boolean zIsEmpty = transactionModel.isEmpty();
            TransactionHistoryFragment transactionHistoryFragment = this.this$0;
            if (zIsEmpty) {
                View view = transactionHistoryFragment.getView();
                if (view != null && (viewFindViewById2 = view.findViewById(R.id.placeholder_label)) != null) {
                    viewFindViewById2.setVisibility(0);
                }
            } else {
                View view2 = transactionHistoryFragment.getView();
                if (view2 != null && (viewFindViewById = view2.findViewById(R.id.placeholder_label)) != null) {
                    viewFindViewById.setVisibility(8);
                }
            }
            Context context = this.this$0.getContext();
            if (context == null || (string = context.getString(R.string.currency)) == null) {
                string = "";
            }
            TransactionAdapter transactionAdapter = new TransactionAdapter(transactionModel, string, this.$currentLanguageIsPersian);
            FragmentTransactionHistoryBinding fragmentTransactionHistoryBinding = this.this$0.binding;
            if (fragmentTransactionHistoryBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentTransactionHistoryBinding = null;
            }
            fragmentTransactionHistoryBinding.recyclerView.setAdapter(transactionAdapter);
        }
        Dispatch dispatch = Dispatch.INSTANCE;
        final TransactionHistoryFragment transactionHistoryFragment2 = this.this$0;
        dispatch.asyncOnMain(new Function0() { // from class: fast.dic.dict.fragments.TransactionHistoryFragment$getTransactions$1$1$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return TransactionHistoryFragment$getTransactions$1$1.transactionCallback$lambda$0(transactionHistoryFragment2);
            }
        });
    }

    static final Unit transactionCallback$lambda$0(TransactionHistoryFragment transactionHistoryFragment) {
        FragmentTransactionHistoryBinding fragmentTransactionHistoryBinding = transactionHistoryFragment.binding;
        if (fragmentTransactionHistoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTransactionHistoryBinding = null;
        }
        CustomProgressbar loadingSpinner = fragmentTransactionHistoryBinding.loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
        return Unit.INSTANCE;
    }
}
