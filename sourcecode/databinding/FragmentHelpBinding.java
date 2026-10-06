package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;
import im.delight.android.webview.AdvancedWebView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentHelpBinding implements ViewBinding {
    public final AdvancedWebView helpWebView;
    public final CustomProgressbar loadingSpinner;
    private final FrameLayout rootView;

    private FragmentHelpBinding(FrameLayout frameLayout, AdvancedWebView advancedWebView, CustomProgressbar customProgressbar) {
        this.rootView = frameLayout;
        this.helpWebView = advancedWebView;
        this.loadingSpinner = customProgressbar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentHelpBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentHelpBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_help, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentHelpBinding bind(View view) {
        int i = R.id.help_web_view;
        AdvancedWebView advancedWebView = (AdvancedWebView) ViewBindings.findChildViewById(view, i);
        if (advancedWebView != null) {
            i = R.id.loading_spinner;
            CustomProgressbar customProgressbar = (CustomProgressbar) ViewBindings.findChildViewById(view, i);
            if (customProgressbar != null) {
                return new FragmentHelpBinding((FrameLayout) view, advancedWebView, customProgressbar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
