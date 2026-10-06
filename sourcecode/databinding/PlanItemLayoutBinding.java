package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.divider.MaterialDivider;
import fast.dic.dict.R;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanUIData;
import fast.dic.dict.presentation.pricing_screen.custom.CrossedLineTextView;

/* JADX INFO: loaded from: classes11.dex */
public abstract class PlanItemLayoutBinding extends ViewDataBinding {
    public final ConstraintLayout actionButtonContainer;
    public final TextView dividerTv;
    public final MaterialCardView dividerView;
    public final MaterialDivider dividerView1;
    public final TextView firstAlphabetPriceTv;
    public final TextView firstDurationTv;
    public final ConstraintLayout firstInnerMonthLayout;
    public final MaterialCardView firstMonthCard;
    public final ConstraintLayout firstMonthLayout;
    public final ImageView firstPriceRb;
    public final TextView firstPriceTv;
    public final ConstraintLayout headerCv;

    @Bindable
    protected View.OnClickListener mFirstMonthPlanClicked;

    @Bindable
    protected Boolean mHasPlan;

    @Bindable
    protected PricingPlanUIData mModel;

    @Bindable
    protected Integer mPlanColor;

    @Bindable
    protected Integer mPlanIcon;

    @Bindable
    protected Integer mSelectedDuration;

    @Bindable
    protected View.OnClickListener mSixthMonthPlanClicked;

    @Bindable
    protected View.OnClickListener mTwelfthMonthPlanClicked;
    public final TextView packageDurationTv;
    public final TextView packageTitleTv;
    public final ImageView planTitleTv;
    public final LinearLayout priceCv;
    public final Button purchaseButton;
    public final Button repurchaseButton;
    public final TextView secondAlphabetPriceTv;
    public final CrossedLineTextView secondDealTv;
    public final TextView secondDurationTv;
    public final TextView secondFreeMonthsTv;
    public final ConstraintLayout secondInnerMonthLayout;
    public final MaterialCardView secondMonthCard;
    public final ConstraintLayout secondMonthLayout;
    public final ImageView secondPriceRb;
    public final TextView secondPriceTv;
    public final TextView thirdAlphabetPriceTv;
    public final CrossedLineTextView thirdDealTv;
    public final TextView thirdDurationTv;
    public final TextView thirdFreeMonthsTv;
    public final ConstraintLayout thirdInnerMonthLayout;
    public final MaterialCardView thirdMonthCard;
    public final ConstraintLayout thirdMonthLayout;
    public final ImageView thirdPriceRb;
    public final TextView thirdPriceTv;

    public abstract void setFirstMonthPlanClicked(View.OnClickListener onClickListener);

    public abstract void setHasPlan(Boolean bool);

    public abstract void setModel(PricingPlanUIData pricingPlanUIData);

    public abstract void setPlanColor(Integer num);

    public abstract void setPlanIcon(Integer num);

    public abstract void setSelectedDuration(Integer num);

    public abstract void setSixthMonthPlanClicked(View.OnClickListener onClickListener);

    public abstract void setTwelfthMonthPlanClicked(View.OnClickListener onClickListener);

    protected PlanItemLayoutBinding(Object obj, View view, int i, ConstraintLayout constraintLayout, TextView textView, MaterialCardView materialCardView, MaterialDivider materialDivider, TextView textView2, TextView textView3, ConstraintLayout constraintLayout2, MaterialCardView materialCardView2, ConstraintLayout constraintLayout3, ImageView imageView, TextView textView4, ConstraintLayout constraintLayout4, TextView textView5, TextView textView6, ImageView imageView2, LinearLayout linearLayout, Button button, Button button2, TextView textView7, CrossedLineTextView crossedLineTextView, TextView textView8, TextView textView9, ConstraintLayout constraintLayout5, MaterialCardView materialCardView3, ConstraintLayout constraintLayout6, ImageView imageView3, TextView textView10, TextView textView11, CrossedLineTextView crossedLineTextView2, TextView textView12, TextView textView13, ConstraintLayout constraintLayout7, MaterialCardView materialCardView4, ConstraintLayout constraintLayout8, ImageView imageView4, TextView textView14) {
        super(obj, view, i);
        this.actionButtonContainer = constraintLayout;
        this.dividerTv = textView;
        this.dividerView = materialCardView;
        this.dividerView1 = materialDivider;
        this.firstAlphabetPriceTv = textView2;
        this.firstDurationTv = textView3;
        this.firstInnerMonthLayout = constraintLayout2;
        this.firstMonthCard = materialCardView2;
        this.firstMonthLayout = constraintLayout3;
        this.firstPriceRb = imageView;
        this.firstPriceTv = textView4;
        this.headerCv = constraintLayout4;
        this.packageDurationTv = textView5;
        this.packageTitleTv = textView6;
        this.planTitleTv = imageView2;
        this.priceCv = linearLayout;
        this.purchaseButton = button;
        this.repurchaseButton = button2;
        this.secondAlphabetPriceTv = textView7;
        this.secondDealTv = crossedLineTextView;
        this.secondDurationTv = textView8;
        this.secondFreeMonthsTv = textView9;
        this.secondInnerMonthLayout = constraintLayout5;
        this.secondMonthCard = materialCardView3;
        this.secondMonthLayout = constraintLayout6;
        this.secondPriceRb = imageView3;
        this.secondPriceTv = textView10;
        this.thirdAlphabetPriceTv = textView11;
        this.thirdDealTv = crossedLineTextView2;
        this.thirdDurationTv = textView12;
        this.thirdFreeMonthsTv = textView13;
        this.thirdInnerMonthLayout = constraintLayout7;
        this.thirdMonthCard = materialCardView4;
        this.thirdMonthLayout = constraintLayout8;
        this.thirdPriceRb = imageView4;
        this.thirdPriceTv = textView14;
    }

    public Boolean getHasPlan() {
        return this.mHasPlan;
    }

    public Integer getPlanColor() {
        return this.mPlanColor;
    }

    public Integer getPlanIcon() {
        return this.mPlanIcon;
    }

    public Integer getSelectedDuration() {
        return this.mSelectedDuration;
    }

    public View.OnClickListener getFirstMonthPlanClicked() {
        return this.mFirstMonthPlanClicked;
    }

    public View.OnClickListener getSixthMonthPlanClicked() {
        return this.mSixthMonthPlanClicked;
    }

    public View.OnClickListener getTwelfthMonthPlanClicked() {
        return this.mTwelfthMonthPlanClicked;
    }

    public PricingPlanUIData getModel() {
        return this.mModel;
    }

    public static PlanItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PlanItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (PlanItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.plan_item_layout, viewGroup, z, obj);
    }

    public static PlanItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PlanItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (PlanItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.plan_item_layout, null, false, obj);
    }

    public static PlanItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PlanItemLayoutBinding bind(View view, Object obj) {
        return (PlanItemLayoutBinding) bind(obj, view, R.layout.plan_item_layout);
    }
}
