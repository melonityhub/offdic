package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentLogoutBinding extends ViewDataBinding {
    public final TextView descriptionLabel;

    @Bindable
    protected View.OnClickListener mCloseAction;

    @Bindable
    protected View.OnClickListener mLogoutAction;

    @Bindable
    protected String mLogoutBody;
    public final LinearLayout notLoggedInView;
    public final Button primaryBtn;
    public final Button secondaryBtn;
    public final TextView titleLabel;

    public abstract void setCloseAction(View.OnClickListener onClickListener);

    public abstract void setLogoutAction(View.OnClickListener onClickListener);

    public abstract void setLogoutBody(String str);

    protected FragmentLogoutBinding(Object obj, View view, int i, TextView textView, LinearLayout linearLayout, Button button, Button button2, TextView textView2) {
        super(obj, view, i);
        this.descriptionLabel = textView;
        this.notLoggedInView = linearLayout;
        this.primaryBtn = button;
        this.secondaryBtn = button2;
        this.titleLabel = textView2;
    }

    public String getLogoutBody() {
        return this.mLogoutBody;
    }

    public View.OnClickListener getLogoutAction() {
        return this.mLogoutAction;
    }

    public View.OnClickListener getCloseAction() {
        return this.mCloseAction;
    }

    public static FragmentLogoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLogoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentLogoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_logout, viewGroup, z, obj);
    }

    public static FragmentLogoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLogoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentLogoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_logout, null, false, obj);
    }

    public static FragmentLogoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLogoutBinding bind(View view, Object obj) {
        return (FragmentLogoutBinding) bind(obj, view, R.layout.fragment_logout);
    }
}
