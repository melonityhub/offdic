package fast.dic.dict.views;

import android.view.View;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class WordOfTheDayView$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ WordOfTheDayView f$1;

    public /* synthetic */ WordOfTheDayView$$ExternalSyntheticLambda0() {
        this = wordOfTheDayView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        clicked.invoke(this.binding.wodWordView.getText().toString());
    }
}
