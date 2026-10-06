package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;
import fast.dic.dict.views.RowView;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentProfileBinding extends ViewDataBinding {
    public final Button activeEmailButtonOrSubscriptions;
    public final RowView changePasswordRow;
    public final RowView deleteAccountRow;
    public final TextView emailNotActivatedLabel;
    public final RowView historyPurchasedRow;
    public final CustomProgressbar loadingSpinner;
    public final RowView logoutRow;
    public final RelativeLayout profileLayoutView;
    public final TextView remainingDateLabel;
    public final RowView updateUserProfileRow;
    public final TextView userEmailLabel;
    public final TextView userFullNameLabel;

    protected FragmentProfileBinding(Object obj, View view, int i, Button button, RowView rowView, RowView rowView2, TextView textView, RowView rowView3, CustomProgressbar customProgressbar, RowView rowView4, RelativeLayout relativeLayout, TextView textView2, RowView rowView5, TextView textView3, TextView textView4) {
        super(obj, view, i);
        this.activeEmailButtonOrSubscriptions = button;
        this.changePasswordRow = rowView;
        this.deleteAccountRow = rowView2;
        this.emailNotActivatedLabel = textView;
        this.historyPurchasedRow = rowView3;
        this.loadingSpinner = customProgressbar;
        this.logoutRow = rowView4;
        this.profileLayoutView = relativeLayout;
        this.remainingDateLabel = textView2;
        this.updateUserProfileRow = rowView5;
        this.userEmailLabel = textView3;
        this.userFullNameLabel = textView4;
    }

    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentProfileBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_profile, viewGroup, z, obj);
    }

    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentProfileBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_profile, null, false, obj);
    }

    public static FragmentProfileBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentProfileBinding bind(View view, Object obj) {
        return (FragmentProfileBinding) bind(obj, view, R.layout.fragment_profile);
    }
}
