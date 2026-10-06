package fast.dic.dict.views;

import android.view.KeyEvent;
import android.view.View;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class SearchBarView$$ExternalSyntheticLambda5 implements View.OnKeyListener {
    public /* synthetic */ SearchBarView$$ExternalSyntheticLambda5() {
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        return SearchBarView.loadSearchInputConfig$lambda$1(this.f$0, view, i, keyEvent);
    }
}
