package fast.dic.dict.adapters;

import android.view.View;
import fast.dic.dict.models.parse.TransactionModel;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class TransactionAdapter$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ TransactionModel f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ TransactionAdapter$$ExternalSyntheticLambda0() {
        transactionModel = transactionModel;
        position = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        TransactionAdapter.onBindViewHolder$lambda$0(this.f$0, transactionModel, position, view);
    }
}
