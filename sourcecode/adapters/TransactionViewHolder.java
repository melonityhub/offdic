package fast.dic.dict.adapters;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.MBridgeConstans;
import fast.dic.dict.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\f\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\t¨\u0006\u000e"}, d2 = {"Lfast/dic/dict/adapters/TransactionViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/View;", "<init>", "(Landroid/view/View;)V", "transactionIdLabel", "Landroid/widget/TextView;", "getTransactionIdLabel", "()Landroid/widget/TextView;", "transactionDescLabel", "getTransactionDescLabel", "transactionMoneyLabel", "getTransactionMoneyLabel", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class TransactionViewHolder extends RecyclerView.ViewHolder {
    private final TextView transactionDescLabel;
    private final TextView transactionIdLabel;
    private final TextView transactionMoneyLabel;
    private final View view;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransactionViewHolder(View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        this.view = view;
        View viewFindViewById = view.findViewById(R.id.transaction_id_label);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        this.transactionIdLabel = (TextView) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.transaction_desc_label);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        this.transactionDescLabel = (TextView) viewFindViewById2;
        View viewFindViewById3 = view.findViewById(R.id.transaction_money_label);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
        this.transactionMoneyLabel = (TextView) viewFindViewById3;
    }

    public final TextView getTransactionIdLabel() {
        return this.transactionIdLabel;
    }

    public final TextView getTransactionDescLabel() {
        return this.transactionDescLabel;
    }

    public final TextView getTransactionMoneyLabel() {
        return this.transactionMoneyLabel;
    }
}
