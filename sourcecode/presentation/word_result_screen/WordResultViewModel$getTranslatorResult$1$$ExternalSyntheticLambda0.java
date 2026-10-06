package fast.dic.dict.presentation.word_result_screen;

import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.models.database.TranslateModel;
import fast.dic.dict.utils.FDLanguageWord;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ ListModel f$1;
    public final /* synthetic */ TranslateModel f$2;
    public final /* synthetic */ FDLanguageWord.LanguageType f$3;
    public final /* synthetic */ String f$4;
    public final /* synthetic */ boolean f$5;

    public /* synthetic */ WordResultViewModel$getTranslatorResult$1$$ExternalSyntheticLambda0() {
        listModel = listModel;
        translateModel = translateModel;
        languageTypeFind = languageType;
        str2 = str;
        z = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return WordResultViewModel.C45341.invokeSuspend$lambda$0(wordResultViewModel2, listModel, translateModel, languageTypeFind, str2, z, (TranslateModel) obj, (Throwable) obj2);
    }
}
