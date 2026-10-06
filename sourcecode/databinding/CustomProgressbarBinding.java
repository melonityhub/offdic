package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class CustomProgressbarBinding implements ViewBinding {
    public final ProgressBar progressBarTranslate;
    private final LinearLayout rootView;
    public final TextView textViewProPackage02;

    private CustomProgressbarBinding(LinearLayout linearLayout, ProgressBar progressBar, TextView textView) {
        this.rootView = linearLayout;
        this.progressBarTranslate = progressBar;
        this.textViewProPackage02 = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static CustomProgressbarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CustomProgressbarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.custom_progressbar, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static CustomProgressbarBinding bind(View view) {
        int i = R.id.progressBarTranslate;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
        if (progressBar != null) {
            i = R.id.textViewProPackage02;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new CustomProgressbarBinding((LinearLayout) view, progressBar, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
