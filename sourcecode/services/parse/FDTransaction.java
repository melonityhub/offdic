package fast.dic.dict.services.parse;

import com.parse.FindCallback;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseQuery;
import com.parse.ParseUser;
import fast.dic.dict.models.parse.TransactionModel;
import io.sentry.ProfilingTraceData;
import io.sentry.SentryBaseEvent;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDTransaction.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\r\u001a\u00020\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"Lfast/dic/dict/services/parse/FDTransaction;", "", "<init>", "()V", "fdTransactionInterface", "Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;", "getFdTransactionInterface", "()Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;", "setFdTransactionInterface", "(Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;)V", "registerCallback", "", "transactionInterface", ProfilingTraceData.JsonKeys.TRANSACTION_LIST, "FDTransactionInterface", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDTransaction {
    private FDTransactionInterface fdTransactionInterface;

    /* JADX INFO: compiled from: FDTransaction.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H&¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;", "", "transactionCallback", "", "transactionModel", "", "Lfast/dic/dict/models/parse/TransactionModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public interface FDTransactionInterface {
        void transactionCallback(List<TransactionModel> transactionModel);
    }

    public final FDTransactionInterface getFdTransactionInterface() {
        return this.fdTransactionInterface;
    }

    public final void setFdTransactionInterface(FDTransactionInterface fDTransactionInterface) {
        this.fdTransactionInterface = fDTransactionInterface;
    }

    public final void registerCallback(FDTransactionInterface transactionInterface) throws ParseException {
        this.fdTransactionInterface = transactionInterface;
        transactions();
    }

    public final void transactions() throws ParseException {
        final ArrayList arrayList = new ArrayList();
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null) {
            FDTransactionInterface fDTransactionInterface = this.fdTransactionInterface;
            if (fDTransactionInterface != null) {
                fDTransactionInterface.transactionCallback(null);
                return;
            }
            return;
        }
        ParseQuery query = ParseQuery.getQuery("Transaction");
        Intrinsics.checkNotNullExpressionValue(query, "getQuery(...)");
        query.whereEqualTo(SentryBaseEvent.JsonKeys.USER, fDParseUser);
        query.orderByDescending("purchasedAt");
        query.findInBackground(new FindCallback() { // from class: fast.dic.dict.services.parse.FDTransaction$$ExternalSyntheticLambda0
            @Override // com.parse.FindCallback, com.parse.ParseCallback2
            public final void done(List list, ParseException parseException) {
                FDTransaction.transactions$lambda$0(arrayList, this, list, parseException);
            }
        });
    }

    static final void transactions$lambda$0(List list, FDTransaction fDTransaction, List list2, ParseException parseException) {
        if (parseException == null) {
            if (list2 != null) {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    ParseObject parseObject = (ParseObject) it.next();
                    TransactionModel transactionModel = new TransactionModel();
                    Date date = null;
                    transactionModel.setAmount(parseObject != null ? Integer.valueOf(parseObject.getInt("amount")) : null);
                    transactionModel.setReferenceId(parseObject != null ? parseObject.getString("referenceId") : null);
                    transactionModel.setDescription(parseObject != null ? parseObject.getString("description") : null);
                    if (parseObject != null) {
                        date = parseObject.getDate("purchasedAt");
                    }
                    transactionModel.setPurchasedAt(date);
                    list.add(transactionModel);
                }
            }
            FDTransactionInterface fDTransactionInterface = fDTransaction.fdTransactionInterface;
            if (fDTransactionInterface != null) {
                fDTransactionInterface.transactionCallback(list);
            }
        }
    }
}
