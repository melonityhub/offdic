package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;
import fast.dic.dict.R;
import fast.dic.dict.views.CloudWordsView;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentLanguageOnBoardingBindingImpl extends FragmentLanguageOnBoardingBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final RelativeLayout mboundView0;

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
        sparseIntArray.put(R.id.not_logged_in_view, 1);
        sparseIntArray.put(R.id.cloud_words_view, 2);
        sparseIntArray.put(R.id.logo_iv, 3);
        sparseIntArray.put(R.id.title_label, 4);
        sparseIntArray.put(R.id.description_label, 5);
        sparseIntArray.put(R.id.actions_layout, 6);
        sparseIntArray.put(R.id.language_title_label, 7);
        sparseIntArray.put(R.id.english_button, 8);
        sparseIntArray.put(R.id.persian_button, 9);
        sparseIntArray.put(R.id.continue_button, 10);
    }

    public FragmentLanguageOnBoardingBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 11, sIncludes, sViewsWithIds));
    }

    private FragmentLanguageOnBoardingBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[6], (CloudWordsView) objArr[2], (Button) objArr[10], (TextView) objArr[5], (MaterialButton) objArr[8], (TextView) objArr[7], (ImageView) objArr[3], (LinearLayout) objArr[1], (MaterialButton) objArr[9], (TextView) objArr[4]);
        this.mDirtyFlags = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.mboundView0 = relativeLayout;
        relativeLayout.setTag(null);
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
