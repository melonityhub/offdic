package fast.dic.dict.views;

import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class SearchBarView$$ExternalSyntheticLambda6 implements Function1 {
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ SearchBarView$$ExternalSyntheticLambda6() {
        textChanged = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return SearchBarView.setOnTextChanged$lambda$0(this.f$0, textChanged, (CharSequence) obj);
    }
}
