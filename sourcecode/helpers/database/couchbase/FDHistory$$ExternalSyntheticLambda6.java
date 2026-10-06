package fast.dic.dict.helpers.database.couchbase;

import fast.dic.dict.utils.FDLanguageWord;
import kotlin.jvm.functions.Function2;
import net.zetetic.database.sqlcipher.SQLiteDatabase;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDHistory$$ExternalSyntheticLambda6 implements Function2 {
    public final /* synthetic */ SQLiteDatabase f$1;

    public /* synthetic */ FDHistory$$ExternalSyntheticLambda6() {
        database = sQLiteDatabase;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return FDHistory.getWordModels$lambda$0$0(this.f$0, database, (FDLanguageWord.LanguageType) obj, ((Integer) obj2).intValue());
    }
}
