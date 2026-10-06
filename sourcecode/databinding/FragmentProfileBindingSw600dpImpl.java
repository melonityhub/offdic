package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;
import fast.dic.dict.views.RowView;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentProfileBindingSw600dpImpl extends FragmentProfileBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final ScrollView mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        return true;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.profile_layout_view, 1);
        sparseIntArray.put(R.id.user_full_name_label, 2);
        sparseIntArray.put(R.id.user_email_label, 3);
        sparseIntArray.put(R.id.remaining_date_label, 4);
        sparseIntArray.put(R.id.email_not_activated_label, 5);
        sparseIntArray.put(R.id.active_email_button_or_subscriptions, 6);
        sparseIntArray.put(R.id.update_user_profile_row, 7);
        sparseIntArray.put(R.id.history_purchased_row, 8);
        sparseIntArray.put(R.id.change_password_row, 9);
        sparseIntArray.put(R.id.delete_account_row, 10);
        sparseIntArray.put(R.id.logout_row, 11);
        sparseIntArray.put(R.id.loading_spinner, 12);
    }

    public FragmentProfileBindingSw600dpImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 13, sIncludes, sViewsWithIds));
    }

    private FragmentProfileBindingSw600dpImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (Button) objArr[6], (RowView) objArr[9], (RowView) objArr[10], (TextView) objArr[5], (RowView) objArr[8], (CustomProgressbar) objArr[12], (RowView) objArr[11], (RelativeLayout) objArr[1], (TextView) objArr[4], (RowView) objArr[7], (TextView) objArr[3], (TextView) objArr[2]);
        this.mDirtyFlags = -1L;
        ScrollView scrollView = (ScrollView) objArr[0];
        this.mboundView0 = scrollView;
        scrollView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.mDirtyFlags != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0L;
        }
    }
}
