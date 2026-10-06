package fast.dic.dict.adapters;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.card.MaterialCardView;
import com.mbridge.msdk.MBridgeConstans;
import fast.dic.dict.R;
import fast.dic.dict.utils.ContextExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LanguageLayoutAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0013J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lfast/dic/dict/adapters/LanguageLayoutViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/View;", "<init>", "(Landroid/view/View;)V", "selectedImage", "Landroid/widget/ImageView;", "subtitleLabel", "Landroid/widget/TextView;", "languageLabel", "cardView", "Lcom/google/android/material/card/MaterialCardView;", "selected", "", "select", "", "setTitle", "title", "", "setSubtitle", "subtitle", "setOnSelectedListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/view/View$OnClickListener;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class LanguageLayoutViewHolder extends RecyclerView.ViewHolder {
    private final MaterialCardView cardView;
    private final TextView languageLabel;
    private final ImageView selectedImage;
    private final TextView subtitleLabel;
    private final View view;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageLayoutViewHolder(View view) {
        super(view);
        Intrinsics.checkNotNullParameter(view, "view");
        this.view = view;
        View viewFindViewById = view.findViewById(R.id.selection_icon);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        this.selectedImage = (ImageView) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.language_subtitle);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        this.subtitleLabel = (TextView) viewFindViewById2;
        View viewFindViewById3 = view.findViewById(R.id.language_title_label);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
        this.languageLabel = (TextView) viewFindViewById3;
        View viewFindViewById4 = view.findViewById(R.id.row_container_card);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(...)");
        this.cardView = (MaterialCardView) viewFindViewById4;
    }

    public final void selected(boolean select) {
        MaterialCardView materialCardView = this.cardView;
        if (select) {
            materialCardView.setStrokeWidth(5);
            this.selectedImage.setVisibility(0);
            MaterialCardView materialCardView2 = this.cardView;
            Context context = this.view.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            materialCardView2.setStrokeColor(ContextExtKt.getColorFromAttr$default(context, R.attr.tableViewSelectedBackground, null, false, 6, null));
            return;
        }
        materialCardView.setStrokeWidth(1);
        this.selectedImage.setVisibility(8);
        MaterialCardView materialCardView3 = this.cardView;
        Context context2 = this.view.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        materialCardView3.setStrokeColor(ContextExtKt.getColorFromAttr$default(context2, R.attr.tableViewBorder, null, false, 6, null));
    }

    public final void setTitle(String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.languageLabel.setText(title);
    }

    public final void setSubtitle(String subtitle) {
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        this.subtitleLabel.setText(subtitle);
    }

    public final void setOnSelectedListener(View.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.view.setOnClickListener(listener);
    }
}
