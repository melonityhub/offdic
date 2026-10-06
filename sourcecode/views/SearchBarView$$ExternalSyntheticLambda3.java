package fast.dic.dict.views;

import android.view.View;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class SearchBarView$$ExternalSyntheticLambda3 implements View.OnClickListener {
    public /* synthetic */ SearchBarView$$ExternalSyntheticLambda3() {
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SearchBarView searchBarView = this.f$0;
        searchBarView.enterSearchListener.invoke(searchBarView.getCurrentWord());
    }
}
