package fast.dic.dict;

import com.parse.ParseObject;
import fast.dic.dict.services.parse.FDPurchased;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDApplication$$ExternalSyntheticLambda1 implements Function2 {
    public /* synthetic */ FDApplication$$ExternalSyntheticLambda1() {
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return FDApplication.fetchParseUser$lambda$0(this.f$0, (ParseObject) obj, (FDPurchased) obj2);
    }
}
