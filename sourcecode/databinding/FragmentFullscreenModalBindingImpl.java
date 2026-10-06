package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.divider.MaterialDivider;
import fast.dic.dict.BindingAdapters;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public class FragmentFullscreenModalBindingImpl extends FragmentFullscreenModalBinding {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final ScrollView mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.toolbar_view, 3);
        sparseIntArray.put(R.id.title_label, 4);
        sparseIntArray.put(R.id.description_label, 5);
        sparseIntArray.put(R.id.continue_button, 6);
        sparseIntArray.put(R.id.divider, 7);
        sparseIntArray.put(R.id.third_btn, 8);
    }

    public FragmentFullscreenModalBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private FragmentFullscreenModalBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        Button button = (Button) objArr[6];
        TextView textView = (TextView) objArr[5];
        MaterialDivider materialDivider = (MaterialDivider) objArr[7];
        LinearLayout linearLayout = (LinearLayout) objArr[1];
        MaterialButton materialButton = (MaterialButton) objArr[2];
        Button button2 = (Button) objArr[8];
        TextView textView2 = (TextView) objArr[4];
        Object obj = objArr[3];
        super(dataBindingComponent, view, 0, button, textView, materialDivider, linearLayout, materialButton, button2, textView2, obj != null ? BottomSheetToolbarLayoutBinding.bind((View) obj) : null);
        this.mDirtyFlags = -1L;
        ScrollView scrollView = (ScrollView) objArr[0];
        this.mboundView0 = scrollView;
        scrollView.setTag(null);
        this.notLoggedInView.setTag(null);
        this.secondButton.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 2L;
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
    public boolean setVariable(int i, Object obj) {
        if (44 != i) {
            return false;
        }
        setRewardedAdsLoading((Boolean) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.FragmentFullscreenModalBinding
    public void setRewardedAdsLoading(Boolean bool) {
        this.mRewardedAdsLoading = bool;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(44);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        long j2 = j & 3;
        boolean zSafeUnbox = j2 != 0 ? ViewDataBinding.safeUnbox(this.mRewardedAdsLoading) : false;
        if (j2 != 0) {
            BindingAdapters.setButtonLoading(this.secondButton, zSafeUnbox);
        }
    }
}
