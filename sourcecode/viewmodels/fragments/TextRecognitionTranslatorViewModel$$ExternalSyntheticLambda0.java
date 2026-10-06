package fast.dic.dict.viewmodels.fragments;

import android.graphics.Bitmap;
import java.util.List;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class TextRecognitionTranslatorViewModel$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ Bitmap f$1;

    public /* synthetic */ TextRecognitionTranslatorViewModel$$ExternalSyntheticLambda0() {
        bitmap = bitmap;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return TextRecognitionTranslatorViewModel.recognizeTextFromImageAndTranslate$lambda$0(this.f$0, bitmap, (List) obj, (List) obj2);
    }
}
