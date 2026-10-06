package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.divider.MaterialDivider;
import fast.dic.dict.R;
import fast.dic.dict.domain.entity.pricing.Plan;
import fast.dic.dict.domain.entity.pricing.Price;
import fast.dic.dict.generated.callback.OnClickListener;
import fast.dic.dict.presentation.pricing_screen.adapter.BindingAdapters;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanUIData;
import fast.dic.dict.presentation.pricing_screen.custom.CrossedLineTextView;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
public class PlanItemLayoutBindingImpl extends PlanItemLayoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback7;
    private final View.OnClickListener mCallback8;
    private final View.OnClickListener mCallback9;
    private long mDirtyFlags;
    private final MaterialCardView mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.header_cv, 17);
        sparseIntArray.put(R.id.divider_view_1, 18);
        sparseIntArray.put(R.id.price_cv, 19);
        sparseIntArray.put(R.id.first_month_layout, 20);
        sparseIntArray.put(R.id.first_inner_month_layout, 21);
        sparseIntArray.put(R.id.first_duration_tv, 22);
        sparseIntArray.put(R.id.first_price_rb, 23);
        sparseIntArray.put(R.id.second_month_layout, 24);
        sparseIntArray.put(R.id.second_inner_month_layout, 25);
        sparseIntArray.put(R.id.second_duration_tv, 26);
        sparseIntArray.put(R.id.second_price_rb, 27);
        sparseIntArray.put(R.id.third_month_layout, 28);
        sparseIntArray.put(R.id.third_inner_month_layout, 29);
        sparseIntArray.put(R.id.third_duration_tv, 30);
        sparseIntArray.put(R.id.third_price_rb, 31);
        sparseIntArray.put(R.id.divider_view, 32);
        sparseIntArray.put(R.id.divider_tv, 33);
        sparseIntArray.put(R.id.action_button_container, 34);
        sparseIntArray.put(R.id.purchase_button, 35);
        sparseIntArray.put(R.id.repurchase_button, 36);
    }

    public PlanItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 37, sIncludes, sViewsWithIds));
    }

    private PlanItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[34], (TextView) objArr[33], (MaterialCardView) objArr[32], (MaterialDivider) objArr[18], (TextView) objArr[6], (TextView) objArr[22], (ConstraintLayout) objArr[21], (MaterialCardView) objArr[4], (ConstraintLayout) objArr[20], (ImageView) objArr[23], (TextView) objArr[5], (ConstraintLayout) objArr[17], (TextView) objArr[3], (TextView) objArr[2], (ImageView) objArr[1], (LinearLayout) objArr[19], (Button) objArr[35], (Button) objArr[36], (TextView) objArr[11], (CrossedLineTextView) objArr[8], (TextView) objArr[26], (TextView) objArr[9], (ConstraintLayout) objArr[25], (MaterialCardView) objArr[7], (ConstraintLayout) objArr[24], (ImageView) objArr[27], (TextView) objArr[10], (TextView) objArr[16], (CrossedLineTextView) objArr[13], (TextView) objArr[30], (TextView) objArr[14], (ConstraintLayout) objArr[29], (MaterialCardView) objArr[12], (ConstraintLayout) objArr[28], (ImageView) objArr[31], (TextView) objArr[15]);
        this.mDirtyFlags = -1L;
        this.firstAlphabetPriceTv.setTag(null);
        this.firstMonthCard.setTag(null);
        this.firstPriceTv.setTag(null);
        MaterialCardView materialCardView = (MaterialCardView) objArr[0];
        this.mboundView0 = materialCardView;
        materialCardView.setTag(null);
        this.packageDurationTv.setTag(null);
        this.packageTitleTv.setTag(null);
        this.planTitleTv.setTag(null);
        this.secondAlphabetPriceTv.setTag(null);
        this.secondDealTv.setTag(null);
        this.secondFreeMonthsTv.setTag(null);
        this.secondMonthCard.setTag(null);
        this.secondPriceTv.setTag(null);
        this.thirdAlphabetPriceTv.setTag(null);
        this.thirdDealTv.setTag(null);
        this.thirdFreeMonthsTv.setTag(null);
        this.thirdMonthCard.setTag(null);
        this.thirdPriceTv.setTag(null);
        setRootTag(view);
        this.mCallback9 = new OnClickListener(this, 3);
        this.mCallback8 = new OnClickListener(this, 2);
        this.mCallback7 = new OnClickListener(this, 1);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 256L;
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
        if (30 == i) {
            setModel((PricingPlanUIData) obj);
            return true;
        }
        if (41 == i) {
            setPlanIcon((Integer) obj);
            return true;
        }
        if (17 == i) {
            setFirstMonthPlanClicked((View.OnClickListener) obj);
            return true;
        }
        if (49 == i) {
            setSixthMonthPlanClicked((View.OnClickListener) obj);
            return true;
        }
        if (53 == i) {
            setTwelfthMonthPlanClicked((View.OnClickListener) obj);
            return true;
        }
        if (48 == i) {
            setSelectedDuration((Integer) obj);
            return true;
        }
        if (18 == i) {
            setHasPlan((Boolean) obj);
            return true;
        }
        if (40 != i) {
            return false;
        }
        setPlanColor((Integer) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.PlanItemLayoutBinding
    public void setModel(PricingPlanUIData pricingPlanUIData) {
        this.mModel = pricingPlanUIData;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PlanItemLayoutBinding
    public void setPlanIcon(Integer num) {
        this.mPlanIcon = num;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(41);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PlanItemLayoutBinding
    public void setFirstMonthPlanClicked(View.OnClickListener onClickListener) {
        this.mFirstMonthPlanClicked = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(17);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PlanItemLayoutBinding
    public void setSixthMonthPlanClicked(View.OnClickListener onClickListener) {
        this.mSixthMonthPlanClicked = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        notifyPropertyChanged(49);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PlanItemLayoutBinding
    public void setTwelfthMonthPlanClicked(View.OnClickListener onClickListener) {
        this.mTwelfthMonthPlanClicked = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(53);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PlanItemLayoutBinding
    public void setSelectedDuration(Integer num) {
        this.mSelectedDuration = num;
    }

    @Override // fast.dic.dict.databinding.PlanItemLayoutBinding
    public void setHasPlan(Boolean bool) {
        this.mHasPlan = bool;
        synchronized (this) {
            this.mDirtyFlags |= 64;
        }
        notifyPropertyChanged(18);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.PlanItemLayoutBinding
    public void setPlanColor(Integer num) {
        this.mPlanColor = num;
        synchronized (this) {
            this.mDirtyFlags |= 128;
        }
        notifyPropertyChanged(40);
        super.requestRebind();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a3 A[PHI: r2
  0x00a3: PHI (r2v1 long) = (r2v0 long), (r2v4 long) binds: [B:23:0x008c, B:30:0x009d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() throws IOException {
        long j;
        long j2;
        String secondDurationPriceToWord;
        String str;
        String str2;
        String subscriptionMessage;
        String thirdDurationPriceToWord;
        String firstDurationPriceToWord;
        String str3;
        int i;
        Plan plan;
        Price price;
        String title;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        PricingPlanUIData pricingPlanUIData = this.mModel;
        Integer num = this.mPlanIcon;
        View.OnClickListener onClickListener = this.mFirstMonthPlanClicked;
        View.OnClickListener onClickListener2 = this.mSixthMonthPlanClicked;
        View.OnClickListener onClickListener3 = this.mTwelfthMonthPlanClicked;
        Boolean bool = this.mHasPlan;
        Integer num2 = this.mPlanColor;
        String str4 = null;
        if ((j & 257) != 0) {
            if (pricingPlanUIData != null) {
                subscriptionMessage = pricingPlanUIData.getSubscriptionMessage();
                thirdDurationPriceToWord = pricingPlanUIData.getThirdDurationPriceToWord();
                firstDurationPriceToWord = pricingPlanUIData.getFirstDurationPriceToWord();
                plan = pricingPlanUIData.getPlan();
                secondDurationPriceToWord = pricingPlanUIData.getSecondDurationPriceToWord();
            } else {
                secondDurationPriceToWord = null;
                subscriptionMessage = null;
                thirdDurationPriceToWord = null;
                firstDurationPriceToWord = null;
                plan = null;
            }
            if (plan != null) {
                title = plan.getTitle();
                price = plan.getPrice();
            } else {
                price = null;
                title = null;
            }
            if (price != null) {
                String str5 = price.get1();
                String str6 = price.get6();
                str3 = price.get12();
                str = str5;
                str2 = title;
                str4 = str6;
                j2 = 0;
            } else {
                str2 = title;
                j2 = 0;
                str = null;
                str3 = null;
            }
        } else {
            j2 = 0;
            secondDurationPriceToWord = null;
            str = null;
            str2 = null;
            subscriptionMessage = null;
            thirdDurationPriceToWord = null;
            firstDurationPriceToWord = null;
            str3 = null;
        }
        int iSafeUnbox = (j & 258) != j2 ? ViewDataBinding.safeUnbox(num) : 0;
        long j3 = j & 320;
        if (j3 != j2) {
            boolean zSafeUnbox = ViewDataBinding.safeUnbox(bool);
            if (j3 != j2) {
                j |= zSafeUnbox ? 1024L : 512L;
            }
            if (zSafeUnbox) {
                i = 0;
            } else {
                i = 8;
            }
        } else {
            i = 0;
        }
        long j4 = j & 384;
        int iSafeUnbox2 = j4 != j2 ? ViewDataBinding.safeUnbox(num2) : 0;
        if ((257 & j) != j2) {
            TextViewBindingAdapter.setText(this.firstAlphabetPriceTv, firstDurationPriceToWord);
            TextViewBindingAdapter.setText(this.firstPriceTv, str);
            TextViewBindingAdapter.setText(this.packageDurationTv, subscriptionMessage);
            TextViewBindingAdapter.setText(this.packageTitleTv, str2);
            TextViewBindingAdapter.setText(this.secondAlphabetPriceTv, secondDurationPriceToWord);
            BindingAdapters.bindingStrikeThroughMonths(this.secondDealTv, 6, str, str4);
            BindingAdapters.bindingFreeMonthsBadge(this.secondFreeMonthsTv, 6, str, str4);
            TextViewBindingAdapter.setText(this.secondPriceTv, str4);
            TextViewBindingAdapter.setText(this.thirdAlphabetPriceTv, thirdDurationPriceToWord);
            BindingAdapters.bindingStrikeThroughMonths(this.thirdDealTv, 12, str, str3);
            BindingAdapters.bindingFreeMonthsBadge(this.thirdFreeMonthsTv, 12, str, str3);
            TextViewBindingAdapter.setText(this.thirdPriceTv, str3);
        }
        if ((256 & j) != j2) {
            this.firstMonthCard.setOnClickListener(this.mCallback7);
            this.secondMonthCard.setOnClickListener(this.mCallback8);
            this.thirdMonthCard.setOnClickListener(this.mCallback9);
        }
        if ((j & 320) != j2) {
            this.packageDurationTv.setVisibility(i);
        }
        if (j4 != j2) {
            BindingAdapters.changeTextColor(this.packageDurationTv, iSafeUnbox2);
            BindingAdapters.changeTextColor(this.packageTitleTv, iSafeUnbox2);
            fast.dic.dict.BindingAdapters.setIconTintColorImageView(this.planTitleTv, iSafeUnbox2);
        }
        if ((j & 258) != j2) {
            BindingAdapters.changeImage(this.planTitleTv, iSafeUnbox);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        View.OnClickListener onClickListener;
        if (i == 1) {
            View.OnClickListener onClickListener2 = this.mFirstMonthPlanClicked;
            if (onClickListener2 != null) {
                onClickListener2.onClick(view);
                return;
            }
            return;
        }
        if (i != 2) {
            if (i == 3 && (onClickListener = this.mTwelfthMonthPlanClicked) != null) {
                onClickListener.onClick(view);
                return;
            }
            return;
        }
        View.OnClickListener onClickListener3 = this.mSixthMonthPlanClicked;
        if (onClickListener3 != null) {
            onClickListener3.onClick(view);
        }
    }
}
