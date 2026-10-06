package fast.dic.dict.utils;

import java.util.List;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDImageRecognizer$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ List f$1;

    public /* synthetic */ FDImageRecognizer$$ExternalSyntheticLambda0() {
        textBlocks = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return FDImageRecognizer.processTextRecognitionTranslateResult$lambda$0(completion, textBlocks, (List) obj);
    }
}
