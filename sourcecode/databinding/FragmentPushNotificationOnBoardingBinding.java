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
public final class FragmentPushNotificationOnBoardingBinding implements ViewBinding {
    public final Button continueButton;
    public final TextView descriptionLabel;
    public final LinearLayout notLoggedInView;
    private final RelativeLayout rootView;
    public final TextView titleLabel;

    private FragmentPushNotificationOnBoardingBinding(RelativeLayout relativeLayout, Button button, TextView textView, LinearLayout linearLayout, TextView textView2) {
        this.rootView = relativeLayout;
        this.continueButton = button;
        this.descriptionLabel = textView;
        this.notLoggedInView = linearLayout;
        this.titleLabel = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPushNotificationOnBoardingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentPushNotificationOnBoardingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_push_notification_on_boarding, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentPushNotificationOnBoardingBinding bind(View view) {
        int i = R.id.continue_button;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.description_label;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.not_logged_in_view;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = R.id.title_label;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        return new FragmentPushNotificationOnBoardingBinding((RelativeLayout) view, button, textView, linearLayout, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
