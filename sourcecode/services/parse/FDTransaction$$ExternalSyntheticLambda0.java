package fast.dic.dict.services.parse;

import com.parse.FindCallback;
import com.parse.ParseException;
import java.util.List;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDTransaction$$ExternalSyntheticLambda0 implements FindCallback {
    public final /* synthetic */ List f$0;
    public final /* synthetic */ FDTransaction f$1;

    public /* synthetic */ FDTransaction$$ExternalSyntheticLambda0() {
        arrayList = list;
        this = fDTransaction;
    }

    @Override // com.parse.FindCallback, com.parse.ParseCallback2
    public final void done(List list, ParseException parseException) {
        FDTransaction.transactions$lambda$0(arrayList, this, list, parseException);
    }
}
