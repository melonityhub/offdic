package fast.dic.dict.fragments;

import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class TransactionHistoryFragment$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ TransactionHistoryFragment$$ExternalSyntheticLambda0() {
        zCurrentLanguageIsPersian = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws ParseException {
        TransactionHistoryFragment.getTransactions$lambda$0(this.f$0, zCurrentLanguageIsPersian);
    }
}
