package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentFinishRegistrationBinding implements ViewBinding {
    public final TextView descriptionLabel;
    public final MaterialButton returnToProfile;
    private final FrameLayout rootView;
    public final TextView titleLabel;

    private FragmentFinishRegistrationBinding(FrameLayout frameLayout, TextView textView, MaterialButton materialButton, TextView textView2) {
        this.rootView = frameLayout;
        this.descriptionLabel = textView;
        this.returnToProfile = materialButton;
        this.titleLabel = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentFinishRegistrationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentFinishRegistrationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_finish_registration, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentFinishRegistrationBinding bind(View view) {
        int i = R.id.description_label;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.return_to_profile;
            MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, i);
            if (materialButton != null) {
                i = R.id.title_label;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    return new FragmentFinishRegistrationBinding((FrameLayout) view, textView, materialButton, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
