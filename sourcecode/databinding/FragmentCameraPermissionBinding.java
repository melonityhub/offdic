package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.appbar.AppBarLayout;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentCameraPermissionBinding extends ViewDataBinding {
    public final Button continueButton;
    public final TextView descriptionLabel;

    @Bindable
    protected View.OnClickListener mOnBackListener;
    public final LinearLayout notLoggedInView;
    public final TextView titleLabel;
    public final Toolbar toolbar;
    public final AppBarLayout toolbarView;

    public abstract void setOnBackListener(View.OnClickListener onClickListener);

    protected FragmentCameraPermissionBinding(Object obj, View view, int i, Button button, TextView textView, LinearLayout linearLayout, TextView textView2, Toolbar toolbar, AppBarLayout appBarLayout) {
        super(obj, view, i);
        this.continueButton = button;
        this.descriptionLabel = textView;
        this.notLoggedInView = linearLayout;
        this.titleLabel = textView2;
        this.toolbar = toolbar;
        this.toolbarView = appBarLayout;
    }

    public View.OnClickListener getOnBackListener() {
        return this.mOnBackListener;
    }

    public static FragmentCameraPermissionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentCameraPermissionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentCameraPermissionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_camera_permission, viewGroup, z, obj);
    }

    public static FragmentCameraPermissionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentCameraPermissionBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentCameraPermissionBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_camera_permission, null, false, obj);
    }

    public static FragmentCameraPermissionBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentCameraPermissionBinding bind(View view, Object obj) {
        return (FragmentCameraPermissionBinding) bind(obj, view, R.layout.fragment_camera_permission);
    }
}
