package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.appodeal.ads.BannerView;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class ActivityMainBinding extends ViewDataBinding {
    public final AppBarLayout appBarLayout;
    public final BannerView bannerView;
    public final BottomNavigationView bottomNavigationView;
    public final FloatingActionButton cameraButtonFab;
    public final LinearLayout floatingButtonsContainer;
    public final FloatingActionButton micButtonFab;
    public final TextView toolbarTitle;
    public final MaterialToolbar toolbarTop;

    protected ActivityMainBinding(Object obj, View view, int i, AppBarLayout appBarLayout, BannerView bannerView, BottomNavigationView bottomNavigationView, FloatingActionButton floatingActionButton, LinearLayout linearLayout, FloatingActionButton floatingActionButton2, TextView textView, MaterialToolbar materialToolbar) {
        super(obj, view, i);
        this.appBarLayout = appBarLayout;
        this.bannerView = bannerView;
        this.bottomNavigationView = bottomNavigationView;
        this.cameraButtonFab = floatingActionButton;
        this.floatingButtonsContainer = linearLayout;
        this.micButtonFab = floatingActionButton2;
        this.toolbarTitle = textView;
        this.toolbarTop = materialToolbar;
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityMainBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (ActivityMainBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_main, viewGroup, z, obj);
    }

    public static ActivityMainBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityMainBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (ActivityMainBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.activity_main, null, false, obj);
    }

    public static ActivityMainBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityMainBinding bind(View view, Object obj) {
        return (ActivityMainBinding) bind(obj, view, R.layout.activity_main);
    }
}
