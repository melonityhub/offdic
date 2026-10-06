package fast.dic.dict.presentation.word_result_screen;

import android.content.Context;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.models.database.TranslateModel;
import fast.dic.dict.utils.Category;
import fast.dic.dict.utils.FDLanguageWord;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class WordResultViewModel$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ Category f$1;
    public final /* synthetic */ String f$2;
    public final /* synthetic */ TranslateModel f$3;
    public final /* synthetic */ FDLanguageWord.LanguageType f$4;
    public final /* synthetic */ ListModel f$5;
    public final /* synthetic */ Context f$6;
    public final /* synthetic */ boolean f$7;

    public /* synthetic */ WordResultViewModel$$ExternalSyntheticLambda0() {
        categoryConvertToCategory = category;
        sentence = str;
        model = translateModel;
        language = languageType;
        listModel = listModel;
        context = context;
        isDarkMode = z;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return WordResultViewModel.handleOfflineTranslator$lambda$0(this.f$0, categoryConvertToCategory, sentence, model, language, listModel, context, isDarkMode, (String) obj, (Exception) obj2);
    }
}
