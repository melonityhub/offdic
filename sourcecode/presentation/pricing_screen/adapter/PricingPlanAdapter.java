package fast.dic.dict.presentation.pricing_screen.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.ironsource.U3;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import fast.dic.dict.databinding.PlanItemLayoutBinding;
import fast.dic.dict.models.PlanType;
import fast.dic.dict.presentation.pricing_screen.UtilKt;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.IntExtKt;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PricingPlanAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002>?B\r\b\u0007\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u00107\u001a\u00060\u0003R\u00020\u00002\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\nH\u0016J\u001c\u0010;\u001a\u00020(2\n\u0010<\u001a\u00060\u0003R\u00020\u00002\u0006\u0010=\u001a\u00020\nH\u0016R6\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bj\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001a\u0010\u0017\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R\u001a\u0010\u0019\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\u001a\u0010\u001b\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R5\u0010#\u001a\u001d\u0012\u0013\u0012\u00110\n¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b('\u0012\u0004\u0012\u00020(0$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,RN\u0010-\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\n¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b('\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b(/\u0012\u0004\u0012\u00020(0.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103RN\u00104\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\n¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b('\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b%\u0012\b\b&\u0012\u0004\b\b(/\u0012\u0004\u0012\u00020(0.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00101\"\u0004\b6\u00103¨\u0006@"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;", "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;", "<init>", "()V", "Ljavax/inject/Inject;", "selectedMonth", "Ljava/util/HashMap;", "Lfast/dic/dict/models/PlanType;", "", "Lkotlin/collections/HashMap;", "getSelectedMonth", "()Ljava/util/HashMap;", "setSelectedMonth", "(Ljava/util/HashMap;)V", "isPersianCurrentLanguage", "", "()Z", "setPersianCurrentLanguage", "(Z)V", "isRenewButtonEnabled", "setRenewButtonEnabled", "isPurchaseButtonEnabled", "setPurchaseButtonEnabled", "isRenewButtonVisible", "setRenewButtonVisible", "isPurchaseButtonVisible", "setPurchaseButtonVisible", "purchaseButtonTitle", "", "getPurchaseButtonTitle", "()Ljava/lang/String;", "setPurchaseButtonTitle", "(Ljava/lang/String;)V", "onMonthChange", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "month", "", "getOnMonthChange", "()Lkotlin/jvm/functions/Function1;", "setOnMonthChange", "(Lkotlin/jvm/functions/Function1;)V", "onRenewButtonClicked", "Lkotlin/Function2;", "plan", "getOnRenewButtonClicked", "()Lkotlin/jvm/functions/Function2;", "setOnRenewButtonClicked", "(Lkotlin/jvm/functions/Function2;)V", "onPaymentButtonClicked", "getOnPaymentButtonClicked", "setOnPaymentButtonClicked", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", U3.i.L, "ViewHolder", "DiffCallback", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PricingPlanAdapter extends ListAdapter<PricingPlanUIData, ViewHolder> {
    private boolean isPersianCurrentLanguage;
    private boolean isPurchaseButtonEnabled;
    private boolean isPurchaseButtonVisible;
    private boolean isRenewButtonEnabled;
    private boolean isRenewButtonVisible;
    private Function1<? super Integer, Unit> onMonthChange;
    private Function2<? super Integer, ? super PlanType, Unit> onPaymentButtonClicked;
    private Function2<? super Integer, ? super PlanType, Unit> onRenewButtonClicked;
    private String purchaseButtonTitle;
    private HashMap<PlanType, Integer> selectedMonth;

    @Inject
    public PricingPlanAdapter() {
        super(new DiffCallback());
        this.selectedMonth = MapsKt.hashMapOf(TuplesKt.to(PlanType.PRO, 12), TuplesKt.to(PlanType.AI, 12));
        this.isRenewButtonEnabled = true;
        this.isPurchaseButtonEnabled = true;
        this.isRenewButtonVisible = true;
        this.isPurchaseButtonVisible = true;
        this.purchaseButtonTitle = "";
        this.onMonthChange = new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((Integer) obj).intValue();
                return Unit.INSTANCE;
            }
        };
        this.onRenewButtonClicked = new Function2() { // from class: fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Unit.INSTANCE;
            }
        };
        this.onPaymentButtonClicked = new Function2() { // from class: fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Unit.INSTANCE;
            }
        };
    }

    public final HashMap<PlanType, Integer> getSelectedMonth() {
        return this.selectedMonth;
    }

    public final void setSelectedMonth(HashMap<PlanType, Integer> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.selectedMonth = map;
    }

    /* JADX INFO: renamed from: isPersianCurrentLanguage, reason: from getter */
    public final boolean getIsPersianCurrentLanguage() {
        return this.isPersianCurrentLanguage;
    }

    public final void setPersianCurrentLanguage(boolean z) {
        this.isPersianCurrentLanguage = z;
    }

    /* JADX INFO: renamed from: isRenewButtonEnabled, reason: from getter */
    public final boolean getIsRenewButtonEnabled() {
        return this.isRenewButtonEnabled;
    }

    public final void setRenewButtonEnabled(boolean z) {
        this.isRenewButtonEnabled = z;
    }

    /* JADX INFO: renamed from: isPurchaseButtonEnabled, reason: from getter */
    public final boolean getIsPurchaseButtonEnabled() {
        return this.isPurchaseButtonEnabled;
    }

    public final void setPurchaseButtonEnabled(boolean z) {
        this.isPurchaseButtonEnabled = z;
    }

    /* JADX INFO: renamed from: isRenewButtonVisible, reason: from getter */
    public final boolean getIsRenewButtonVisible() {
        return this.isRenewButtonVisible;
    }

    public final void setRenewButtonVisible(boolean z) {
        this.isRenewButtonVisible = z;
    }

    /* JADX INFO: renamed from: isPurchaseButtonVisible, reason: from getter */
    public final boolean getIsPurchaseButtonVisible() {
        return this.isPurchaseButtonVisible;
    }

    public final void setPurchaseButtonVisible(boolean z) {
        this.isPurchaseButtonVisible = z;
    }

    public final String getPurchaseButtonTitle() {
        return this.purchaseButtonTitle;
    }

    public final void setPurchaseButtonTitle(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.purchaseButtonTitle = str;
    }

    public final Function1<Integer, Unit> getOnMonthChange() {
        return this.onMonthChange;
    }

    public final void setOnMonthChange(Function1<? super Integer, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onMonthChange = function1;
    }

    public final Function2<Integer, PlanType, Unit> getOnRenewButtonClicked() {
        return this.onRenewButtonClicked;
    }

    public final void setOnRenewButtonClicked(Function2<? super Integer, ? super PlanType, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onRenewButtonClicked = function2;
    }

    public final Function2<Integer, PlanType, Unit> getOnPaymentButtonClicked() {
        return this.onPaymentButtonClicked;
    }

    public final void setOnPaymentButtonClicked(Function2<? super Integer, ? super PlanType, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onPaymentButtonClicked = function2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        PlanItemLayoutBinding planItemLayoutBindingInflate = PlanItemLayoutBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(planItemLayoutBindingInflate, "inflate(...)");
        return new ViewHolder(this, planItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        PricingPlanUIData item = getItem(position);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
        holder.setBind(item);
    }

    /* JADX INFO: compiled from: PricingPlanAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/PlanItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;Lfast/dic/dict/databinding/PlanItemLayoutBinding;)V", "selectTwelfthMonth", "", Names.CONTEXT, "Landroid/content/Context;", "setBind", "model", "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final PlanItemLayoutBinding binding;
        final /* synthetic */ PricingPlanAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(final PricingPlanAdapter pricingPlanAdapter, PlanItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = pricingPlanAdapter;
            this.binding = binding;
            final Context context = binding.getRoot().getContext();
            Intrinsics.checkNotNull(context);
            selectTwelfthMonth(context);
            binding.purchaseButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PricingPlanAdapter.ViewHolder._init_$lambda$0(pricingPlanAdapter, this, view);
                }
            });
            binding.repurchaseButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PricingPlanAdapter.ViewHolder._init_$lambda$1(pricingPlanAdapter, this, view);
                }
            });
            binding.setFirstMonthPlanClicked(new View.OnClickListener() { // from class: fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PricingPlanAdapter.ViewHolder._init_$lambda$2(this.f$0, context, pricingPlanAdapter, view);
                }
            });
            binding.setSixthMonthPlanClicked(new View.OnClickListener() { // from class: fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PricingPlanAdapter.ViewHolder._init_$lambda$3(this.f$0, context, pricingPlanAdapter, view);
                }
            });
            binding.setTwelfthMonthPlanClicked(new View.OnClickListener() { // from class: fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PricingPlanAdapter.ViewHolder._init_$lambda$4(this.f$0, context, pricingPlanAdapter, view);
                }
            });
        }

        static final void _init_$lambda$0(PricingPlanAdapter pricingPlanAdapter, ViewHolder viewHolder, View view) {
            Function2<Integer, PlanType, Unit> onPaymentButtonClicked = pricingPlanAdapter.getOnPaymentButtonClicked();
            HashMap<PlanType, Integer> selectedMonth = pricingPlanAdapter.getSelectedMonth();
            PricingPlanUIData model = viewHolder.binding.getModel();
            Integer num = selectedMonth.get(model != null ? model.getPlanType() : null);
            PricingPlanUIData model2 = viewHolder.binding.getModel();
            onPaymentButtonClicked.invoke(num, model2 != null ? model2.getPlanType() : null);
        }

        static final void _init_$lambda$1(PricingPlanAdapter pricingPlanAdapter, ViewHolder viewHolder, View view) {
            Function2<Integer, PlanType, Unit> onRenewButtonClicked = pricingPlanAdapter.getOnRenewButtonClicked();
            HashMap<PlanType, Integer> selectedMonth = pricingPlanAdapter.getSelectedMonth();
            PricingPlanUIData model = viewHolder.binding.getModel();
            Integer num = selectedMonth.get(model != null ? model.getPlanType() : null);
            PricingPlanUIData model2 = viewHolder.binding.getModel();
            onRenewButtonClicked.invoke(num, model2 != null ? model2.getPlanType() : null);
        }

        static final void _init_$lambda$2(ViewHolder viewHolder, Context context, PricingPlanAdapter pricingPlanAdapter, View view) {
            viewHolder.binding.firstAlphabetPriceTv.setVisibility(0);
            MaterialCardView materialCardView = viewHolder.binding.firstMonthCard;
            Intrinsics.checkNotNull(context);
            materialCardView.setStrokeWidth(IntExtKt.toDimensionUnit$default(2.0f, context, 0, 2, null));
            viewHolder.binding.firstMonthCard.setStrokeColor(ContextExtKt.getColorFromAttr$default(context, R.attr.selected_pricing_duration, null, false, 6, null));
            viewHolder.binding.firstPriceRb.setBackgroundColor(ContextExtKt.getColorFromAttr$default(context, R.attr.selected_pricing_duration, null, false, 6, null));
            viewHolder.binding.secondAlphabetPriceTv.setVisibility(8);
            viewHolder.binding.secondMonthCard.setStrokeWidth(IntExtKt.toDimensionUnit$default(1.0f, context, 0, 2, null));
            viewHolder.binding.secondMonthCard.setStrokeColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            viewHolder.binding.secondPriceRb.setBackgroundColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            viewHolder.binding.thirdAlphabetPriceTv.setVisibility(8);
            viewHolder.binding.thirdMonthCard.setStrokeWidth(IntExtKt.toDimensionUnit$default(1.0f, context, 0, 2, null));
            viewHolder.binding.thirdMonthCard.setStrokeColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            viewHolder.binding.thirdPriceRb.setBackgroundColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            HashMap<PlanType, Integer> selectedMonth = pricingPlanAdapter.getSelectedMonth();
            PricingPlanUIData model = viewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            selectedMonth.put(model.getPlanType(), 1);
            pricingPlanAdapter.getOnMonthChange().invoke(1);
        }

        static final void _init_$lambda$3(ViewHolder viewHolder, Context context, PricingPlanAdapter pricingPlanAdapter, View view) {
            viewHolder.binding.setSelectedDuration(6);
            viewHolder.binding.firstAlphabetPriceTv.setVisibility(8);
            MaterialCardView materialCardView = viewHolder.binding.firstMonthCard;
            Intrinsics.checkNotNull(context);
            materialCardView.setStrokeWidth(IntExtKt.toDimensionUnit$default(1.0f, context, 0, 2, null));
            viewHolder.binding.firstMonthCard.setStrokeColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            viewHolder.binding.firstPriceRb.setBackgroundColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            viewHolder.binding.secondAlphabetPriceTv.setVisibility(0);
            viewHolder.binding.secondMonthCard.setStrokeWidth(IntExtKt.toDimensionUnit$default(2.0f, context, 0, 2, null));
            viewHolder.binding.secondMonthCard.setStrokeColor(ContextExtKt.getColorFromAttr$default(context, R.attr.selected_pricing_duration, null, false, 6, null));
            viewHolder.binding.secondPriceRb.setBackgroundColor(ContextExtKt.getColorFromAttr$default(context, R.attr.selected_pricing_duration, null, false, 6, null));
            viewHolder.binding.thirdAlphabetPriceTv.setVisibility(8);
            viewHolder.binding.thirdMonthCard.setStrokeWidth(IntExtKt.toDimensionUnit$default(1.0f, context, 0, 2, null));
            viewHolder.binding.thirdMonthCard.setStrokeColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            viewHolder.binding.thirdPriceRb.setBackgroundColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            HashMap<PlanType, Integer> selectedMonth = pricingPlanAdapter.getSelectedMonth();
            PricingPlanUIData model = viewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            selectedMonth.put(model.getPlanType(), 6);
            pricingPlanAdapter.getOnMonthChange().invoke(6);
        }

        static final void _init_$lambda$4(ViewHolder viewHolder, Context context, PricingPlanAdapter pricingPlanAdapter, View view) {
            Intrinsics.checkNotNull(context);
            viewHolder.selectTwelfthMonth(context);
            HashMap<PlanType, Integer> selectedMonth = pricingPlanAdapter.getSelectedMonth();
            PricingPlanUIData model = viewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            selectedMonth.put(model.getPlanType(), 12);
            pricingPlanAdapter.getOnMonthChange().invoke(12);
        }

        private final void selectTwelfthMonth(Context context) {
            this.binding.firstAlphabetPriceTv.setVisibility(8);
            this.binding.firstMonthCard.setStrokeWidth(IntExtKt.toDimensionUnit$default(1.0f, context, 0, 2, null));
            this.binding.firstMonthCard.setStrokeColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            this.binding.firstPriceRb.setBackgroundColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            this.binding.secondAlphabetPriceTv.setVisibility(8);
            this.binding.secondMonthCard.setStrokeWidth(IntExtKt.toDimensionUnit$default(1.0f, context, 0, 2, null));
            this.binding.secondMonthCard.setStrokeColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            this.binding.secondPriceRb.setBackgroundColor(ContextExtKt.getColorFromAttr$default(context, R.attr.unselected_pricing_duration, null, false, 6, null));
            this.binding.thirdAlphabetPriceTv.setVisibility(0);
            this.binding.thirdMonthCard.setStrokeWidth(IntExtKt.toDimensionUnit$default(2.0f, context, 0, 2, null));
            this.binding.thirdMonthCard.setStrokeColor(ContextExtKt.getColorFromAttr$default(context, R.attr.selected_pricing_duration, null, false, 6, null));
            this.binding.thirdPriceRb.setBackgroundColor(ContextExtKt.getColorFromAttr$default(context, R.attr.selected_pricing_duration, null, false, 6, null));
            this.this$0.getSelectedMonth().put(PlanType.AI, 12);
        }

        public final void setBind(PricingPlanUIData model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
            if (model.getPlanType() == PlanType.AI && model.getSubscriptionMessage() != null) {
                this.binding.dividerView.setVisibility(0);
                boolean isPersianCurrentLanguage = this.this$0.getIsPersianCurrentLanguage();
                PlanItemLayoutBinding planItemLayoutBinding = this.binding;
                if (isPersianCurrentLanguage) {
                    planItemLayoutBinding.dividerTv.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, ContextCompat.getDrawable(this.binding.getRoot().getContext(), R.drawable.ic_info), (Drawable) null);
                } else {
                    planItemLayoutBinding.dividerTv.setCompoundDrawablesWithIntrinsicBounds(ContextCompat.getDrawable(this.binding.getRoot().getContext(), R.drawable.ic_info), (Drawable) null, (Drawable) null, (Drawable) null);
                }
            } else {
                this.binding.dividerView.setVisibility(8);
            }
            this.binding.setPlanColor(Integer.valueOf(UtilKt.getPlanColor(model.getPlanType().getIndex())));
            this.binding.setPlanIcon(Integer.valueOf(UtilKt.getPlanIcon(model.getPlanType().getIndex())));
            PlanItemLayoutBinding planItemLayoutBinding2 = this.binding;
            String subscriptionMessage = model.getSubscriptionMessage();
            planItemLayoutBinding2.setHasPlan(Boolean.valueOf(!(subscriptionMessage == null || subscriptionMessage.length() == 0)));
            if (this.this$0.getPurchaseButtonTitle().length() > 0) {
                this.binding.purchaseButton.setText(this.this$0.getPurchaseButtonTitle());
            }
            this.binding.purchaseButton.setEnabled(this.this$0.getIsPurchaseButtonEnabled());
            this.binding.repurchaseButton.setEnabled(this.this$0.getIsRenewButtonEnabled());
            this.binding.purchaseButton.setVisibility(this.this$0.getIsPurchaseButtonVisible() ? 0 : 8);
            this.binding.repurchaseButton.setVisibility(this.this$0.getIsRenewButtonVisible() ? 0 : 8);
        }
    }

    /* JADX INFO: compiled from: PricingPlanAdapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallback extends DiffUtil.ItemCallback<PricingPlanUIData> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(PricingPlanUIData oldItem, PricingPlanUIData newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(PricingPlanUIData oldItem, PricingPlanUIData newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }
}
