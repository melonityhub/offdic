package fast.dic.dict.adapters;

import android.view.View;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class MoreAdapter$ViewHolder$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ MoreAdapter.ViewHolder f$1;

    public /* synthetic */ MoreAdapter$ViewHolder$$ExternalSyntheticLambda0() {
        this = viewHolder;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MoreAdapter moreAdapter = moreAdapter;
        MoreAdapter.ViewHolder viewHolder = this;
        moreAdapter.getOnItemClickListener().invoke(viewHolder.getModel(), Integer.valueOf(viewHolder.getBindingAdapterPosition()));
    }
}
