package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.material.divider.MaterialDivider;
import com.google.android.material.tabs.TabLayout;
import fast.dic.dict.R;
import fast.dic.dict.domain.entity.pricing.Plan;
import fast.dic.dict.generated.callback.OnClickListener;
import fast.dic.dict.models.PlanType;
import fast.dic.dict.presentation.pricing_screen.adapter.BindingAdapters;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingStickyHeaderUIData;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes11.dex */
public class PricingStickyHeaderLayoutBindingImpl extends PricingStickyHeaderLayoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback32;
    private long mDirtyFlags;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.action_button_container, 5);
        sparseIntArray.put(R.id.divider_view, 6);
    }

    public PricingStickyHeaderLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 7, sIncludes, sViewsWithIds));
    }

    private PricingStickyHeaderLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TabLayout) objArr[1], (ConstraintLayout) objArr[5], (ConstraintLayout) objArr[0], (MaterialDivider) objArr[6], (TextView) objArr[3], (TextView) objArr[2], (Button) objArr[4]);
        this.mDirtyFlags = -1L;
        this.TabLayout.setTag(null);
        this.containerView.setTag(null);
        this.packagePriceTv.setTag(null);
        this.packageTitleTv.setTag(null);
        this.purchaseButton.setTag(null);
        setRootTag(view);
        this.mCallback32 = new OnClickListener(this, 1);
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
        if (30 != i) {
            return false;
        }
        setModel((PricingStickyHeaderUIData) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.PricingStickyHeaderLayoutBinding
    public void setModel(PricingStickyHeaderUIData pricingStickyHeaderUIData) {
        this.mModel = pricingStickyHeaderUIData;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        long j2;
        int i;
        boolean z;
        int icon;
        int color;
        boolean zIsLoggedIn;
        String title;
        String str;
        String str2;
        String title2;
        String string;
        boolean z2;
        boolean hideButton;
        Plan proPlan;
        String str3;
        Plan aiPlan;
        String selectedMonth;
        String title3;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        PricingStickyHeaderUIData pricingStickyHeaderUIData = this.mModel;
        boolean z3 = false;
        String str4 = null;
        if ((j & 3) != 0) {
            if (pricingStickyHeaderUIData != null) {
                icon = pricingStickyHeaderUIData.getIcon();
                aiPlan = pricingStickyHeaderUIData.getAiPlan();
                color = pricingStickyHeaderUIData.getColor();
                selectedMonth = pricingStickyHeaderUIData.getSelectedMonth();
                String price = pricingStickyHeaderUIData.getPrice();
                boolean hasPlan = pricingStickyHeaderUIData.getHasPlan();
                title3 = pricingStickyHeaderUIData.getTitle();
                hideButton = pricingStickyHeaderUIData.getHideButton();
                zIsLoggedIn = pricingStickyHeaderUIData.isLoggedIn();
                proPlan = pricingStickyHeaderUIData.getProPlan();
                str3 = price;
                z2 = hasPlan;
                j2 = 0;
            } else {
                j2 = 0;
                z2 = false;
                icon = 0;
                color = 0;
                hideButton = false;
                zIsLoggedIn = false;
                proPlan = null;
                str3 = null;
                aiPlan = null;
                selectedMonth = null;
                title3 = null;
            }
            if ((j & 8) != j2) {
                j |= z2 ? 32L : 16L;
            }
            if ((j & 3) != j2) {
                j |= hideButton ? 128L : 64L;
            }
            if ((j & 3) != j2) {
                j = zIsLoggedIn ? j | 8 : j | 4;
            }
            title2 = aiPlan != null ? aiPlan.getTitle() : null;
            String str5 = str3 + " ";
            z = !z2;
            int i2 = hideButton ? 8 : 0;
            title = proPlan != null ? proPlan.getTitle() : null;
            str = str5 + selectedMonth;
            int i3 = i2;
            z3 = z2;
            i = i3;
            str2 = title3;
        } else {
            j2 = 0;
            i = 0;
            z = false;
            icon = 0;
            color = 0;
            zIsLoggedIn = false;
            title = null;
            str = null;
            str2 = null;
            title2 = null;
        }
        if ((8 & j) != j2) {
            string = this.purchaseButton.getResources().getString(z3 ? R.string.is_activate : R.string.activate_or_restore_button_title);
        } else {
            string = null;
        }
        long j3 = j & 3;
        if (j3 != j2) {
            if (!zIsLoggedIn) {
                string = this.purchaseButton.getResources().getString(R.string.activate_and_login_button_title);
            }
            str4 = string;
        }
        if (j3 != j2) {
            BindingAdapters.updateFirstTabText(this.TabLayout, title2);
            BindingAdapters.updateSecondTabText(this.TabLayout, title);
            TextViewBindingAdapter.setText(this.packagePriceTv, str);
            BindingAdapters.changeTextColor(this.packagePriceTv, color);
            fast.dic.dict.BindingAdapters.setIconTintColorTextView(this.packagePriceTv, color);
            TextViewBindingAdapter.setText(this.packageTitleTv, str2);
            BindingAdapters.changeTextColor(this.packageTitleTv, color);
            fast.dic.dict.BindingAdapters.setRightIcon(this.packageTitleTv, Integer.valueOf(icon));
            fast.dic.dict.BindingAdapters.setIconTintColorTextView(this.packageTitleTv, color);
            this.purchaseButton.setEnabled(z);
            this.purchaseButton.setVisibility(i);
            TextViewBindingAdapter.setText(this.purchaseButton, str4);
        }
        if ((j & 2) != j2) {
            this.purchaseButton.setOnClickListener(this.mCallback32);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        Function1<PlanType, Unit> primaryCallback;
        PricingStickyHeaderUIData pricingStickyHeaderUIData = this.mModel;
        if (pricingStickyHeaderUIData == null || (primaryCallback = pricingStickyHeaderUIData.getPrimaryCallback()) == null) {
            return;
        }
        primaryCallback.invoke(pricingStickyHeaderUIData.getPlanType());
    }
}
