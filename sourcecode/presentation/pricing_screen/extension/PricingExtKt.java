package fast.dic.dict.presentation.pricing_screen.extension;

import android.content.Context;
import android.util.Log;
import android.view.ViewTreeObserver;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.tabs.TabLayout;
import com.google.mlkit.nl.translate.TranslateLanguage;
import com.parse.ParseException;
import com.parse.ParseUser;
import fast.dic.dict.R;
import fast.dic.dict.databinding.PricingStickyHeaderLayoutBinding;
import fast.dic.dict.domain.billing.PurchaseListingDetails;
import fast.dic.dict.domain.entity.pricing.Plan;
import fast.dic.dict.domain.entity.pricing.PricingResponse;
import fast.dic.dict.models.Feature;
import fast.dic.dict.models.PlanType;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.presentation.pricing_screen.PricingFragment;
import fast.dic.dict.presentation.pricing_screen.UtilKt;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingStickyHeaderUIData;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.BuildConfigExtKt;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel;
import fast.dic.dict.viewmodels.fragments.GooglePlayPaymentMethodState;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: PricingExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\"\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0002\u001a\u0018\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005\u001a\n\u0010\u000e\u001a\u00020\u0001*\u00020\u0002\u001aF\u0010\u000f\u001a>\u0012\u0004\u0012\u00020\u0007\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u00130\u0010j\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013`\u0014*\u00020\u0002\u001a\u001a\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013*\u00020\u0002\u001a&\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\u001a\u0010\u0017\u001a\u0016\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019\u0012\u0004\u0012\u00020\u00010\u0018¨\u0006\u001b"}, d2 = {"applyModelForFeatureTable", "", "Lfast/dic/dict/presentation/pricing_screen/PricingFragment;", "updateModelForFeatureTable", "pricingResponse", "Lfast/dic/dict/domain/entity/pricing/PricingResponse;", "type", "Lfast/dic/dict/models/PlanType;", "month", "", "handleScrollingFeatureStickyView", "flatFeatures", "", "Lfast/dic/dict/models/Feature;", "updateFeatureTableVisibleItems", "getProductIds", "Ljava/util/HashMap;", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "Lkotlin/collections/HashMap;", "getFlatProductIds", "getProductFromGooglePlay", "callback", "Lkotlin/Function1;", "", "Lfast/dic/dict/domain/billing/PurchaseListingDetails;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class PricingExtKt {
    public static final void applyModelForFeatureTable(PricingFragment pricingFragment) {
        Intrinsics.checkNotNullParameter(pricingFragment, "<this>");
        ConstraintLayout containerView = pricingFragment.getBinding$app().pricingStickyHeaderLayout.containerView;
        Intrinsics.checkNotNullExpressionValue(containerView, "containerView");
        ViewExtKt.hideMeNow(containerView);
        pricingFragment.getBinding$app().pricingHeaderLayout.setModel(PricingStickyHeaderUIData.INSTANCE.sample());
        pricingFragment.getBinding$app().pricingStickyHeaderLayout.setModel(pricingFragment.getBinding$app().pricingHeaderLayout.getModel());
    }

    /* JADX WARN: Code duplicated, block: B:13:0x004f A[PHI: r2 r6 r11
  0x004f: PHI (r2v34 java.lang.String) = (r2v5 java.lang.String), (r2v36 java.lang.String) binds: [B:29:0x0081, B:12:0x004d] A[DONT_GENERATE, DONT_INLINE]
  0x004f: PHI (r6v13 fast.dic.dict.domain.entity.pricing.Plan) = (r6v6 fast.dic.dict.domain.entity.pricing.Plan), (r6v14 fast.dic.dict.domain.entity.pricing.Plan) binds: [B:29:0x0081, B:12:0x004d] A[DONT_GENERATE, DONT_INLINE]
  0x004f: PHI (r11v15 java.lang.Boolean) = (r11v7 java.lang.Boolean), (r11v17 java.lang.Boolean) binds: [B:29:0x0081, B:12:0x004d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x0051 A[PHI: r2 r6 r11
  0x0051: PHI (r2v6 java.lang.String) = (r2v5 java.lang.String), (r2v36 java.lang.String) binds: [B:29:0x0081, B:12:0x004d] A[DONT_GENERATE, DONT_INLINE]
  0x0051: PHI (r6v7 fast.dic.dict.domain.entity.pricing.Plan) = (r6v6 fast.dic.dict.domain.entity.pricing.Plan), (r6v14 fast.dic.dict.domain.entity.pricing.Plan) binds: [B:29:0x0081, B:12:0x004d] A[DONT_GENERATE, DONT_INLINE]
  0x0051: PHI (r11v10 java.lang.Boolean) = (r11v7 java.lang.Boolean), (r11v17 java.lang.Boolean) binds: [B:29:0x0081, B:12:0x004d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:83:0x018b  */
    public static final void updateModelForFeatureTable(final PricingFragment pricingFragment, PricingResponse pricingResponse, final PlanType type, int i) throws ParseException {
        boolean z;
        Boolean boolValueOf;
        boolean z2;
        String str;
        String title;
        Plan plan2;
        Boolean boolValueOf2;
        boolean z3;
        String str2;
        String str3;
        boolean z4;
        String str4;
        String str5;
        Intrinsics.checkNotNullParameter(pricingFragment, "<this>");
        Intrinsics.checkNotNullParameter(pricingResponse, "pricingResponse");
        Intrinsics.checkNotNullParameter(type, "type");
        Plan plan3 = pricingResponse.getPlan2();
        int planColor = UtilKt.getPlanColor(type.getIndex());
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (type == PlanType.AI) {
            title = pricingResponse.getPlan3().getTitle();
            plan2 = pricingResponse.getPlan3();
            boolValueOf2 = fDParseUser != null ? Boolean.valueOf(fDParseUser.hasPlan3InView()) : null;
            if (fDParseUser != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolValueOf = boolValueOf2;
            z = z3;
            str = title;
            plan3 = plan2;
            z2 = false;
        } else if (type == PlanType.PRO) {
            title = pricingResponse.getPlan2().getTitle();
            plan2 = pricingResponse.getPlan2();
            boolValueOf2 = Boolean.valueOf((fDParseUser != null && fDParseUser.hasPlan3InView()) || (fDParseUser != null && fDParseUser.hasPlan2InView()));
            if (fDParseUser != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolValueOf = boolValueOf2;
            z = z3;
            str = title;
            plan3 = plan2;
            z2 = false;
        } else {
            String string = pricingFragment.getString(R.string.free_plan_title);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            z = fDParseUser != null;
            boolValueOf = Boolean.valueOf(fDParseUser != null && fDParseUser.getEmailVerified());
            z2 = (fDParseUser != null && fDParseUser.hasPlan2Or3()) || (fDParseUser != null && fDParseUser.hasPlan1InView());
            str = string;
        }
        if (i == 1) {
            str2 = "(" + pricingFragment.getString(R.string.one_month_subscription_title) + ")";
        } else if (i != 6) {
            str2 = "(" + pricingFragment.getString(R.string.one_year_subscription_title) + ")";
        } else {
            str2 = "(" + pricingFragment.getString(R.string.six_months_subscription_title) + ")";
        }
        if (type == PlanType.FREE) {
            str3 = "-";
            str2 = "";
        } else if (i == 1) {
            str3 = plan3.getPrice().get1();
        } else if (i == 6) {
            str3 = plan3.getPrice().get6();
        } else {
            str3 = plan3.getPrice().get12();
        }
        if (type == PlanType.FREE || !BuildConfigExtKt.isPlayStore() || pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
            z4 = false;
        } else {
            if (i == 1) {
                List<String> list = pricingFragment.getGooglePlayPrices().get(type);
                if (list != null) {
                    z4 = false;
                    str4 = list.get(0);
                } else {
                    z4 = false;
                    str4 = null;
                }
            } else if (i == 6) {
                List<String> list2 = pricingFragment.getGooglePlayPrices().get(type);
                if (list2 != null) {
                    str5 = list2.get(1);
                    str4 = str5;
                    z4 = false;
                } else {
                    z4 = false;
                    str4 = null;
                }
            } else {
                List<String> list3 = pricingFragment.getGooglePlayPrices().get(type);
                if (list3 != null) {
                    str5 = list3.get(2);
                    str4 = str5;
                    z4 = false;
                } else {
                    z4 = false;
                    str4 = null;
                }
            }
            str3 = str4 == null ? "Not Available" : str4;
        }
        PricingStickyHeaderLayoutBinding pricingStickyHeaderLayoutBinding = pricingFragment.getBinding$app().pricingHeaderLayout;
        boolean zBooleanValue = z4;
        boolean z5 = z2;
        String str6 = str3;
        Plan plan4 = pricingResponse.getPlan3();
        Plan plan5 = pricingResponse.getPlan2();
        if (boolValueOf != null) {
            zBooleanValue = boolValueOf.booleanValue();
        }
        pricingStickyHeaderLayoutBinding.setModel(new PricingStickyHeaderUIData(plan4, plan5, str, type, str6, zBooleanValue, z5, z, planColor, UtilKt.getPlanIcon(type.getIndex()), str2, new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.extension.PricingExtKt$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PricingExtKt.updateModelForFeatureTable$lambda$0(pricingFragment, type, (PlanType) obj);
            }
        }));
        pricingFragment.getBinding$app().pricingStickyHeaderLayout.setModel(pricingFragment.getBinding$app().pricingHeaderLayout.getModel());
        pricingFragment.getBinding$app().pricingStickyHeaderLayout.TabLayout.setSelectedTabIndicatorColor(pricingFragment.getResources().getColor(planColor, pricingFragment.requireActivity().getTheme()));
        TabLayout tabLayout = pricingFragment.getBinding$app().pricingStickyHeaderLayout.TabLayout;
        Context contextRequireContext = pricingFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        tabLayout.setTabTextColors(ContextExtKt.getColorFromAttr$default(contextRequireContext, R.attr.labelTextColor, null, false, 6, null), pricingFragment.getResources().getColor(planColor, pricingFragment.requireActivity().getTheme()));
        pricingFragment.getBinding$app().pricingHeaderLayout.TabLayout.setSelectedTabIndicatorColor(pricingFragment.getResources().getColor(planColor, pricingFragment.requireActivity().getTheme()));
        TabLayout tabLayout2 = pricingFragment.getBinding$app().pricingHeaderLayout.TabLayout;
        Context contextRequireContext2 = pricingFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        tabLayout2.setTabTextColors(ContextExtKt.getColorFromAttr$default(contextRequireContext2, R.attr.labelTextColor, null, false, 6, null), pricingFragment.getResources().getColor(planColor, pricingFragment.requireActivity().getTheme()));
    }

    static final Unit updateModelForFeatureTable$lambda$0(PricingFragment pricingFragment, PlanType planType, PlanType it) {
        Intrinsics.checkNotNullParameter(it, "it");
        pricingFragment.handlePaymentMethods$app(planType, pricingFragment.getSelectedMonth());
        return Unit.INSTANCE;
    }

    public static final void handleScrollingFeatureStickyView(final PricingFragment pricingFragment) {
        Intrinsics.checkNotNullParameter(pricingFragment, "<this>");
        pricingFragment.getBinding$app().scrollview.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() { // from class: fast.dic.dict.presentation.pricing_screen.extension.PricingExtKt$$ExternalSyntheticLambda2
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                PricingExtKt.handleScrollingFeatureStickyView$lambda$0(pricingFragment);
            }
        });
    }

    static final void handleScrollingFeatureStickyView$lambda$0(PricingFragment pricingFragment) {
        int[] iArr = new int[2];
        pricingFragment.getBinding$app().pricingHeaderLayout.containerView.getLocationOnScreen(iArr);
        int i = iArr[1];
        pricingFragment.getBinding$app().scrollview.getLocationOnScreen(iArr);
        if (i - iArr[1] <= 0) {
            ConstraintLayout containerView = pricingFragment.getBinding$app().pricingStickyHeaderLayout.containerView;
            Intrinsics.checkNotNullExpressionValue(containerView, "containerView");
            ViewExtKt.showMeNow(containerView);
        } else {
            ConstraintLayout containerView2 = pricingFragment.getBinding$app().pricingStickyHeaderLayout.containerView;
            Intrinsics.checkNotNullExpressionValue(containerView2, "containerView");
            ViewExtKt.hideMeNow(containerView2);
        }
    }

    public static final List<Feature> flatFeatures(PricingFragment pricingFragment, PricingResponse pricingResponse) {
        Intrinsics.checkNotNullParameter(pricingFragment, "<this>");
        Intrinsics.checkNotNullParameter(pricingResponse, "pricingResponse");
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(pricingResponse.getTable().getOne());
        String string = pricingFragment.getString(R.string.pricing_feature_list_part_two_header);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        arrayList.add(new Feature(string, "", true, false, false, false, false));
        arrayList.addAll(pricingResponse.getTable().getTwo());
        return arrayList;
    }

    public static final void updateFeatureTableVisibleItems(PricingFragment pricingFragment) {
        Intrinsics.checkNotNullParameter(pricingFragment, "<this>");
        RecyclerView.LayoutManager layoutManager = pricingFragment.getBinding$app().featuresRv.getLayoutManager();
        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        if (iFindFirstVisibleItemPosition == -1 || iFindLastVisibleItemPosition == -1 || iFindFirstVisibleItemPosition > iFindLastVisibleItemPosition) {
            return;
        }
        while (true) {
            RecyclerView.Adapter adapter = pricingFragment.getBinding$app().featuresRv.getAdapter();
            if (adapter != null) {
                adapter.notifyItemChanged(iFindFirstVisibleItemPosition);
            }
            if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                return;
            } else {
                iFindFirstVisibleItemPosition++;
            }
        }
    }

    public static final HashMap<PlanType, ArrayList<String>> getProductIds(PricingFragment pricingFragment) {
        Intrinsics.checkNotNullParameter(pricingFragment, "<this>");
        return MapsKt.hashMapOf(TuplesKt.to(PlanType.PRO, CollectionsKt.arrayListOf(ConstKt.ONE_MONTH_SUBSCRIPTION, ConstKt.SIX_MONTHS_SUBSCRIPTION, ConstKt.ONE_YEAR_SUBSCRIPTION)), TuplesKt.to(PlanType.AI, CollectionsKt.arrayListOf(ConstKt.ONE_MONTH_SUBSCRIPTION_AI, ConstKt.SIX_MONTHS_SUBSCRIPTION_AI, ConstKt.ONE_YEAR_SUBSCRIPTION_AI)));
    }

    public static final ArrayList<String> getFlatProductIds(PricingFragment pricingFragment) {
        Intrinsics.checkNotNullParameter(pricingFragment, "<this>");
        ArrayList<String> arrayList = new ArrayList<>();
        HashMap<PlanType, ArrayList<String>> productIds = getProductIds(pricingFragment);
        ArrayList arrayList2 = new ArrayList();
        Iterator<Map.Entry<PlanType, ArrayList<String>>> it = productIds.entrySet().iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList2, it.next().getValue());
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    public static final void getProductFromGooglePlay(PricingFragment pricingFragment, final Function1<? super List<PurchaseListingDetails>, Unit> callback) {
        Intrinsics.checkNotNullParameter(pricingFragment, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!BuildConfigExtKt.isPlayStore()) {
            Log.d("FD-HTTP", "[Pricing] getProductFromGooglePlay: not PlayStore, skip");
            return;
        }
        Log.d("FD-HTTP", "[Pricing] getProductFromGooglePlay: starting Google Play connection");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        PricingFragment pricingFragment2 = pricingFragment;
        final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(pricingFragment2), null, null, new PricingExtKt$getProductFromGooglePlay$timeoutJob$1(booleanRef, callback, null), 3, null);
        FlowKt.launchIn(FlowKt.onEach(pricingFragment.getGoogleViewModel().getGooglePlayState(), new AnonymousClass1(new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.extension.PricingExtKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PricingExtKt.getProductFromGooglePlay$lambda$0(booleanRef, jobLaunch$default, callback, (List) obj);
            }
        }, pricingFragment, null)), LifecycleOwnerKt.getLifecycleScope(pricingFragment2));
        pricingFragment.getGoogleViewModel().initializeGooglePlayConnection();
    }

    static final Unit getProductFromGooglePlay$lambda$0(Ref.BooleanRef booleanRef, Job job, Function1 function1, List list) {
        if (!booleanRef.element) {
            Job.cancel$default(job, (CancellationException) null, 1, (Object) null);
            function1.invoke(list);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.pricing_screen.extension.PricingExtKt$getProductFromGooglePlay$1, reason: invalid class name */
    /* JADX INFO: compiled from: PricingExt.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", TranslateLanguage.ITALIAN, "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.pricing_screen.extension.PricingExtKt$getProductFromGooglePlay$1", f = "PricingExt.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<GooglePlayPaymentMethodState, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<List<PurchaseListingDetails>, Unit> $deliver;
        final /* synthetic */ PricingFragment $this_getProductFromGooglePlay;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super List<PurchaseListingDetails>, Unit> function1, PricingFragment pricingFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$deliver = function1;
            this.$this_getProductFromGooglePlay = pricingFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$deliver, this.$this_getProductFromGooglePlay, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(GooglePlayPaymentMethodState googlePlayPaymentMethodState, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(googlePlayPaymentMethodState, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            GooglePlayPaymentMethodState googlePlayPaymentMethodState = (GooglePlayPaymentMethodState) this.L$0;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Log.d("FD-HTTP", "[Pricing] googlePlayState=" + Reflection.getOrCreateKotlinClass(googlePlayPaymentMethodState.getClass()).getSimpleName());
            if (googlePlayPaymentMethodState instanceof GooglePlayPaymentMethodState.Initialized) {
                GooglePlayPaymentMethodState.Initialized initialized = (GooglePlayPaymentMethodState.Initialized) googlePlayPaymentMethodState;
                Log.d("FD-HTTP", "[Pricing] Initialized state=" + initialized.getState());
                if (!initialized.getState()) {
                    this.$deliver.invoke(null);
                    return Unit.INSTANCE;
                }
                ArrayList<String> flatProductIds = PricingExtKt.getFlatProductIds(this.$this_getProductFromGooglePlay);
                Log.d("FD-HTTP", "[Pricing] fetching products: " + flatProductIds);
                GooglePaymentViewModel googleViewModel = this.$this_getProductFromGooglePlay.getGoogleViewModel();
                final Function1<List<PurchaseListingDetails>, Unit> function1 = this.$deliver;
                googleViewModel.getGoogleProducts(flatProductIds, new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.extension.PricingExtKt$getProductFromGooglePlay$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return PricingExtKt.AnonymousClass1.invokeSuspend$lambda$0(function1, (List) obj2);
                    }
                });
            } else if (googlePlayPaymentMethodState instanceof GooglePlayPaymentMethodState.InitialError) {
                GooglePlayPaymentMethodState.InitialError initialError = (GooglePlayPaymentMethodState.InitialError) googlePlayPaymentMethodState;
                Log.d("FD-HTTP", "[Pricing] InitialError code=" + initialError.getErrorCode() + " msg=" + initialError.getMessage());
                this.$deliver.invoke(null);
            } else if (googlePlayPaymentMethodState instanceof GooglePlayPaymentMethodState.Error) {
                GooglePlayPaymentMethodState.Error error = (GooglePlayPaymentMethodState.Error) googlePlayPaymentMethodState;
                Log.d("FD-HTTP", "[Pricing] Error code=" + error.getErrorCode() + " msg=" + error.getMessage());
                this.$deliver.invoke(null);
            }
            return Unit.INSTANCE;
        }

        static final Unit invokeSuspend$lambda$0(Function1 function1, List list) {
            Log.d("FD-HTTP", "[Pricing] getGoogleProducts result size=" + (list != null ? Integer.valueOf(list.size()) : null));
            function1.invoke(list);
            return Unit.INSTANCE;
        }
    }
}
