package fast.dic.dict.presentation.favorite_folders_screen;

import fast.dic.dict.models.database.ListModel;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class DirectoryWordsViewModel$deleteItem$1$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ String f$0;

    public /* synthetic */ DirectoryWordsViewModel$deleteItem$1$$ExternalSyntheticLambda0() {
        str = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(Intrinsics.areEqual(((ListModel) obj).getDocumentId(), str));
    }
}
