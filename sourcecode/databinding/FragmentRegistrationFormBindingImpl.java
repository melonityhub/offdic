package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputEditText;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentRegistrationFormBindingImpl extends FragmentRegistrationFormBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final FrameLayout mboundView0;

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
        sparseIntArray.put(R.id.top_toolbar_container, 1);
        sparseIntArray.put(R.id.back_button, 2);
        sparseIntArray.put(R.id.title_label, 3);
        sparseIntArray.put(R.id.email_address_label, 4);
        sparseIntArray.put(R.id.edit_email, 5);
        sparseIntArray.put(R.id.user_full_name_input, 6);
        sparseIntArray.put(R.id.enter_password_input, 7);
        sparseIntArray.put(R.id.repeat_enter_password_input, 8);
        sparseIntArray.put(R.id.terms_button, 9);
        sparseIntArray.put(R.id.signup_button, 10);
        sparseIntArray.put(R.id.loading_spinner, 11);
    }

    public FragmentRegistrationFormBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 12, sIncludes, sViewsWithIds));
    }

    private FragmentRegistrationFormBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageButton) objArr[2], (Button) objArr[5], (TextView) objArr[4], (TextInputEditText) objArr[7], (CustomProgressbar) objArr[11], (TextInputEditText) objArr[8], (Button) objArr[10], (Button) objArr[9], (TextView) objArr[3], (ConstraintLayout) objArr[1], (TextInputEditText) objArr[6]);
        this.mDirtyFlags = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.mboundView0 = frameLayout;
        frameLayout.setTag(null);
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
