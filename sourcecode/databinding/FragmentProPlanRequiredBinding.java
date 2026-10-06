package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentProPlanRequiredBinding implements ViewBinding {
    public final TextView descriptionLabel;
    public final LinearLayout notLoggedInView;
    public final Button primaryBtn;
    private final RelativeLayout rootView;
    public final Button secondaryBtn;
    public final TextView titleLabel;
    public final BottomSheetToolbarLayoutBinding toolbarView;

    private FragmentProPlanRequiredBinding(RelativeLayout relativeLayout, TextView textView, LinearLayout linearLayout, Button button, Button button2, TextView textView2, BottomSheetToolbarLayoutBinding bottomSheetToolbarLayoutBinding) {
        this.rootView = relativeLayout;
        this.descriptionLabel = textView;
        this.notLoggedInView = linearLayout;
        this.primaryBtn = button;
        this.secondaryBtn = button2;
        this.titleLabel = textView2;
        this.toolbarView = bottomSheetToolbarLayoutBinding;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FragmentProPlanRequiredBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentProPlanRequiredBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_pro_plan_required, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentProPlanRequiredBinding bind(View view) {
        View viewFindChildViewById;
        int i = R.id.description_label;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.not_logged_in_view;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = R.id.primary_btn;
                Button button = (Button) ViewBindings.findChildViewById(view, i);
                if (button != null) {
                    i = R.id.secondary_btn;
                    Button button2 = (Button) ViewBindings.findChildViewById(view, i);
                    if (button2 != null) {
                        i = R.id.title_label;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.toolbar_view))) != null) {
                            return new FragmentProPlanRequiredBinding((RelativeLayout) view, textView, linearLayout, button, button2, textView2, BottomSheetToolbarLayoutBinding.bind(viewFindChildViewById));
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
