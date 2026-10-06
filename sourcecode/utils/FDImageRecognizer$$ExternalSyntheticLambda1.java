package fast.dic.dict.utils;

import com.google.mlkit.vision.text.Text;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDImageRecognizer$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ Function2 f$1;

    public /* synthetic */ FDImageRecognizer$$ExternalSyntheticLambda1() {
        completion = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return FDImageRecognizer.runTextRecognition$lambda$0(this.f$0, completion, (Text) obj);
    }
}
