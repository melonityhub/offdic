package fast.dic.dict.presentation.word_result_screen;

import fast.dic.dict.models.database.TranslateModel;
import fast.dic.dict.services.parse.FDPurchased;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ String f$1;
    public final /* synthetic */ String f$2;
    public final /* synthetic */ TranslateModel f$3;
    public final /* synthetic */ boolean f$4;

    public /* synthetic */ WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda2() {
        str2 = str;
        str = str;
        translateModel = translateModel;
        z = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return WordResultViewModel.C45341.invokeSuspend$lambda$0$1(wordResultViewModel, str2, str, translateModel, z, (FDPurchased) obj);
    }
}
