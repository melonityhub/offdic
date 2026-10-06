package fast.dic.dict.adapters;

import android.view.View;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class MoreAdapter$SubscriptionsViewHolder$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public /* synthetic */ MoreAdapter$SubscriptionsViewHolder$$ExternalSyntheticLambda0() {
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        moreAdapter.getOnSubscriptionClickListener().invoke();
    }
}
