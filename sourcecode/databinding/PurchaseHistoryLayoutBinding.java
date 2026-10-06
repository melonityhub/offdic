package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class PurchaseHistoryLayoutBinding implements ViewBinding {
    public final View dividerView;
    private final ConstraintLayout rootView;
    public final ConstraintLayout topHeader;
    public final TextView transactionDescLabel;
    public final TextView transactionIdLabel;
    public final TextView transactionMoneyLabel;

    private PurchaseHistoryLayoutBinding(ConstraintLayout constraintLayout, View view, ConstraintLayout constraintLayout2, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = constraintLayout;
        this.dividerView = view;
        this.topHeader = constraintLayout2;
        this.transactionDescLabel = textView;
        this.transactionIdLabel = textView2;
        this.transactionMoneyLabel = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static PurchaseHistoryLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PurchaseHistoryLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.purchase_history_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PurchaseHistoryLayoutBinding bind(View view) {
        int i = R.id.divider_view;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, i);
        if (viewFindChildViewById != null) {
            i = R.id.top_header;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = R.id.transaction_desc_label;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.transaction_id_label;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        i = R.id.transaction_money_label;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            return new PurchaseHistoryLayoutBinding((ConstraintLayout) view, viewFindChildViewById, constraintLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
