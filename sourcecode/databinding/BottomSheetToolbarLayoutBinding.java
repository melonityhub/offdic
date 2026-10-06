package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class BottomSheetToolbarLayoutBinding implements ViewBinding {
    public final Button leftToolbarButton;
    public final ImageButton rightToolbarButton;
    private final FrameLayout rootView;
    public final TextView toolbarTitle;
    public final Toolbar toolbarTop;

    private BottomSheetToolbarLayoutBinding(FrameLayout frameLayout, Button button, ImageButton imageButton, TextView textView, Toolbar toolbar) {
        this.rootView = frameLayout;
        this.leftToolbarButton = button;
        this.rightToolbarButton = imageButton;
        this.toolbarTitle = textView;
        this.toolbarTop = toolbar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static BottomSheetToolbarLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static BottomSheetToolbarLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.bottom_sheet_toolbar_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static BottomSheetToolbarLayoutBinding bind(View view) {
        int i = R.id.left_toolbar_button;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.right_toolbar_button;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
            if (imageButton != null) {
                i = R.id.toolbar_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.toolbar_top;
                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i);
                    if (toolbar != null) {
                        return new BottomSheetToolbarLayoutBinding((FrameLayout) view, button, imageButton, textView, toolbar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
