package fast.dic.dict.presentation.pricing_screen;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import com.fastdic.android.modules.fdnumberstowords.FDEnNumberToWords;
import com.fastdic.android.modules.fdnumberstowords.FDPeNumberToWords;
import com.google.android.material.tabs.TabLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.parse.ParseException;
import com.parse.ParseUser;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.PaymentMethodFragment;
import fast.dic.dict.PaymentMethodFragmentArgs;
import fast.dic.dict.R;
import fast.dic.dict.adapters.PricingFeatureListAdapter;
import fast.dic.dict.databinding.FragmentPricingBinding;
import fast.dic.dict.domain.billing.PurchaseListingDetails;
import fast.dic.dict.domain.entity.ProSubscriptionTime;
import fast.dic.dict.domain.entity.pricing.Plan;
import fast.dic.dict.domain.entity.pricing.Price;
import fast.dic.dict.domain.entity.pricing.PricingResponse;
import fast.dic.dict.helpers.FDInternetHelper;
import fast.dic.dict.models.Feature;
import fast.dic.dict.models.PlanType;
import fast.dic.dict.presentation.login_screen.LoginSignupFragment;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanUIData;
import fast.dic.dict.presentation.pricing_screen.extension.PricingExtKt;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.BuildConfigExtKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.PersianDate;
import fast.dic.dict.utils.PersianDateFormat;
import fast.dic.dict.utils.StringExtKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel;
import fast.dic.dict.views.CustomProgressbar;
import io.sentry.SentryBaseEvent;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: PricingFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J$\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010:2\b\u0010;\u001a\u0004\u0018\u00010<H\u0016J\u001a\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u0002062\b\u0010;\u001a\u0004\u0018\u00010<H\u0016J\u001d\u0010@\u001a\u00020>2\u0006\u0010A\u001a\u00020\u00062\u0006\u0010B\u001a\u00020\bH\u0000¢\u0006\u0002\bCJ\b\u0010D\u001a\u00020EH\u0002J\b\u0010F\u001a\u00020>H\u0002J\u0010\u0010G\u001a\u00020>2\u0006\u0010H\u001a\u00020IH\u0002J\b\u0010J\u001a\u00020>H\u0002J\b\u0010K\u001a\u00020>H\u0002J\u0012\u0010L\u001a\u00020>2\b\u0010M\u001a\u0004\u0018\u00010NH\u0016J\b\u0010O\u001a\u00020>H\u0002J \u0010P\u001a\u00020>2\u000e\b\u0002\u0010Q\u001a\b\u0012\u0004\u0012\u00020R0-2\u0006\u0010S\u001a\u00020EH\u0002J\u0018\u0010T\u001a\u0004\u0018\u00010.2\u0006\u0010U\u001a\u00020V2\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010W\u001a\u00020>H\u0002J\u0012\u0010X\u001a\u00020>2\b\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u0012\u0010Y\u001a\u00020>2\b\u0010M\u001a\u0004\u0018\u00010NH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR#\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u0013¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001b\u0010 \u001a\u00020!8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b\"\u0010#R\u001b\u0010&\u001a\u00020'8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b*\u0010%\u001a\u0004\b(\u0010)R,\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0-0,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0010\u00103\u001a\u0004\u0018\u000104X\u0082\u000e¢\u0006\u0002\n\u0000Ê\u0001\u0002\b[¨\u0006Z"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/PricingFragment;", "Lfast/dic/dict/bases/BaseFragment;", "Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;", "<init>", "()V", "planType", "Lfast/dic/dict/models/PlanType;", "selectedMonth", "", "getSelectedMonth$app", "()I", "setSelectedMonth$app", "(I)V", "planAdapter", "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;", "getPlanAdapter", "()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;", "setPlanAdapter", "(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V", "Ljavax/inject/Inject;", "featureAdapter", "Lfast/dic/dict/adapters/PricingFeatureListAdapter;", "getFeatureAdapter", "()Lfast/dic/dict/adapters/PricingFeatureListAdapter;", "setFeatureAdapter", "(Lfast/dic/dict/adapters/PricingFeatureListAdapter;)V", "binding", "Lfast/dic/dict/databinding/FragmentPricingBinding;", "getBinding$app", "()Lfast/dic/dict/databinding/FragmentPricingBinding;", "setBinding$app", "(Lfast/dic/dict/databinding/FragmentPricingBinding;)V", "viewModel", "Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "googleViewModel", "Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;", "getGoogleViewModel", "()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;", "googleViewModel$delegate", "googlePlayPrices", "", "", "", "getGooglePlayPrices", "()Ljava/util/Map;", "setGooglePlayPrices", "(Ljava/util/Map;)V", "pricingResponse", "Lfast/dic/dict/domain/entity/pricing/PricingResponse;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "handlePaymentMethods", "type", "month", "handlePaymentMethods$app", "checkIfNotLoginOpenLoginModal", "", "fetchAndShowPricingPlan", "fetchPriceFromServer", "language", "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;", "observeToUpdatePlanType", "observeToUpdatePlanMonth", "onTabSelected", "tab", "Lcom/google/android/material/tabs/TabLayout$Tab;", "updateModelForFeatureTable", "handleUIForActivePlan", "data", "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;", "firstTime", "getActivePlanDate", SentryBaseEvent.JsonKeys.USER, "Lfast/dic/dict/services/parse/FDParseUser;", "showActivationAlert", "onTabUnselected", "onTabReselected", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class PricingFragment extends Hilt_PricingFragment implements TabLayout.OnTabSelectedListener {
    public FragmentPricingBinding binding;
    public PricingFeatureListAdapter featureAdapter;
    private Map<PlanType, List<String>> googlePlayPrices;

    /* JADX INFO: renamed from: googleViewModel$delegate, reason: from kotlin metadata */
    private final Lazy googleViewModel;

    @Inject
    public PricingPlanAdapter planAdapter;
    private PricingResponse pricingResponse;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;
    private PlanType planType = PlanType.AI;
    private int selectedMonth = 12;

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabReselected(TabLayout.Tab tab) {
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabUnselected(TabLayout.Tab tab) {
    }

    public PricingFragment() {
        final PricingFragment pricingFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return pricingFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(pricingFragment, Reflection.getOrCreateKotlinClass(PricingViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                if (function2 != null && (creationExtras = (CreationExtras) function2.invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = pricingFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        final Function0<Fragment> function2 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$special$$inlined$viewModels$default$6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return pricingFragment;
            }
        };
        final Lazy lazy2 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$special$$inlined$viewModels$default$7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function2.invoke();
            }
        });
        this.googleViewModel = FragmentViewModelLazyKt.createViewModelLazy(pricingFragment, Reflection.getOrCreateKotlinClass(GooglePaymentViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$special$$inlined$viewModels$default$8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$special$$inlined$viewModels$default$9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function3 = function1;
                if (function3 != null && (creationExtras = (CreationExtras) function3.invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$special$$inlined$viewModels$default$10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = pricingFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        this.googlePlayPrices = new LinkedHashMap();
    }

    /* JADX INFO: renamed from: getSelectedMonth$app, reason: from getter */
    public final int getSelectedMonth() {
        return this.selectedMonth;
    }

    public final void setSelectedMonth$app(int i) {
        this.selectedMonth = i;
    }

    public final PricingPlanAdapter getPlanAdapter() {
        PricingPlanAdapter pricingPlanAdapter = this.planAdapter;
        if (pricingPlanAdapter != null) {
            return pricingPlanAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("planAdapter");
        return null;
    }

    public final void setPlanAdapter(PricingPlanAdapter pricingPlanAdapter) {
        Intrinsics.checkNotNullParameter(pricingPlanAdapter, "<set-?>");
        this.planAdapter = pricingPlanAdapter;
    }

    public final PricingFeatureListAdapter getFeatureAdapter() {
        PricingFeatureListAdapter pricingFeatureListAdapter = this.featureAdapter;
        if (pricingFeatureListAdapter != null) {
            return pricingFeatureListAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("featureAdapter");
        return null;
    }

    public final void setFeatureAdapter(PricingFeatureListAdapter pricingFeatureListAdapter) {
        Intrinsics.checkNotNullParameter(pricingFeatureListAdapter, "<set-?>");
        this.featureAdapter = pricingFeatureListAdapter;
    }

    public final FragmentPricingBinding getBinding$app() {
        FragmentPricingBinding fragmentPricingBinding = this.binding;
        if (fragmentPricingBinding != null) {
            return fragmentPricingBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding$app(FragmentPricingBinding fragmentPricingBinding) {
        Intrinsics.checkNotNullParameter(fragmentPricingBinding, "<set-?>");
        this.binding = fragmentPricingBinding;
    }

    public final PricingViewModel getViewModel() {
        return (PricingViewModel) this.viewModel.getValue();
    }

    public final GooglePaymentViewModel getGoogleViewModel() {
        return (GooglePaymentViewModel) this.googleViewModel.getValue();
    }

    public final Map<PlanType, List<String>> getGooglePlayPrices() {
        return this.googlePlayPrices;
    }

    public final void setGooglePlayPrices(Map<PlanType, List<String>> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.googlePlayPrices = map;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        SavedStateHandle savedStateHandle;
        MutableLiveData liveData;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentPricingBinding fragmentPricingBindingInflate = FragmentPricingBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentPricingBindingInflate, "inflate(...)");
        setBinding$app(fragmentPricingBindingInflate);
        observeToUpdatePlanType();
        observeToUpdatePlanMonth();
        PricingExtKt.applyModelForFeatureTable(this);
        PricingExtKt.handleScrollingFeatureStickyView(this);
        getBinding$app().setPlanAdapter(getPlanAdapter());
        getBinding$app().planRv.setAdapter(getPlanAdapter());
        getPlanAdapter().setPersianCurrentLanguage(getViewModel().getIsCurrentLanguagePersian());
        setFeatureAdapter(new PricingFeatureListAdapter(Math.abs(getBinding$app().pricingHeaderLayout.TabLayout.getSelectedTabPosition() - 2)));
        getBinding$app().setFeatureAdapter(getFeatureAdapter());
        getBinding$app().featuresRv.setAdapter(getFeatureAdapter());
        getBinding$app().setLifecycleOwner(this);
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(this).getCurrentBackStackEntry();
        if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null && (liveData = savedStateHandle.getLiveData(LoginSignupFragment.DIALOG_STATUS_KEY)) != null) {
            liveData.observe(getViewLifecycleOwner(), new PricingFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PricingFragment.onCreateView$lambda$0(this.f$0, (Boolean) obj);
                }
            }));
        }
        getViewModel().getEmailVerificationState().observe(getViewLifecycleOwner(), new PricingFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PricingFragment.onCreateView$lambda$1(this.f$0, (EmailVerificationState) obj);
            }
        }));
        View root = getBinding$app().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final Unit onCreateView$lambda$0(PricingFragment pricingFragment, Boolean bool) throws ParseException {
        if (Intrinsics.areEqual((Object) bool, (Object) true)) {
            pricingFragment.updateModelForFeatureTable();
            pricingFragment.onResume();
        }
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$1(PricingFragment pricingFragment, EmailVerificationState emailVerificationState) {
        if (emailVerificationState instanceof EmailVerificationState.Loading) {
            CustomProgressbar loadingSpinner = pricingFragment.getBinding$app().loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        } else if (emailVerificationState instanceof EmailVerificationState.Success) {
            CustomProgressbar loadingSpinner2 = pricingFragment.getBinding$app().loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
            String string = pricingFragment.getString(R.string.email_confirm);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = pricingFragment.getString(R.string.sent_email_confirm_please_check_mail_box);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = pricingFragment.getString(R.string.close);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            fDAlertManger.showAlertWithOutForeCloseApp(string, string2, string3, pricingFragment.requireContext());
        } else {
            if (!(emailVerificationState instanceof EmailVerificationState.Error)) {
                throw new NoWhenBranchMatchedException();
            }
            CustomProgressbar loadingSpinner3 = pricingFragment.getBinding$app().loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner3, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner3, 0L, 1, null);
            FDAlertManger.INSTANCE.showErrorMessageAlert(((EmailVerificationState.Error) emailVerificationState).getMessage(), pricingFragment.requireContext());
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        fetchAndShowPricingPlan();
        getPlanAdapter().setOnPaymentButtonClicked(new Function2() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return PricingFragment.onViewCreated$lambda$0(this.f$0, (Integer) obj, (PlanType) obj2);
            }
        });
        getPlanAdapter().setOnRenewButtonClicked(new Function2() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return PricingFragment.onViewCreated$lambda$1(this.f$0, (Integer) obj, (PlanType) obj2);
            }
        });
        getBinding$app().restorePurchaseButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PricingFragment.onViewCreated$lambda$2(this.f$0, view2);
            }
        });
    }

    static final Unit onViewCreated$lambda$0(PricingFragment pricingFragment, Integer num, PlanType planType) {
        if (planType != null && num != null) {
            pricingFragment.handlePaymentMethods$app(planType, num.intValue());
        }
        return Unit.INSTANCE;
    }

    static final Unit onViewCreated$lambda$1(PricingFragment pricingFragment, Integer num, PlanType planType) {
        if (planType != null && num != null) {
            pricingFragment.handlePaymentMethods$app(planType, num.intValue());
        }
        return Unit.INSTANCE;
    }

    static final void onViewCreated$lambda$2(final PricingFragment pricingFragment, View view) {
        if (pricingFragment.checkIfNotLoginOpenLoginModal()) {
            return;
        }
        PaymentMethodFragment.Companion companion = PaymentMethodFragment.INSTANCE;
        FragmentActivity fragmentActivityRequireActivity = pricingFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        Price priceSample = Price.INSTANCE.sample();
        String string = pricingFragment.getString(R.string.remove_ads_plan_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        companion.showModal(fragmentActivityRequireActivity, new PaymentMethodFragmentArgs(new Plan(priceSample, string), PlanType.REMOVE_ADS, null, 4, null)).setOnPaidSuccess(new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PricingFragment.onViewCreated$lambda$2$0$0(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onViewCreated$lambda$2$0$0(PricingFragment pricingFragment, boolean z) throws ParseException {
        pricingFragment.updateModelForFeatureTable();
        return Unit.INSTANCE;
    }

    public final void handlePaymentMethods$app(PlanType type, int month) {
        Plan plan2;
        Intrinsics.checkNotNullParameter(type, "type");
        if (checkIfNotLoginOpenLoginModal()) {
            return;
        }
        FDParseUser fDParseUser = (FDParseUser) ParseUser.getCurrentUser();
        if ((fDParseUser != null ? fDParseUser.getEmail() : null) == null) {
            return;
        }
        if (!fDParseUser.getEmailVerified()) {
            showActivationAlert();
            return;
        }
        if (type == PlanType.AI) {
            PaymentMethodFragment.Companion companion = PaymentMethodFragment.INSTANCE;
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            PricingResponse pricingResponse = this.pricingResponse;
            plan2 = pricingResponse != null ? pricingResponse.getPlan3() : null;
            Intrinsics.checkNotNull(plan2);
            PlanType planType = PlanType.AI;
            ProSubscriptionTime value = ProSubscriptionTime.INSTANCE.getValue(month);
            Intrinsics.checkNotNull(value);
            companion.showModal(fragmentActivityRequireActivity, new PaymentMethodFragmentArgs(plan2, planType, value)).setOnPaidSuccess(new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PricingFragment.handlePaymentMethods$lambda$0$0(this.f$0, ((Boolean) obj).booleanValue());
                }
            });
            return;
        }
        if (type == PlanType.PRO) {
            PaymentMethodFragment.Companion companion2 = PaymentMethodFragment.INSTANCE;
            FragmentActivity fragmentActivityRequireActivity2 = requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity2, "requireActivity(...)");
            PricingResponse pricingResponse2 = this.pricingResponse;
            plan2 = pricingResponse2 != null ? pricingResponse2.getPlan2() : null;
            Intrinsics.checkNotNull(plan2);
            PlanType planType2 = PlanType.PRO;
            ProSubscriptionTime value2 = ProSubscriptionTime.INSTANCE.getValue(month);
            Intrinsics.checkNotNull(value2);
            companion2.showModal(fragmentActivityRequireActivity2, new PaymentMethodFragmentArgs(plan2, planType2, value2)).setOnPaidSuccess(new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PricingFragment.handlePaymentMethods$lambda$1$0(this.f$0, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handlePaymentMethods$lambda$0$0(PricingFragment pricingFragment, boolean z) throws ParseException {
        pricingFragment.updateModelForFeatureTable();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handlePaymentMethods$lambda$1$0(PricingFragment pricingFragment, boolean z) throws ParseException {
        pricingFragment.updateModelForFeatureTable();
        return Unit.INSTANCE;
    }

    private final boolean checkIfNotLoginOpenLoginModal() {
        if (ParseUser.getCurrentUser() != null) {
            return false;
        }
        NavControllerExtensionKt.openModal$default(FragmentKt.findNavController(this), R.id.loginSignupFragmentDialog, null, 2, null);
        return true;
    }

    private final void fetchAndShowPricingPlan() {
        FDInternetHelper fDInternetHelper = FDInternetHelper.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        boolean zIsInternetAvailable = fDInternetHelper.isInternetAvailable(contextRequireContext);
        Log.d("FD-HTTP", "[Pricing] fetchAndShowPricingPlan: internet=" + zIsInternetAvailable + " isPlayStore=" + BuildConfigExtKt.isPlayStore() + " isPersian=" + getViewModel().getIsCurrentLanguagePersian());
        if (!zIsInternetAvailable) {
            FDAlertManger.INSTANCE.showNotConnectedToInternetAlert(requireContext());
            FragmentKt.findNavController(this).navigateUp();
            return;
        }
        TabLayout.Tab tabAt = getBinding$app().pricingHeaderLayout.TabLayout.getTabAt(0);
        if (tabAt != null) {
            tabAt.select();
        }
        TabLayout.Tab tabAt2 = getBinding$app().pricingStickyHeaderLayout.TabLayout.getTabAt(0);
        if (tabAt2 != null) {
            tabAt2.select();
        }
        final FDLanguageWord.LanguageType languageType = getViewModel().getIsCurrentLanguagePersian() ? FDLanguageWord.LanguageType.Persian : FDLanguageWord.LanguageType.English;
        CustomProgressbar loadingSpinner = getBinding$app().loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        if (BuildConfigExtKt.isPlayStore() && !getViewModel().getIsCurrentLanguagePersian()) {
            Log.d("FD-HTTP", "[Pricing] path=PlayStore+English → waiting for Google Play products");
            PricingExtKt.getProductFromGooglePlay(this, new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PricingFragment.fetchAndShowPricingPlan$lambda$0(this.f$0, languageType, (List) obj);
                }
            });
        } else {
            Log.d("FD-HTTP", "[Pricing] path=direct (Bazaar or Persian) → fetchPriceFromServer");
            fetchPriceFromServer(languageType);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:53:0x0129  */
    static final Unit fetchAndShowPricingPlan$lambda$0(PricingFragment pricingFragment, FDLanguageWord.LanguageType languageType, List list) throws ParseException {
        List<String> listEmptyList;
        List<String> listEmptyList2;
        PlanType planType;
        Log.d("FD-HTTP", "[Pricing] getProductFromGooglePlay callback fired, products=" + (list != null ? Integer.valueOf(list.size()) : null));
        pricingFragment.fetchPriceFromServer(languageType);
        if (pricingFragment.planType == PlanType.FREE) {
            return Unit.INSTANCE;
        }
        if (list == null) {
            return Unit.INSTANCE;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            if (StringsKt.contains$default((CharSequence) ((PurchaseListingDetails) obj).getProductId(), (CharSequence) ".ai", false, 2, (Object) null)) {
                planType = PlanType.AI;
            } else {
                planType = PlanType.PRO;
            }
            Object obj2 = linkedHashMap.get(planType);
            if (obj2 == null) {
                obj2 = (List) new ArrayList();
                linkedHashMap.put(planType, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (PlanType planType2 : linkedHashMap.keySet()) {
            if (planType2 == PlanType.AI) {
                Map<PlanType, List<String>> map = pricingFragment.googlePlayPrices;
                PlanType planType3 = PlanType.AI;
                List list2 = (List) linkedHashMap.get(planType2);
                if (list2 == null) {
                    listEmptyList = CollectionsKt.emptyList();
                } else {
                    List list3 = list2;
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
                    Iterator it = list3.iterator();
                    while (it.hasNext()) {
                        String formattedPrice = ((PurchaseListingDetails) it.next()).getFormattedPrice();
                        if (formattedPrice == null) {
                            formattedPrice = "-";
                        }
                        arrayList.add(formattedPrice);
                    }
                    listEmptyList = CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$fetchAndShowPricingPlan$lambda$0$1$$inlined$sortedBy$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) throws IOException {
                            String digitsFromString = StringExtKt.getDigitsFromString((String) t);
                            Integer numValueOf = digitsFromString != null ? Integer.valueOf(Integer.parseInt(digitsFromString)) : null;
                            String digitsFromString2 = StringExtKt.getDigitsFromString((String) t2);
                            return ComparisonsKt.compareValues(numValueOf, digitsFromString2 != null ? Integer.valueOf(Integer.parseInt(digitsFromString2)) : null);
                        }
                    });
                    if (listEmptyList == null) {
                        listEmptyList = CollectionsKt.emptyList();
                    }
                }
                map.put(planType3, listEmptyList);
            } else {
                Map<PlanType, List<String>> map2 = pricingFragment.googlePlayPrices;
                PlanType planType4 = PlanType.PRO;
                List list4 = (List) linkedHashMap.get(planType2);
                if (list4 == null) {
                    listEmptyList2 = CollectionsKt.emptyList();
                } else {
                    List list5 = list4;
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list5, 10));
                    Iterator it2 = list5.iterator();
                    while (it2.hasNext()) {
                        String formattedPrice2 = ((PurchaseListingDetails) it2.next()).getFormattedPrice();
                        if (formattedPrice2 == null) {
                            formattedPrice2 = "-";
                        }
                        arrayList2.add(formattedPrice2);
                    }
                    listEmptyList2 = CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$fetchAndShowPricingPlan$lambda$0$1$$inlined$sortedBy$2
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) throws IOException {
                            String digitsFromString = StringExtKt.getDigitsFromString((String) t);
                            Integer numValueOf = digitsFromString != null ? Integer.valueOf(Integer.parseInt(digitsFromString)) : null;
                            String digitsFromString2 = StringExtKt.getDigitsFromString((String) t2);
                            return ComparisonsKt.compareValues(numValueOf, digitsFromString2 != null ? Integer.valueOf(Integer.parseInt(digitsFromString2)) : null);
                        }
                    });
                    if (listEmptyList2 == null) {
                        listEmptyList2 = CollectionsKt.emptyList();
                    }
                }
                map2.put(planType4, listEmptyList2);
            }
        }
        pricingFragment.updateModelForFeatureTable();
        return Unit.INSTANCE;
    }

    private final void fetchPriceFromServer(FDLanguageWord.LanguageType language) {
        if (getView() == null) {
            return;
        }
        getViewModel().getPricingList(language).observe(getViewLifecycleOwner(), new PricingFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PricingFragment.fetchPriceFromServer$lambda$0(this.f$0, (PricingPlanViewModelState) obj);
            }
        }));
    }

    static final Unit fetchPriceFromServer$lambda$0(PricingFragment pricingFragment, PricingPlanViewModelState pricingPlanViewModelState) throws ParseException, IOException {
        String strConvertPriceNumber$default;
        String strConvertPriceNumber$default2;
        String strConvertPriceNumber$default3;
        String strConvertPriceNumber$default4;
        String strConvertPriceNumber$default5;
        String strConvertPriceNumber$default6;
        String strConvertPriceNumber;
        String strConvertPriceNumber2;
        String strConvertPriceNumber3;
        String strConvertPriceNumber4;
        String strConvertPriceNumber5;
        String strConvertPriceNumber6;
        CustomProgressbar loadingSpinner = pricingFragment.getBinding$app().loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
        ArrayList arrayList = new ArrayList();
        if (pricingPlanViewModelState instanceof PricingPlanViewModelState.PricingPlan) {
            pricingFragment.pricingResponse = ((PricingPlanViewModelState.PricingPlan) pricingPlanViewModelState).getPricingResponse();
            if (!pricingFragment.googlePlayPrices.isEmpty()) {
                List<String> list = pricingFragment.googlePlayPrices.get(PlanType.PRO);
                Intrinsics.checkNotNull(list);
                List<String> list2 = list;
                Price price = new Price(list2.get(0), list2.get(1), list2.get(2));
                ArrayList arrayList2 = arrayList;
                PricingResponse pricingResponse = pricingFragment.pricingResponse;
                Plan plan2 = pricingResponse != null ? pricingResponse.getPlan2() : null;
                Intrinsics.checkNotNull(plan2);
                Plan plan = new Plan(price, plan2.getTitle());
                PlanType planType = PlanType.PRO;
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, list2.get(0), false, 2, null);
                } else {
                    strConvertPriceNumber = FDEnNumberToWords.INSTANCE.convertPriceNumber(list2.get(0), false);
                }
                String str = strConvertPriceNumber;
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber2 = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, list2.get(1), false, 2, null);
                } else {
                    strConvertPriceNumber2 = FDEnNumberToWords.INSTANCE.convertPriceNumber(list2.get(1), false);
                }
                String str2 = strConvertPriceNumber2;
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber3 = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, list2.get(2), false, 2, null);
                } else {
                    strConvertPriceNumber3 = FDEnNumberToWords.INSTANCE.convertPriceNumber(list2.get(2), false);
                }
                arrayList2.add(new PricingPlanUIData(plan, planType, str, str2, strConvertPriceNumber3, null, 32, null));
                List<String> list3 = pricingFragment.googlePlayPrices.get(PlanType.AI);
                Intrinsics.checkNotNull(list3);
                List<String> list4 = list3;
                Price price2 = new Price(list4.get(0), list4.get(1), list4.get(2));
                PricingResponse pricingResponse2 = pricingFragment.pricingResponse;
                Plan plan3 = pricingResponse2 != null ? pricingResponse2.getPlan3() : null;
                Intrinsics.checkNotNull(plan3);
                Plan plan4 = new Plan(price2, plan3.getTitle());
                PlanType planType2 = PlanType.AI;
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber4 = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, list4.get(0), false, 2, null);
                } else {
                    strConvertPriceNumber4 = FDEnNumberToWords.INSTANCE.convertPriceNumber(list4.get(0), false);
                }
                String str3 = strConvertPriceNumber4;
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber5 = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, list4.get(1), false, 2, null);
                } else {
                    strConvertPriceNumber5 = FDEnNumberToWords.INSTANCE.convertPriceNumber(list4.get(1), false);
                }
                String str4 = strConvertPriceNumber5;
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber6 = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, list4.get(2), false, 2, null);
                } else {
                    strConvertPriceNumber6 = FDEnNumberToWords.INSTANCE.convertPriceNumber(list4.get(2), false);
                }
                arrayList2.add(new PricingPlanUIData(plan4, planType2, str3, str4, strConvertPriceNumber6, null, 32, null));
            } else {
                String[] strArr = new String[3];
                PricingResponse pricingResponse3 = pricingFragment.pricingResponse;
                Plan plan5 = pricingResponse3 != null ? pricingResponse3.getPlan2() : null;
                Intrinsics.checkNotNull(plan5);
                strArr[0] = plan5.getPrice().get1();
                PricingResponse pricingResponse4 = pricingFragment.pricingResponse;
                Plan plan6 = pricingResponse4 != null ? pricingResponse4.getPlan2() : null;
                Intrinsics.checkNotNull(plan6);
                strArr[1] = plan6.getPrice().get6();
                PricingResponse pricingResponse5 = pricingFragment.pricingResponse;
                Plan plan7 = pricingResponse5 != null ? pricingResponse5.getPlan2() : null;
                Intrinsics.checkNotNull(plan7);
                strArr[2] = plan7.getPrice().get12();
                List listListOf = CollectionsKt.listOf((Object[]) strArr);
                ArrayList arrayList3 = arrayList;
                PricingResponse pricingResponse6 = pricingFragment.pricingResponse;
                Plan plan8 = pricingResponse6 != null ? pricingResponse6.getPlan2() : null;
                Intrinsics.checkNotNull(plan8);
                PlanType planType3 = PlanType.PRO;
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber$default = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, (String) listListOf.get(0), false, 2, null);
                } else {
                    strConvertPriceNumber$default = FDEnNumberToWords.convertPriceNumber$default(FDEnNumberToWords.INSTANCE, (String) listListOf.get(0), false, 2, null);
                }
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber$default2 = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, (String) listListOf.get(1), false, 2, null);
                } else {
                    strConvertPriceNumber$default2 = FDEnNumberToWords.convertPriceNumber$default(FDEnNumberToWords.INSTANCE, (String) listListOf.get(1), false, 2, null);
                }
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber$default3 = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, (String) listListOf.get(2), false, 2, null);
                } else {
                    strConvertPriceNumber$default3 = FDEnNumberToWords.convertPriceNumber$default(FDEnNumberToWords.INSTANCE, (String) listListOf.get(2), false, 2, null);
                }
                arrayList3.add(new PricingPlanUIData(plan8, planType3, strConvertPriceNumber$default, strConvertPriceNumber$default2, strConvertPriceNumber$default3, null, 32, null));
                String[] strArr2 = new String[3];
                PricingResponse pricingResponse7 = pricingFragment.pricingResponse;
                Plan plan9 = pricingResponse7 != null ? pricingResponse7.getPlan3() : null;
                Intrinsics.checkNotNull(plan9);
                strArr2[0] = plan9.getPrice().get1();
                PricingResponse pricingResponse8 = pricingFragment.pricingResponse;
                Plan plan10 = pricingResponse8 != null ? pricingResponse8.getPlan3() : null;
                Intrinsics.checkNotNull(plan10);
                strArr2[1] = plan10.getPrice().get6();
                PricingResponse pricingResponse9 = pricingFragment.pricingResponse;
                Plan plan11 = pricingResponse9 != null ? pricingResponse9.getPlan3() : null;
                Intrinsics.checkNotNull(plan11);
                strArr2[2] = plan11.getPrice().get12();
                List listListOf2 = CollectionsKt.listOf((Object[]) strArr2);
                PricingResponse pricingResponse10 = pricingFragment.pricingResponse;
                Plan plan12 = pricingResponse10 != null ? pricingResponse10.getPlan3() : null;
                Intrinsics.checkNotNull(plan12);
                PlanType planType4 = PlanType.AI;
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber$default4 = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, (String) listListOf2.get(0), false, 2, null);
                } else {
                    strConvertPriceNumber$default4 = FDEnNumberToWords.convertPriceNumber$default(FDEnNumberToWords.INSTANCE, (String) listListOf2.get(0), false, 2, null);
                }
                String str5 = strConvertPriceNumber$default4;
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber$default5 = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, (String) listListOf2.get(1), false, 2, null);
                } else {
                    strConvertPriceNumber$default5 = FDEnNumberToWords.convertPriceNumber$default(FDEnNumberToWords.INSTANCE, (String) listListOf2.get(1), false, 2, null);
                }
                String str6 = strConvertPriceNumber$default5;
                if (pricingFragment.getViewModel().getIsCurrentLanguagePersian()) {
                    strConvertPriceNumber$default6 = FDPeNumberToWords.convertPriceNumber$default(FDPeNumberToWords.INSTANCE, (String) listListOf2.get(2), false, 2, null);
                } else {
                    strConvertPriceNumber$default6 = FDEnNumberToWords.convertPriceNumber$default(FDEnNumberToWords.INSTANCE, (String) listListOf2.get(2), false, 2, null);
                }
                arrayList3.add(new PricingPlanUIData(plan12, planType4, str5, str6, strConvertPriceNumber$default6, null, 32, null));
            }
            PricingResponse pricingResponse11 = pricingFragment.pricingResponse;
            if (pricingResponse11 != null) {
                Intrinsics.checkNotNull(pricingResponse11);
                PricingExtKt.updateModelForFeatureTable(pricingFragment, pricingResponse11, pricingFragment.planType, pricingFragment.selectedMonth);
                PricingResponse pricingResponse12 = pricingFragment.pricingResponse;
                Intrinsics.checkNotNull(pricingResponse12);
                List<Feature> listFlatFeatures = PricingExtKt.flatFeatures(pricingFragment, pricingResponse12);
                pricingFragment.getFeatureAdapter().setPlanNumber(pricingFragment.planType.getIndex());
                pricingFragment.getFeatureAdapter().submitList(listFlatFeatures);
            }
            pricingFragment.handleUIForActivePlan(arrayList, true);
            LinearLayout featuresLayout = pricingFragment.getBinding$app().featuresLayout;
            Intrinsics.checkNotNullExpressionValue(featuresLayout, "featuresLayout");
            ViewExtKt.showMeNow(featuresLayout);
        } else {
            FragmentKt.findNavController(pricingFragment).navigateUp();
        }
        return Unit.INSTANCE;
    }

    private final void observeToUpdatePlanType() {
        PricingFragment pricingFragment = this;
        getBinding$app().pricingStickyHeaderLayout.TabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) pricingFragment);
        getBinding$app().pricingHeaderLayout.TabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) pricingFragment);
    }

    private final void observeToUpdatePlanMonth() {
        getPlanAdapter().setOnMonthChange(new Function1() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PricingFragment.observeToUpdatePlanMonth$lambda$0(this.f$0, ((Integer) obj).intValue());
            }
        });
    }

    static final Unit observeToUpdatePlanMonth$lambda$0(PricingFragment pricingFragment, int i) throws ParseException {
        Integer num = pricingFragment.getPlanAdapter().getSelectedMonth().get(pricingFragment.planType);
        pricingFragment.selectedMonth = num != null ? num.intValue() : 12;
        pricingFragment.updateModelForFeatureTable();
        return Unit.INSTANCE;
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabSelected(TabLayout.Tab tab) throws ParseException {
        TabLayout.Tab tabAt;
        TabLayout.Tab tabAt2;
        PlanType next;
        if (tab != null) {
            Iterator<PlanType> it = PlanType.getEntries().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (next.getIndex() != Math.abs(tab.getPosition() - 3));
            PlanType planType = next;
            if (planType == null) {
                planType = PlanType.PRO;
            }
            this.planType = planType;
            Integer num = getPlanAdapter().getSelectedMonth().get(this.planType);
            this.selectedMonth = num != null ? num.intValue() : 12;
        }
        updateModelForFeatureTable();
        int position = tab != null ? tab.getPosition() : 0;
        if (!Intrinsics.areEqual(getBinding$app().pricingHeaderLayout.TabLayout.getTabAt(position), tab) && (tabAt2 = getBinding$app().pricingHeaderLayout.TabLayout.getTabAt(position)) != null) {
            tabAt2.select();
        }
        if (Intrinsics.areEqual(getBinding$app().pricingStickyHeaderLayout.TabLayout.getTabAt(position), tab) || (tabAt = getBinding$app().pricingStickyHeaderLayout.TabLayout.getTabAt(position)) == null) {
            return;
        }
        tabAt.select();
    }

    private final void updateModelForFeatureTable() throws ParseException {
        PricingResponse pricingResponse = this.pricingResponse;
        if (pricingResponse != null) {
            Intrinsics.checkNotNull(pricingResponse);
            PricingExtKt.updateModelForFeatureTable(this, pricingResponse, this.planType, this.selectedMonth);
            getFeatureAdapter().setPlanNumber(this.planType.getIndex());
            PricingExtKt.updateFeatureTableVisibleItems(this);
        }
        handleUIForActivePlan$default(this, null, false, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void handleUIForActivePlan$default(PricingFragment pricingFragment, List list, boolean z, int i, Object obj) throws ParseException {
        if ((i & 1) != 0) {
            list = pricingFragment.getPlanAdapter().getCurrentList();
            Intrinsics.checkNotNullExpressionValue(list, "getCurrentList(...)");
        }
        pricingFragment.handleUIForActivePlan(list, z);
    }

    private final void handleUIForActivePlan(List<PricingPlanUIData> data, boolean firstTime) throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null) {
            getPlanAdapter().setPurchaseButtonEnabled(true);
            getPlanAdapter().setPurchaseButtonVisible(true);
            getPlanAdapter().setRenewButtonVisible(false);
            getPlanAdapter().setRenewButtonEnabled(false);
            PricingPlanAdapter planAdapter = getPlanAdapter();
            String string = getString(R.string.activate_and_login_button_title);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            planAdapter.setPurchaseButtonTitle(string);
        } else {
            getPlanAdapter().setPurchaseButtonVisible(true);
            getPlanAdapter().setRenewButtonVisible(true);
            getPlanAdapter().setRenewButtonEnabled(true);
            if (fDParseUser.hasPlan2InView()) {
                PricingPlanAdapter planAdapter2 = getPlanAdapter();
                String string2 = getString(R.string.is_activate);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                planAdapter2.setPurchaseButtonTitle(string2);
                getPlanAdapter().setPurchaseButtonEnabled(false);
                getPlanAdapter().setPurchaseButtonVisible(false);
            } else if (fDParseUser.hasPlan3InView()) {
                PricingPlanAdapter planAdapter3 = getPlanAdapter();
                String string3 = getString(R.string.is_activate);
                Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                planAdapter3.setPurchaseButtonTitle(string3);
                getPlanAdapter().setPurchaseButtonEnabled(false);
                getPlanAdapter().setPurchaseButtonVisible(false);
            } else {
                getPlanAdapter().setPurchaseButtonEnabled(true);
                getPlanAdapter().setPurchaseButtonVisible(true);
                getPlanAdapter().setPurchaseButtonTitle("");
            }
        }
        PricingPlanAdapter planAdapter4 = getPlanAdapter();
        List<PricingPlanUIData> list = data;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (PricingPlanUIData pricingPlanUIData : list) {
            if (fDParseUser != null && fDParseUser.hasPlan2InView()) {
                pricingPlanUIData.setSubscriptionMessage(getActivePlanDate(fDParseUser, pricingPlanUIData.getPlanType()));
            } else if (fDParseUser != null && fDParseUser.hasPlan3InView()) {
                pricingPlanUIData.setSubscriptionMessage(getActivePlanDate(fDParseUser, pricingPlanUIData.getPlanType()));
            } else {
                pricingPlanUIData.setSubscriptionMessage(null);
            }
            arrayList.add(pricingPlanUIData);
        }
        planAdapter4.submitList(arrayList);
        if (firstTime) {
            return;
        }
        getPlanAdapter().notifyDataSetChanged();
    }

    public final String getActivePlanDate(FDParseUser user, PlanType planType) {
        Date hasPlan3ExpireDate;
        String strReplaceNumbersToFarsi;
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(planType, "planType");
        if (planType == PlanType.PRO) {
            hasPlan3ExpireDate = user.getHasPlan2ExpireDate();
        } else {
            hasPlan3ExpireDate = planType == PlanType.AI ? user.getHasPlan3ExpireDate() : null;
        }
        if (hasPlan3ExpireDate == null) {
            return null;
        }
        if (getViewModel().getIsCurrentLanguagePersian()) {
            strReplaceNumbersToFarsi = FDLanguageWord.INSTANCE.replaceNumbersToFarsi(new PersianDateFormat("Y/m/d").format(new PersianDate(hasPlan3ExpireDate)).toString());
        } else {
            strReplaceNumbersToFarsi = new SimpleDateFormat("yyyy/MM/dd").format(hasPlan3ExpireDate);
            Intrinsics.checkNotNullExpressionValue(strReplaceNumbersToFarsi, "format(...)");
        }
        return getString(R.string.your_current_professional_plan_until, strReplaceNumbersToFarsi);
    }

    private final void showActivationAlert() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
        String string = getString(R.string.email_confirm);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = getString(R.string.help_for_sent_verification_link_on_email, fDParseUser != null ? fDParseUser.getEmail() : null);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = getString(R.string.cancelButtonTitle);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        };
        String string4 = getString(R.string.send);
        DialogInterface.OnClickListener onClickListener2 = new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.pricing_screen.PricingFragment$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) throws ParseException {
                this.f$0.getViewModel().sendEmailVerification();
            }
        };
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        fDAlertManger.showAlertWithOptions(string, string2, string3, onClickListener, string4, onClickListener2, false, contextRequireContext);
    }
}
