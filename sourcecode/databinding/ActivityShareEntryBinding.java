package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.appodeal.ads.BannerView;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class ActivityShareEntryBinding implements ViewBinding {
    public final ImageButton backToolbarButton;
    public final BannerView bannerView;
    private final RelativeLayout rootView;
    public final TextView toolbarTitle;
    public final Toolbar toolbarTop;

    private ActivityShareEntryBinding(RelativeLayout relativeLayout, ImageButton imageButton, BannerView bannerView, TextView textView, Toolbar toolbar) {
        this.rootView = relativeLayout;
        this.backToolbarButton = imageButton;
        this.bannerView = bannerView;
        this.toolbarTitle = textView;
        this.toolbarTop = toolbar;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static ActivityShareEntryBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityShareEntryBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_share_entry, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityShareEntryBinding bind(View view) {
        int i = R.id.back_toolbar_button;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
        if (imageButton != null) {
            i = R.id.banner_view;
            BannerView bannerView = (BannerView) ViewBindings.findChildViewById(view, i);
            if (bannerView != null) {
                i = R.id.toolbar_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.toolbar_top;
                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i);
                    if (toolbar != null) {
                        return new ActivityShareEntryBinding((RelativeLayout) view, imageButton, bannerView, textView, toolbar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
