package fast.dic.dict.fragments;

import android.widget.EditText;
import com.parse.ParseObject;
import fast.dic.dict.services.parse.FDPurchased;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class UpdateProfileFragment$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ EditText f$0;
    public final /* synthetic */ EditText f$1;

    public /* synthetic */ UpdateProfileFragment$$ExternalSyntheticLambda2() {
        editText = editText;
        editText2 = editText;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return UpdateProfileFragment.onCreateView$lambda$1(editText, editText2, (ParseObject) obj, (FDPurchased) obj2);
    }
}
