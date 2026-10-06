package fast.dic.dict.adapters;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.R;
import fast.dic.dict.models.parse.TransactionModel;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.PersianDate;
import fast.dic.dict.utils.PersianDateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J0\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0014H\u0017b\u0016\b\u0019\u0012\u0012\b\u001a\u0012\u000e\b\fJ\u0004\b\b(\u001bJ\u0004\b\b(\u001cJ\b\u0010\u001d\u001a\u00020\u0014H\u0016J \u0010 \u001a\u00020\u00162\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00160\u001fR \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\"\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lfast/dic/dict/adapters/TransactionAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lfast/dic/dict/adapters/TransactionViewHolder;", "dataset", "", "Lfast/dic/dict/models/parse/TransactionModel;", "currency", "", "isCurrentLanguagePersian", "", "<init>", "(Ljava/util/List;Ljava/lang/String;Z)V", "getDataset", "()Ljava/util/List;", "setDataset", "(Ljava/util/List;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", U3.i.L, "Landroid/annotation/SuppressLint;", "value", "SetTextI18n", "DefaultLocale", "getItemCount", "itemAction", "Lkotlin/Function2;", "setItemAction", "action", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class TransactionAdapter extends RecyclerView.Adapter<TransactionViewHolder> {
    private final String currency;
    private List<TransactionModel> dataset;
    private final boolean isCurrentLanguagePersian;
    private Function2<? super TransactionModel, ? super Integer, Unit> itemAction;

    public TransactionAdapter(List<TransactionModel> dataset, String currency, boolean z) {
        Intrinsics.checkNotNullParameter(dataset, "dataset");
        Intrinsics.checkNotNullParameter(currency, "currency");
        this.dataset = dataset;
        this.currency = currency;
        this.isCurrentLanguagePersian = z;
    }

    public final List<TransactionModel> getDataset() {
        return this.dataset;
    }

    public final void setDataset(List<TransactionModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.dataset = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public TransactionViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.purchase_history_layout, parent, false);
        Intrinsics.checkNotNull(viewInflate);
        return new TransactionViewHolder(viewInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(TransactionViewHolder holder, final int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        final TransactionModel transactionModel = this.dataset.get(position);
        String strReplaceNumbersToFarsi = String.format("%,d", transactionModel.getAmount());
        Intrinsics.checkNotNullExpressionValue(strReplaceNumbersToFarsi, "format(...)");
        if (this.isCurrentLanguagePersian) {
            strReplaceNumbersToFarsi = FDLanguageWord.INSTANCE.replaceNumbersToFarsi(strReplaceNumbersToFarsi);
        }
        holder.getTransactionIdLabel().setText("#" + transactionModel.getReferenceId());
        holder.getTransactionMoneyLabel().setText(strReplaceNumbersToFarsi + " " + this.currency);
        try {
            String str = new PersianDateFormat("Y/m/d").format(new PersianDate(transactionModel.getPurchasedAt()));
            if (this.isCurrentLanguagePersian) {
                holder.getTransactionDescLabel().setText(FDLanguageWord.INSTANCE.replaceNumbersToFarsi(str.toString()) + " - " + transactionModel.getDescription());
            } else {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd");
                TextView transactionDescLabel = holder.getTransactionDescLabel();
                Date purchasedAt = transactionModel.getPurchasedAt();
                Intrinsics.checkNotNull(purchasedAt);
                transactionDescLabel.setText(simpleDateFormat.format(purchasedAt) + " - " + transactionModel.getDescription());
            }
        } catch (Exception unused) {
        }
        holder.itemView.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.adapters.TransactionAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TransactionAdapter.onBindViewHolder$lambda$0(this.f$0, transactionModel, position, view);
            }
        });
    }

    static final void onBindViewHolder$lambda$0(TransactionAdapter transactionAdapter, TransactionModel transactionModel, int i, View view) {
        Function2<? super TransactionModel, ? super Integer, Unit> function2 = transactionAdapter.itemAction;
        if (function2 != null) {
            function2.invoke(transactionModel, Integer.valueOf(i));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.dataset.size();
    }

    public final void setItemAction(Function2<? super TransactionModel, ? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        this.itemAction = action;
    }
}
