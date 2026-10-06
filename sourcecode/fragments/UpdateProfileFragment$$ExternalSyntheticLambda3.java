package fast.dic.dict.fragments;

import android.widget.EditText;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.services.parse.FDPurchased;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class UpdateProfileFragment$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ EditText f$0;
    public final /* synthetic */ EditText f$1;

    public /* synthetic */ UpdateProfileFragment$$ExternalSyntheticLambda3() {
        editText = editText;
        editText2 = editText;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return UpdateProfileFragment.onCreateView$lambda$2(editText, editText2, (FDParseUser) obj, (FDPurchased) obj2);
    }
}
