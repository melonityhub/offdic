package fast.dic.dict;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.amazon.aps.shared.metrics.model.ApsMetricsDataMap;
import com.google.mlkit.nl.translate.TranslateLanguage;
import com.mbridge.msdk.MBridgeConstans;
import com.parse.ParseUser;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.adapters.PaymentMethod;
import fast.dic.dict.adapters.PaymentMethodAdapter;
import fast.dic.dict.adapters.SubscriptionIAPPlatformEnum;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.databinding.FragmentPaymentMethodBinding;
import fast.dic.dict.domain.entity.ProSubscriptionTime;
import fast.dic.dict.domain.entity.pricing.Plan;
import fast.dic.dict.domain.entity.pricing.Price;
import fast.dic.dict.models.PlanType;
import fast.dic.dict.models.api.ValidateModel;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.services.parse.FDPurchased;
import fast.dic.dict.utils.BazaarPaymentMethodExtensionKt;
import fast.dic.dict.utils.BuildConfigExtKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.GooglePaymentMethodExtensionKt;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.StringExtKt;
import fast.dic.dict.utils.Util;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.viewmodels.BazaarPaymentViewModel;
import fast.dic.dict.viewmodels.PaymentMethodViewModel;
import fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel;
import fast.dic.dict.viewmodels.fragments.GooglePlayPaymentMethodState;
import fast.dic.dict.views.CustomProgressbar;
import ir.cafebazaar.poolakey.constant.RawJson;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import org.bidon.sdk.logs.analytic.AdValue;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: PaymentMethodFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0007\u0018\u0000 d2\u00020\u0001:\u0002deB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010@\u001a\u000207H\u0002J\u0014\u0010A\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u0002070BH\u0002J$\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020F2\b\u0010G\u001a\u0004\u0018\u00010H2\b\u0010I\u001a\u0004\u0018\u00010JH\u0016J\b\u0010K\u001a\u000201H\u0016J\b\u0010L\u001a\u000201H\u0002J\b\u0010M\u001a\u000201H\u0002J\u001a\u0010N\u001a\u0002012\u0006\u0010O\u001a\u00020D2\b\u0010I\u001a\u0004\u0018\u00010JH\u0016J\b\u0010P\u001a\u000201H\u0002J\b\u0010Q\u001a\u000201H\u0016J\b\u0010]\u001a\u000201H\u0002J\u0006\u0010^\u001a\u00020_J\u0006\u0010`\u001a\u000207J\b\u0010a\u001a\u000201H\u0002J\n\u0010b\u001a\u0004\u0018\u00010cH\u0002R\u0011\u0010\u0004\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\u001e\u001a\u00020\u001f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001d\u001a\u0004\b \u0010!R\u001b\u0010#\u001a\u00020$8@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\u001d\u001a\u0004\b%\u0010&R#\u0010(\u001a\u00020)8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b.¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R&\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020100X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R5\u00106\u001a\u001d\u0012\u0013\u0012\u001107¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(:\u0012\u0004\u0012\u00020100X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u00103\"\u0004\b<\u00105R5\u0010=\u001a\u001d\u0012\u0013\u0012\u001107¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(:\u0012\u0004\u0012\u00020100X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u00103\"\u0004\b?\u00105Rt\u0010R\u001a\\\u0012\u0013\u0012\u001107¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(T\u0012\u0013\u0012\u001107¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(U\u0012\u0013\u0012\u00110V¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(W\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(X\u0012\u0004\u0012\u0002010SX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010Z\"\u0004\b[\u0010\\Ê\u0001\u0002\bg¨\u0006f"}, d2 = {"Lfast/dic/dict/PaymentMethodFragment;", "Lfast/dic/dict/bases/BaseBottomSheetDialogFragment;", "<init>", "()V", "args", "Lfast/dic/dict/PaymentMethodFragmentArgs;", "getArgs", "()Lfast/dic/dict/PaymentMethodFragmentArgs;", "binding", "Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;", "getBinding", "()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;", "setBinding", "(Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;)V", "selectedPaymentMethod", "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;", "getSelectedPaymentMethod$app", "()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;", "setSelectedPaymentMethod$app", "(Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;)V", "googlePlayTimeoutJob", "Lkotlinx/coroutines/Job;", "googlePlayTimedOut", "", "viewModel", "Lfast/dic/dict/viewmodels/PaymentMethodViewModel;", "getViewModel", "()Lfast/dic/dict/viewmodels/PaymentMethodViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "googleViewModel", "Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;", "getGoogleViewModel", "()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;", "googleViewModel$delegate", "bazaarViewModel", "Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;", "getBazaarViewModel$app", "()Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;", "bazaarViewModel$delegate", "firebaseUserPropertiesManager", "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "getFirebaseUserPropertiesManager", "()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "setFirebaseUserPropertiesManager", "(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V", "Ljavax/inject/Inject;", "onPaidSuccess", "Lkotlin/Function1;", "", "getOnPaidSuccess", "()Lkotlin/jvm/functions/Function1;", "setOnPaidSuccess", "(Lkotlin/jvm/functions/Function1;)V", "paymentFailedListener", "", "Lkotlin/ParameterName;", "name", "error", "getPaymentFailedListener", "setPaymentFailedListener", "paymentConnectionFailedListener", "getPaymentConnectionFailedListener", "setPaymentConnectionFailedListener", "getBuildFlavor", "getPriceAndCurrency", "Lkotlin/Pair;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "enablePurchaseButtons", "disablePurchaseButtons", "onViewCreated", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "observePlayStoreEvents", "onDestroy", "sendPurchaseTokenToServerListener", "Lkotlin/Function4;", RawJson.PURCHASE_TOKEN, "productId", "Lfast/dic/dict/models/PlanType;", "planType", "paymentMethod", "getSendPurchaseTokenToServerListener", "()Lkotlin/jvm/functions/Function4;", "setSendPurchaseTokenToServerListener", "(Lkotlin/jvm/functions/Function4;)V", "showDirectPaymentFallback", "directPaymentMethod", "Lfast/dic/dict/adapters/PaymentMethod;", "getProductId", "purchaseDirectly", "getUser", "Lfast/dic/dict/services/parse/FDParseUser;", "Companion", "ValidationPurchaseResponseCallback", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class PaymentMethodFragment extends Hilt_PaymentMethodFragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: bazaarViewModel$delegate, reason: from kotlin metadata */
    private final Lazy bazaarViewModel;
    public FragmentPaymentMethodBinding binding;

    @Inject
    public FirebaseUserPropertiesManager firebaseUserPropertiesManager;
    private boolean googlePlayTimedOut;
    private Job googlePlayTimeoutJob;

    /* JADX INFO: renamed from: googleViewModel$delegate, reason: from kotlin metadata */
    private final Lazy googleViewModel;
    private Function1<? super Boolean, Unit> onPaidSuccess;
    private Function1<? super String, Unit> paymentConnectionFailedListener;
    private Function1<? super String, Unit> paymentFailedListener;
    private SubscriptionIAPPlatformEnum selectedPaymentMethod;
    private Function4<? super String, ? super String, ? super PlanType, ? super SubscriptionIAPPlatformEnum, Unit> sendPurchaseTokenToServerListener;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: compiled from: PaymentMethodFragment.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SubscriptionIAPPlatformEnum.values().length];
            try {
                iArr[SubscriptionIAPPlatformEnum.Shetab.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SubscriptionIAPPlatformEnum.CafeBazaar.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SubscriptionIAPPlatformEnum.GooglePlay.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PaymentMethodFragment() {
        final PaymentMethodFragment paymentMethodFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return paymentMethodFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(paymentMethodFragment, Reflection.getOrCreateKotlinClass(PaymentMethodViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = paymentMethodFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        final Function0<Fragment> function2 = new Function0<Fragment>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return paymentMethodFragment;
            }
        };
        final Lazy lazy2 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function2.invoke();
            }
        });
        this.googleViewModel = FragmentViewModelLazyKt.createViewModelLazy(paymentMethodFragment, Reflection.getOrCreateKotlinClass(GooglePaymentViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$9
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = paymentMethodFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        final Function0<Fragment> function3 = new Function0<Fragment>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return paymentMethodFragment;
            }
        };
        final Lazy lazy3 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$12
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function3.invoke();
            }
        });
        this.bazaarViewModel = FragmentViewModelLazyKt.createViewModelLazy(paymentMethodFragment, Reflection.getOrCreateKotlinClass(BazaarPaymentViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy3).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$14
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function4 = function1;
                if (function4 != null && (creationExtras = (CreationExtras) function4.invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy3);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.PaymentMethodFragment$special$$inlined$viewModels$default$15
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy3);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = paymentMethodFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        this.onPaidSuccess = new Function1() { // from class: fast.dic.dict.PaymentMethodFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((Boolean) obj).booleanValue();
                return Unit.INSTANCE;
            }
        };
        this.paymentFailedListener = new Function1() { // from class: fast.dic.dict.PaymentMethodFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PaymentMethodFragment.paymentFailedListener$lambda$0((String) obj);
            }
        };
        this.paymentConnectionFailedListener = new Function1() { // from class: fast.dic.dict.PaymentMethodFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PaymentMethodFragment.paymentConnectionFailedListener$lambda$0((String) obj);
            }
        };
        this.sendPurchaseTokenToServerListener = new Function4() { // from class: fast.dic.dict.PaymentMethodFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return PaymentMethodFragment.sendPurchaseTokenToServerListener$lambda$0(this.f$0, (String) obj, (String) obj2, (PlanType) obj3, (SubscriptionIAPPlatformEnum) obj4);
            }
        };
    }

    public final PaymentMethodFragmentArgs getArgs() {
        PaymentMethodFragmentArgs.Companion companion = PaymentMethodFragmentArgs.INSTANCE;
        Bundle bundleRequireArguments = requireArguments();
        Intrinsics.checkNotNullExpressionValue(bundleRequireArguments, "requireArguments(...)");
        return companion.fromBundle(bundleRequireArguments);
    }

    public final FragmentPaymentMethodBinding getBinding() {
        FragmentPaymentMethodBinding fragmentPaymentMethodBinding = this.binding;
        if (fragmentPaymentMethodBinding != null) {
            return fragmentPaymentMethodBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(FragmentPaymentMethodBinding fragmentPaymentMethodBinding) {
        Intrinsics.checkNotNullParameter(fragmentPaymentMethodBinding, "<set-?>");
        this.binding = fragmentPaymentMethodBinding;
    }

    /* JADX INFO: renamed from: getSelectedPaymentMethod$app, reason: from getter */
    public final SubscriptionIAPPlatformEnum getSelectedPaymentMethod() {
        return this.selectedPaymentMethod;
    }

    public final void setSelectedPaymentMethod$app(SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum) {
        this.selectedPaymentMethod = subscriptionIAPPlatformEnum;
    }

    public final PaymentMethodViewModel getViewModel() {
        return (PaymentMethodViewModel) this.viewModel.getValue();
    }

    public final GooglePaymentViewModel getGoogleViewModel() {
        return (GooglePaymentViewModel) this.googleViewModel.getValue();
    }

    public final BazaarPaymentViewModel getBazaarViewModel$app() {
        return (BazaarPaymentViewModel) this.bazaarViewModel.getValue();
    }

    public final FirebaseUserPropertiesManager getFirebaseUserPropertiesManager() {
        FirebaseUserPropertiesManager firebaseUserPropertiesManager = this.firebaseUserPropertiesManager;
        if (firebaseUserPropertiesManager != null) {
            return firebaseUserPropertiesManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("firebaseUserPropertiesManager");
        return null;
    }

    public final void setFirebaseUserPropertiesManager(FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        Intrinsics.checkNotNullParameter(firebaseUserPropertiesManager, "<set-?>");
        this.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
    }

    public final Function1<Boolean, Unit> getOnPaidSuccess() {
        return this.onPaidSuccess;
    }

    public final void setOnPaidSuccess(Function1<? super Boolean, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onPaidSuccess = function1;
    }

    static final Unit paymentFailedListener$lambda$0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public final Function1<String, Unit> getPaymentFailedListener() {
        return this.paymentFailedListener;
    }

    public final void setPaymentFailedListener(Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.paymentFailedListener = function1;
    }

    static final Unit paymentConnectionFailedListener$lambda$0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public final Function1<String, Unit> getPaymentConnectionFailedListener() {
        return this.paymentConnectionFailedListener;
    }

    public final void setPaymentConnectionFailedListener(Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.paymentConnectionFailedListener = function1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getBuildFlavor() {
        return BuildConfig.FLAVOR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:39:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:9:0x0022  */
    public final Pair<String, String> getPriceAndCurrency() {
        Price price;
        String str;
        Price price2;
        String str2;
        Price price3;
        if (getArgs().getTime() == ProSubscriptionTime.ONE_MONTH) {
            Plan plan = getArgs().getPlan();
            if (plan == null || (price3 = plan.getPrice()) == null) {
                str = null;
            } else {
                str = price3.get1();
            }
        } else if (getArgs().getTime() == ProSubscriptionTime.SIX_MONTHS) {
            Plan plan2 = getArgs().getPlan();
            if (plan2 == null || (price2 = plan2.getPrice()) == null) {
                str = null;
            } else {
                str = price2.get6();
            }
        } else {
            Plan plan3 = getArgs().getPlan();
            if (plan3 == null || (price = plan3.getPrice()) == null) {
                str = null;
            } else {
                str = price.get12();
            }
        }
        if ((str != null && StringsKt.contains$default((CharSequence) str, (CharSequence) "تومان", false, 2, (Object) null)) || (str != null && StringsKt.contains$default((CharSequence) str, (CharSequence) "ریال", false, 2, (Object) null))) {
            str2 = "IRR";
        } else if ((str != null && StringsKt.contains$default((CharSequence) str, (CharSequence) "$", false, 2, (Object) null)) || (str != null && StringsKt.contains$default((CharSequence) str, (CharSequence) AdValue.USD, false, 2, (Object) null))) {
            str2 = AdValue.USD;
        } else {
            String str3 = "EUR";
            if ((str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "€", false, 2, (Object) null)) && (str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "EUR", false, 2, (Object) null))) {
                str3 = "GBP";
                if ((str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "£", false, 2, (Object) null)) && (str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "GBP", false, 2, (Object) null))) {
                    str3 = "JPY";
                    if ((str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "¥", false, 2, (Object) null)) && (str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "JPY", false, 2, (Object) null))) {
                        str3 = "CNY";
                        if ((str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "¥", false, 2, (Object) null)) && ((str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "CNY", false, 2, (Object) null)) && (str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "元", false, 2, (Object) null)))) {
                            str3 = "INR";
                            if ((str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "₹", false, 2, (Object) null)) && (str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "INR", false, 2, (Object) null))) {
                                str3 = "CAD";
                                if ((str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "CAD", false, 2, (Object) null)) && (str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "C$", false, 2, (Object) null))) {
                                    str3 = "AUD";
                                    if ((str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "AUD", false, 2, (Object) null)) && (str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "A$", false, 2, (Object) null))) {
                                        str3 = "CHF";
                                        if ((str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "CHF", false, 2, (Object) null)) && (str == null || !StringsKt.contains$default((CharSequence) str, (CharSequence) "Fr", false, 2, (Object) null))) {
                                            str2 = AdValue.USD;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            str2 = str3;
        }
        if (str == null) {
            str = "0";
        }
        return new Pair<>(str, str2);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentPaymentMethodBinding fragmentPaymentMethodBindingInflate = FragmentPaymentMethodBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentPaymentMethodBindingInflate, "inflate(...)");
        setBinding(fragmentPaymentMethodBindingInflate);
        getBinding().setLifecycleOwner(this);
        getBinding().setDecorator(true);
        FragmentPaymentMethodBinding binding = getBinding();
        PaymentMethodAdapter paymentMethodAdapter = new PaymentMethodAdapter();
        paymentMethodAdapter.setOnClick(new Function1() { // from class: fast.dic.dict.PaymentMethodFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PaymentMethodFragment.onCreateView$lambda$0$0(this.f$0, (PaymentMethod) obj);
            }
        });
        binding.setDataAdapter(paymentMethodAdapter);
        if (getArgs().getPlanType() == PlanType.REMOVE_ADS) {
            getBinding().purchaseButton.setVisibility(8);
        }
        getBinding().backButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.PaymentMethodFragment$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        CustomProgressbar loadingSpinner = getBinding().loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$0$0(PaymentMethodFragment paymentMethodFragment, PaymentMethod paymentMethod) {
        if (paymentMethod != null && paymentMethod.getSelected()) {
            paymentMethodFragment.enablePurchaseButtons();
        } else {
            paymentMethodFragment.disablePurchaseButtons();
        }
        if (paymentMethod != null && paymentMethod.getSelected() && paymentMethod.getPaymentMethod() == SubscriptionIAPPlatformEnum.Shetab) {
            paymentMethodFragment.getBinding().restoreButton.setEnabled(false);
        }
        paymentMethodFragment.selectedPaymentMethod = paymentMethod != null ? paymentMethod.getPaymentMethod() : null;
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        getBazaarViewModel$app().destroyBazaarConnection();
        getGoogleViewModel().destroyGoogleConnection();
    }

    private final void enablePurchaseButtons() {
        getBinding().purchaseButton.setEnabled(true);
        getBinding().restoreButton.setEnabled(true);
    }

    private final void disablePurchaseButtons() {
        getBinding().purchaseButton.setEnabled(false);
        getBinding().restoreButton.setEnabled(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        BazaarPaymentMethodExtensionKt.purchaseFromBazaar(this);
        if (BuildConfigExtKt.isPlayStore()) {
            observePlayStoreEvents();
        }
        getBinding().purchaseButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.PaymentMethodFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PaymentMethodFragment.onViewCreated$lambda$0(this.f$0, view2);
            }
        });
        getBinding().restoreButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.PaymentMethodFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PaymentMethodFragment.onViewCreated$lambda$1(this.f$0, view2);
            }
        });
    }

    static final void onViewCreated$lambda$0(PaymentMethodFragment paymentMethodFragment, View view) {
        SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum = paymentMethodFragment.selectedPaymentMethod;
        int i = subscriptionIAPPlatformEnum == null ? -1 : WhenMappings.$EnumSwitchMapping$0[subscriptionIAPPlatformEnum.ordinal()];
        if (i == 1) {
            paymentMethodFragment.purchaseDirectly();
        } else if (i == 2) {
            BazaarPaymentMethodExtensionKt.purchaseFromBazaar(paymentMethodFragment);
        } else {
            if (i != 3) {
                return;
            }
            GooglePaymentMethodExtensionKt.purchaseFromGooglePlay(paymentMethodFragment);
        }
    }

    static final void onViewCreated$lambda$1(PaymentMethodFragment paymentMethodFragment, View view) {
        SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum = paymentMethodFragment.selectedPaymentMethod;
        int i = subscriptionIAPPlatformEnum == null ? -1 : WhenMappings.$EnumSwitchMapping$0[subscriptionIAPPlatformEnum.ordinal()];
        if (i == 1) {
            paymentMethodFragment.purchaseDirectly();
        } else if (i == 2) {
            BazaarPaymentMethodExtensionKt.purchaseFromBazaar(paymentMethodFragment);
        } else {
            if (i != 3) {
                return;
            }
            GooglePaymentMethodExtensionKt.restorePurchaseFromGooglePlay(paymentMethodFragment);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.PaymentMethodFragment$observePlayStoreEvents$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaymentMethodFragment.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", TranslateLanguage.ITALIAN, "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.PaymentMethodFragment$observePlayStoreEvents$1", f = "PaymentMethodFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<GooglePlayPaymentMethodState, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = PaymentMethodFragment.this.new AnonymousClass1(continuation);
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
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (PaymentMethodFragment.this.googlePlayTimedOut) {
                    return Unit.INSTANCE;
                }
                if (googlePlayPaymentMethodState instanceof GooglePlayPaymentMethodState.Error) {
                    GooglePlayPaymentMethodState.Error error = (GooglePlayPaymentMethodState.Error) googlePlayPaymentMethodState;
                    LoggerKt.getLogger().error("Google IAP: Error. (" + error.getErrorCode() + "): " + error.getMessage(), new Object[0]);
                    Pair priceAndCurrency = PaymentMethodFragment.this.getPriceAndCurrency();
                    String str = (String) priceAndCurrency.component1();
                    String str2 = (String) priceAndCurrency.component2();
                    FirebaseUserPropertiesManager firebaseUserPropertiesManager = PaymentMethodFragment.this.getFirebaseUserPropertiesManager();
                    String strName = PaymentMethodFragment.this.getArgs().getPlanType().name();
                    ProSubscriptionTime time = PaymentMethodFragment.this.getArgs().getTime();
                    firebaseUserPropertiesManager.logPurchaseFailed(strName, str, str2, time != null ? String.valueOf(time.getValue()) : null, "GooglePlay", "google_play_error: " + error.getMessage(), PaymentMethodFragment.this.getBuildFlavor());
                    CustomProgressbar loadingSpinner = PaymentMethodFragment.this.getBinding().loadingSpinner;
                    Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
                    ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
                    PaymentMethodFragment.this.getPaymentFailedListener().invoke(error.getMessage());
                    PaymentMethodFragment.this.showDirectPaymentFallback();
                } else if (googlePlayPaymentMethodState instanceof GooglePlayPaymentMethodState.InitialError) {
                    GooglePlayPaymentMethodState.InitialError initialError = (GooglePlayPaymentMethodState.InitialError) googlePlayPaymentMethodState;
                    LoggerKt.getLogger().error("Google IAP: InitialError. (" + initialError.getErrorCode() + "): " + initialError.getMessage(), new Object[0]);
                    Pair priceAndCurrency2 = PaymentMethodFragment.this.getPriceAndCurrency();
                    String str3 = (String) priceAndCurrency2.component1();
                    String str4 = (String) priceAndCurrency2.component2();
                    FirebaseUserPropertiesManager firebaseUserPropertiesManager2 = PaymentMethodFragment.this.getFirebaseUserPropertiesManager();
                    String strName2 = PaymentMethodFragment.this.getArgs().getPlanType().name();
                    ProSubscriptionTime time2 = PaymentMethodFragment.this.getArgs().getTime();
                    firebaseUserPropertiesManager2.logPurchaseFailed(strName2, str3, str4, time2 != null ? String.valueOf(time2.getValue()) : null, "GooglePlay", "google_play_connection_error: " + initialError.getMessage(), PaymentMethodFragment.this.getBuildFlavor());
                    PaymentMethodFragment.this.getPaymentConnectionFailedListener().invoke(initialError.getMessage());
                    PaymentMethodFragment.this.showDirectPaymentFallback();
                } else if (googlePlayPaymentMethodState instanceof GooglePlayPaymentMethodState.Initialized) {
                    GooglePlayPaymentMethodState.Initialized initialized = (GooglePlayPaymentMethodState.Initialized) googlePlayPaymentMethodState;
                    LoggerKt.getLogger().info("Google IAP: Initialized. (" + initialized.getState() + ")", new Object[0]);
                    boolean state = initialized.getState();
                    PaymentMethodFragment paymentMethodFragment = PaymentMethodFragment.this;
                    if (!state) {
                        paymentMethodFragment.showDirectPaymentFallback();
                        return Unit.INSTANCE;
                    }
                    String productId = paymentMethodFragment.getProductId();
                    GooglePaymentViewModel googleViewModel = PaymentMethodFragment.this.getGoogleViewModel();
                    final PaymentMethodFragment paymentMethodFragment2 = PaymentMethodFragment.this;
                    googleViewModel.getGoogleProducts(productId, new Function1() { // from class: fast.dic.dict.PaymentMethodFragment$observePlayStoreEvents$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return PaymentMethodFragment.AnonymousClass1.invokeSuspend$lambda$0(paymentMethodFragment2, (List) obj2);
                        }
                    });
                } else if (Intrinsics.areEqual(googlePlayPaymentMethodState, GooglePlayPaymentMethodState.Initializing.INSTANCE)) {
                    LoggerKt.getLogger().info("Google IAP: Initializing", new Object[0]);
                } else if (googlePlayPaymentMethodState instanceof GooglePlayPaymentMethodState.Products) {
                    LoggerKt.getLogger().debug("Google IAP: Products " + ((GooglePlayPaymentMethodState.Products) googlePlayPaymentMethodState).getProducts(), new Object[0]);
                    CustomProgressbar loadingSpinner2 = PaymentMethodFragment.this.getBinding().loadingSpinner;
                    Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
                    ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
                } else if (googlePlayPaymentMethodState instanceof GooglePlayPaymentMethodState.PurchaseConsumed) {
                    GooglePlayPaymentMethodState.PurchaseConsumed purchaseConsumed = (GooglePlayPaymentMethodState.PurchaseConsumed) googlePlayPaymentMethodState;
                    LoggerKt.getLogger().debug("Google IAP: PurchaseConsumed " + purchaseConsumed.getProductId(), new Object[0]);
                    Pair priceAndCurrency3 = PaymentMethodFragment.this.getPriceAndCurrency();
                    String str5 = (String) priceAndCurrency3.component1();
                    String str6 = (String) priceAndCurrency3.component2();
                    FirebaseUserPropertiesManager firebaseUserPropertiesManager3 = PaymentMethodFragment.this.getFirebaseUserPropertiesManager();
                    String strName3 = PaymentMethodFragment.this.getArgs().getPlanType().name();
                    ProSubscriptionTime time3 = PaymentMethodFragment.this.getArgs().getTime();
                    firebaseUserPropertiesManager3.logPurchaseSuccess(strName3, str5, str6, time3 != null ? String.valueOf(time3.getValue()) : null, "GooglePlay", purchaseConsumed.getProductId(), PaymentMethodFragment.this.getBuildFlavor());
                    PaymentMethodFragment.this.getOnPaidSuccess().invoke(Boxing.boxBoolean(true));
                    try {
                        CustomProgressbar loadingSpinner3 = PaymentMethodFragment.this.getBinding().loadingSpinner;
                        Intrinsics.checkNotNullExpressionValue(loadingSpinner3, "loadingSpinner");
                        ViewExtKt.hideMe$default(loadingSpinner3, 0L, 1, null);
                        PaymentMethodFragment.this.dismiss();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    if (!(googlePlayPaymentMethodState instanceof GooglePlayPaymentMethodState.Purchased)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    GooglePlayPaymentMethodState.Purchased purchased = (GooglePlayPaymentMethodState.Purchased) googlePlayPaymentMethodState;
                    LoggerKt.getLogger().debug("Google IAP: Purchased " + purchased.getPurchaseToken(), new Object[0]);
                    CustomProgressbar loadingSpinner4 = PaymentMethodFragment.this.getBinding().loadingSpinner;
                    Intrinsics.checkNotNullExpressionValue(loadingSpinner4, "loadingSpinner");
                    ViewExtKt.hideMe$default(loadingSpinner4, 0L, 1, null);
                    PaymentMethodFragment.this.getSendPurchaseTokenToServerListener().invoke(purchased.getPurchaseToken(), purchased.getProductId(), PaymentMethodFragment.this.getArgs().getPlanType(), SubscriptionIAPPlatformEnum.GooglePlay);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        static final Unit invokeSuspend$lambda$0(PaymentMethodFragment paymentMethodFragment, List list) {
            if (!paymentMethodFragment.googlePlayTimedOut) {
                Job job = paymentMethodFragment.googlePlayTimeoutJob;
                if (job != null) {
                    Job.cancel$default(job, (CancellationException) null, 1, (Object) null);
                }
                List list2 = list;
                if (list2 == null || list2.isEmpty()) {
                    Pair priceAndCurrency = paymentMethodFragment.getPriceAndCurrency();
                    String str = (String) priceAndCurrency.component1();
                    String str2 = (String) priceAndCurrency.component2();
                    FirebaseUserPropertiesManager firebaseUserPropertiesManager = paymentMethodFragment.getFirebaseUserPropertiesManager();
                    String strName = paymentMethodFragment.getArgs().getPlanType().name();
                    ProSubscriptionTime time = paymentMethodFragment.getArgs().getTime();
                    firebaseUserPropertiesManager.logPurchaseFailed(strName, str, str2, time != null ? String.valueOf(time.getValue()) : null, "GooglePlay", "no_products_found", paymentMethodFragment.getBuildFlavor());
                    CustomProgressbar loadingSpinner = paymentMethodFragment.getBinding().loadingSpinner;
                    Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
                    ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
                    paymentMethodFragment.getPaymentFailedListener().invoke("No products found");
                    paymentMethodFragment.showDirectPaymentFallback();
                    return Unit.INSTANCE;
                }
                CustomProgressbar loadingSpinner2 = paymentMethodFragment.getBinding().loadingSpinner;
                Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
                ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
                PaymentMethod googlePlayPaymentMethod = GooglePaymentMethodExtensionKt.getGooglePlayPaymentMethod(paymentMethodFragment, list, paymentMethodFragment.getArgs().getPlanType());
                googlePlayPaymentMethod.setSelected(true);
                Unit unit = Unit.INSTANCE;
                List listMutableListOf = CollectionsKt.mutableListOf(googlePlayPaymentMethod);
                if (paymentMethodFragment.getArgs().getPlanType() != PlanType.REMOVE_ADS && paymentMethodFragment.getViewModel().isCurrentLanguagePersian()) {
                    listMutableListOf.add(paymentMethodFragment.directPaymentMethod());
                }
                PaymentMethodAdapter dataAdapter = paymentMethodFragment.getBinding().getDataAdapter();
                if (dataAdapter != null) {
                    dataAdapter.submitList(listMutableListOf);
                }
                return Unit.INSTANCE;
            }
            return Unit.INSTANCE;
        }
    }

    private final void observePlayStoreEvents() {
        FlowKt.launchIn(FlowKt.onEach(getGoogleViewModel().getGooglePlayState(), new AnonymousClass1(null)), LifecycleOwnerKt.getLifecycleScope(this));
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        this.googlePlayTimeoutJob = BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new AnonymousClass2(null), 3, null);
        getGoogleViewModel().initializeGooglePlayConnection();
    }

    /* JADX INFO: renamed from: fast.dic.dict.PaymentMethodFragment$observePlayStoreEvents$2, reason: invalid class name */
    /* JADX INFO: compiled from: PaymentMethodFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.PaymentMethodFragment$observePlayStoreEvents$2", f = "PaymentMethodFragment.kt", i = {}, l = {374}, m = "invokeSuspend", n = {}, nl = {375}, s = {}, v = 2)
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PaymentMethodFragment.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(10000L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            PaymentMethodFragment.this.googlePlayTimedOut = true;
            Pair priceAndCurrency = PaymentMethodFragment.this.getPriceAndCurrency();
            String str = (String) priceAndCurrency.component1();
            String str2 = (String) priceAndCurrency.component2();
            FirebaseUserPropertiesManager firebaseUserPropertiesManager = PaymentMethodFragment.this.getFirebaseUserPropertiesManager();
            String strName = PaymentMethodFragment.this.getArgs().getPlanType().name();
            ProSubscriptionTime time = PaymentMethodFragment.this.getArgs().getTime();
            firebaseUserPropertiesManager.logPurchaseFailed(strName, str, str2, time != null ? String.valueOf(time.getValue()) : null, "GooglePlay", "google_play_timeout", PaymentMethodFragment.this.getBuildFlavor());
            PaymentMethodFragment.this.showDirectPaymentFallback();
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getBazaarViewModel$app().disconnectCafeBazaar();
        super.onDestroy();
    }

    public final Function4<String, String, PlanType, SubscriptionIAPPlatformEnum, Unit> getSendPurchaseTokenToServerListener() {
        return this.sendPurchaseTokenToServerListener;
    }

    public final void setSendPurchaseTokenToServerListener(Function4<? super String, ? super String, ? super PlanType, ? super SubscriptionIAPPlatformEnum, Unit> function4) {
        Intrinsics.checkNotNullParameter(function4, "<set-?>");
        this.sendPurchaseTokenToServerListener = function4;
    }

    static final Unit sendPurchaseTokenToServerListener$lambda$0(PaymentMethodFragment paymentMethodFragment, String purchaseToken, String productId, PlanType plan, SubscriptionIAPPlatformEnum paymentMethod) {
        ValidationPurchaseResponseCallback validationPurchaseResponseCallback;
        Intrinsics.checkNotNullParameter(purchaseToken, "purchaseToken");
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(plan, "plan");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        CustomProgressbar loadingSpinner = paymentMethodFragment.getBinding().loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        if (paymentMethod == SubscriptionIAPPlatformEnum.CafeBazaar) {
            Context contextRequireContext = paymentMethodFragment.requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            validationPurchaseResponseCallback = new ValidationPurchaseResponseCallback(paymentMethodFragment, contextRequireContext, purchaseToken, paymentMethod, null, plan, 8, null);
        } else {
            Context contextRequireContext2 = paymentMethodFragment.requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
            validationPurchaseResponseCallback = new ValidationPurchaseResponseCallback(paymentMethodFragment, contextRequireContext2, null, paymentMethod, productId, plan, 2, null);
        }
        paymentMethodFragment.getViewModel().hideAd(purchaseToken, paymentMethod, validationPurchaseResponseCallback);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDirectPaymentFallback() {
        PaymentMethodAdapter dataAdapter;
        Job job = this.googlePlayTimeoutJob;
        if (job != null) {
            Job.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        CustomProgressbar loadingSpinner = getBinding().loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
        PaymentMethodAdapter dataAdapter2 = getBinding().getDataAdapter();
        if ((dataAdapter2 != null ? dataAdapter2.getItemCount() : 0) > 0) {
            return;
        }
        if ((getArgs().getPlanType() != PlanType.REMOVE_ADS || getViewModel().isCurrentLanguagePersian()) && (dataAdapter = getBinding().getDataAdapter()) != null) {
            PaymentMethod paymentMethodDirectPaymentMethod = directPaymentMethod();
            paymentMethodDirectPaymentMethod.setSelected(true);
            dataAdapter.submitList(CollectionsKt.listOf(paymentMethodDirectPaymentMethod));
        }
    }

    public final PaymentMethod directPaymentMethod() {
        Price price;
        Price price2;
        Price price3;
        String str = null;
        if (getArgs().getTime() == ProSubscriptionTime.ONE_MONTH) {
            Plan plan = getArgs().getPlan();
            if (plan != null && (price3 = plan.getPrice()) != null) {
                str = price3.get1();
            }
        } else if (getArgs().getTime() == ProSubscriptionTime.SIX_MONTHS) {
            Plan plan2 = getArgs().getPlan();
            if (plan2 != null && (price2 = plan2.getPrice()) != null) {
                str = price2.get6();
            }
        } else {
            Plan plan3 = getArgs().getPlan();
            if (plan3 != null && (price = plan3.getPrice()) != null) {
                str = price.get12();
            }
        }
        PlanType planType = getArgs().getPlanType();
        if (str == null) {
            str = "---";
        }
        String string = getString(R.string.direct_purchase_from_the_bank);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        Drawable drawable = ContextCompat.getDrawable(requireContext(), R.drawable.app_logo_sp);
        Intrinsics.checkNotNull(drawable);
        return new PaymentMethod(planType, str, string, drawable, SubscriptionIAPPlatformEnum.Shetab, false, 32, null);
    }

    public final String getProductId() {
        if (getArgs().getPlanType() == PlanType.REMOVE_ADS) {
            return ConstKt.AD_FREE;
        }
        if (getArgs().getPlanType() == PlanType.PRO) {
            if (getArgs().getTime() == ProSubscriptionTime.ONE_YEAR) {
                return ConstKt.ONE_YEAR_SUBSCRIPTION;
            }
            if (getArgs().getTime() == ProSubscriptionTime.SIX_MONTHS) {
                return ConstKt.SIX_MONTHS_SUBSCRIPTION;
            }
            return ConstKt.ONE_MONTH_SUBSCRIPTION;
        }
        if (getArgs().getTime() == ProSubscriptionTime.ONE_YEAR) {
            return ConstKt.ONE_YEAR_SUBSCRIPTION_AI;
        }
        if (getArgs().getTime() == ProSubscriptionTime.SIX_MONTHS) {
            return ConstKt.SIX_MONTHS_SUBSCRIPTION_AI;
        }
        return ConstKt.ONE_MONTH_SUBSCRIPTION_AI;
    }

    private final void purchaseDirectly() {
        String str;
        FDParseUser user = getUser();
        if (user == null) {
            return;
        }
        int value = getArgs().getTime().getValue();
        if (getArgs().getPlanType() == PlanType.REMOVE_ADS) {
            str = "plan1";
        } else {
            str = getArgs().getPlanType() == PlanType.PRO ? "plan2" : "plan3";
        }
        Pair<String, String> priceAndCurrency = getPriceAndCurrency();
        getFirebaseUserPropertiesManager().logDirectPayment(getArgs().getPlanType().name(), priceAndCurrency.component1(), priceAndCurrency.component2(), String.valueOf(value), getBuildFlavor());
        String sessionToken = user.getSessionToken();
        String email = user.getEmail();
        Intrinsics.checkNotNullExpressionValue(email, "getEmail(...)");
        String lowerCase = StringsKt.trim((CharSequence) email).toString().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://fastdic.com/api/v2/purchase/android?sessionToken=" + sessionToken + "&plan=" + str + "&duration=" + value + "&email=" + StringExtKt.toUrlEncode(lowerCase))));
        dismiss();
    }

    private final FDParseUser getUser() {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if ((fDParseUser != null ? fDParseUser.getEmail() : null) == null) {
            return null;
        }
        return fDParseUser;
    }

    /* JADX INFO: compiled from: PaymentMethodFragment.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, d2 = {"Lfast/dic/dict/PaymentMethodFragment$Companion;", "", "<init>", "()V", "showModal", "Lfast/dic/dict/PaymentMethodFragment;", "activity", "Landroidx/fragment/app/FragmentActivity;", "args", "Lfast/dic/dict/PaymentMethodFragmentArgs;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PaymentMethodFragment showModal(FragmentActivity activity, PaymentMethodFragmentArgs args) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(args, "args");
            PaymentMethodFragment paymentMethodFragment = new PaymentMethodFragment();
            paymentMethodFragment.setArguments(args.toBundle());
            paymentMethodFragment.show(activity.getSupportFragmentManager(), "");
            return paymentMethodFragment;
        }
    }

    /* JADX INFO: compiled from: PaymentMethodFragment.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\b\u0086\u0004\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ(\u0010\u0014\u001a\u00020\u00152\u000e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00172\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0019H\u0016J \u0010\u001a\u001a\u00020\u00152\u000e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001d"}, d2 = {"Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;", "Lretrofit2/Callback;", "Lfast/dic/dict/models/api/ValidateModel;", "finalContext", "Landroid/content/Context;", "consumeToken", "", "platform", "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;", "productId", "planType", "Lfast/dic/dict/models/PlanType;", "<init>", "(Lfast/dic/dict/PaymentMethodFragment;Landroid/content/Context;Ljava/lang/String;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Ljava/lang/String;Lfast/dic/dict/models/PlanType;)V", "getPlatform", "()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;", "getProductId", "()Ljava/lang/String;", "getPlanType", "()Lfast/dic/dict/models/PlanType;", "onResponse", "", NotificationCompat.CATEGORY_CALL, "Lretrofit2/Call;", "response", "Lretrofit2/Response;", "onFailure", ApsMetricsDataMap.APSMETRICS_FIELD_TIMESTAMP, "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class ValidationPurchaseResponseCallback implements Callback<ValidateModel> {
        private final String consumeToken;
        private final Context finalContext;
        private final PlanType planType;
        private final SubscriptionIAPPlatformEnum platform;
        private final String productId;
        final /* synthetic */ PaymentMethodFragment this$0;

        public ValidationPurchaseResponseCallback(PaymentMethodFragment paymentMethodFragment, Context finalContext, String str, SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum, String str2, PlanType planType) {
            Intrinsics.checkNotNullParameter(finalContext, "finalContext");
            Intrinsics.checkNotNullParameter(planType, "planType");
            this.this$0 = paymentMethodFragment;
            this.finalContext = finalContext;
            this.consumeToken = str;
            this.platform = subscriptionIAPPlatformEnum;
            this.productId = str2;
            this.planType = planType;
        }

        public /* synthetic */ ValidationPurchaseResponseCallback(PaymentMethodFragment paymentMethodFragment, Context context, String str, SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum, String str2, PlanType planType, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(paymentMethodFragment, context, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : subscriptionIAPPlatformEnum, (i & 8) != 0 ? null : str2, planType);
        }

        public final SubscriptionIAPPlatformEnum getPlatform() {
            return this.platform;
        }

        public final String getProductId() {
            return this.productId;
        }

        public final PlanType getPlanType() {
            return this.planType;
        }

        @Override // retrofit2.Callback
        public void onResponse(Call<ValidateModel> call, Response<ValidateModel> response) {
            String strName;
            String result;
            String result2;
            String result3;
            String strName2;
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(response, "response");
            LoggerKt.getLogger().debug("Payment screen ValidationPurchase onResponse", new Object[0]);
            ValidateModel validateModelBody = response.body();
            String str = "";
            if (validateModelBody == null || !validateModelBody.getSuccessful()) {
                Pair priceAndCurrency = this.this$0.getPriceAndCurrency();
                String str2 = (String) priceAndCurrency.component1();
                String str3 = (String) priceAndCurrency.component2();
                FirebaseUserPropertiesManager firebaseUserPropertiesManager = this.this$0.getFirebaseUserPropertiesManager();
                String strName3 = this.this$0.getArgs().getPlanType().name();
                ProSubscriptionTime time = this.this$0.getArgs().getTime();
                String strValueOf = time != null ? String.valueOf(time.getValue()) : null;
                SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum = this.platform;
                String str4 = (subscriptionIAPPlatformEnum == null || (strName = subscriptionIAPPlatformEnum.name()) == null) ? "unknown" : strName;
                ValidateModel validateModelBody2 = response.body();
                firebaseUserPropertiesManager.logPurchaseFailed(strName3, str2, str3, strValueOf, str4, "validation_failed: " + (validateModelBody2 != null ? validateModelBody2.getResult() : null), this.this$0.getBuildFlavor());
            } else {
                FDPurchased fDPurchased = new FDPurchased(this.finalContext, Util.INSTANCE.getAndroidId(this.finalContext));
                LoggerKt.getLogger().debug(this.platform + " --> ValidationPurchaseResponseCallback onResponse called! consumeToken = " + this.consumeToken, new Object[0]);
                if (this.platform != SubscriptionIAPPlatformEnum.GooglePlay) {
                    Pair priceAndCurrency2 = this.this$0.getPriceAndCurrency();
                    String str5 = (String) priceAndCurrency2.component1();
                    String str6 = (String) priceAndCurrency2.component2();
                    FirebaseUserPropertiesManager firebaseUserPropertiesManager2 = this.this$0.getFirebaseUserPropertiesManager();
                    String strName4 = this.this$0.getArgs().getPlanType().name();
                    ProSubscriptionTime time2 = this.this$0.getArgs().getTime();
                    String strValueOf2 = time2 != null ? String.valueOf(time2.getValue()) : null;
                    SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum2 = this.platform;
                    firebaseUserPropertiesManager2.logPurchaseSuccess(strName4, str5, str6, strValueOf2, (subscriptionIAPPlatformEnum2 == null || (strName2 = subscriptionIAPPlatformEnum2.name()) == null) ? "unknown" : strName2, this.productId, this.this$0.getBuildFlavor());
                }
                if (this.consumeToken != null && this.platform == SubscriptionIAPPlatformEnum.CafeBazaar) {
                    BazaarPaymentViewModel bazaarViewModel$app = this.this$0.getBazaarViewModel$app();
                    String str7 = this.consumeToken;
                    ValidateModel validateModelBody3 = response.body();
                    LiveData<Boolean> liveDataConsumeCafeBazaarProduct = bazaarViewModel$app.consumeCafeBazaarProduct(str7, (validateModelBody3 == null || (result3 = validateModelBody3.getResult()) == null) ? "" : result3, fDPurchased, this.planType, this.finalContext);
                    LifecycleOwner viewLifecycleOwner = this.this$0.getViewLifecycleOwner();
                    final PaymentMethodFragment paymentMethodFragment = this.this$0;
                    liveDataConsumeCafeBazaarProduct.observe(viewLifecycleOwner, new PaymentMethodFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.PaymentMethodFragment$ValidationPurchaseResponseCallback$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return PaymentMethodFragment.ValidationPurchaseResponseCallback.onResponse$lambda$0(paymentMethodFragment, (Boolean) obj);
                        }
                    }));
                    return;
                }
                if (this.productId != null && this.platform == SubscriptionIAPPlatformEnum.GooglePlay) {
                    this.this$0.getGoogleViewModel().consumeGooglePlayProduct(this.productId);
                    return;
                }
                fDPurchased.PurchasedPlan1();
            }
            String string = this.this$0.getString(R.string.error);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            ValidateModel validateModelBody4 = response.body();
            if (validateModelBody4 != null && validateModelBody4.getSuccessful()) {
                string = this.this$0.getString(R.string.thanks);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            }
            FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
            ValidateModel validateModelBody5 = response.body();
            if (validateModelBody5 == null || (result = validateModelBody5.getResult()) == null) {
                result = "";
            }
            String string2 = this.this$0.getString(R.string.close);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            fDAlertManger.showAlertWithOutForeCloseApp(string, result, string2, this.finalContext);
            Logger logger = LoggerKt.getLogger();
            SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum3 = this.platform;
            ValidateModel validateModelBody6 = response.body();
            if (validateModelBody6 != null && (result2 = validateModelBody6.getResult()) != null) {
                str = result2;
            }
            logger.debug(subscriptionIAPPlatformEnum3 + " ---> title = " + string + ". Message = " + str, new Object[0]);
            this.this$0.getOnPaidSuccess().invoke(true);
            CustomProgressbar loadingSpinner = this.this$0.getBinding().loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
            this.this$0.dismiss();
        }

        static final Unit onResponse$lambda$0(PaymentMethodFragment paymentMethodFragment, Boolean bool) {
            paymentMethodFragment.getOnPaidSuccess().invoke(true);
            CustomProgressbar loadingSpinner = paymentMethodFragment.getBinding().loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
            paymentMethodFragment.dismiss();
            return Unit.INSTANCE;
        }

        @Override // retrofit2.Callback
        public void onFailure(Call<ValidateModel> call, Throwable t) {
            String strName;
            Intrinsics.checkNotNullParameter(call, "call");
            Intrinsics.checkNotNullParameter(t, "t");
            LoggerKt.getLogger().error(this.platform + " ---> Payment screen onFailure. Error = " + t.getMessage(), new Object[0]);
            Pair priceAndCurrency = this.this$0.getPriceAndCurrency();
            String str = (String) priceAndCurrency.component1();
            String str2 = (String) priceAndCurrency.component2();
            FirebaseUserPropertiesManager firebaseUserPropertiesManager = this.this$0.getFirebaseUserPropertiesManager();
            String strName2 = this.this$0.getArgs().getPlanType().name();
            ProSubscriptionTime time = this.this$0.getArgs().getTime();
            String strValueOf = time != null ? String.valueOf(time.getValue()) : null;
            SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum = this.platform;
            if (subscriptionIAPPlatformEnum == null || (strName = subscriptionIAPPlatformEnum.name()) == null) {
                strName = "unknown";
            }
            firebaseUserPropertiesManager.logPurchaseFailed(strName2, str, str2, strValueOf, strName, "server_error: " + t.getMessage(), this.this$0.getBuildFlavor());
            CustomProgressbar loadingSpinner = this.this$0.getBinding().loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
            this.this$0.getOnPaidSuccess().invoke(false);
            this.this$0.dismiss();
            FDAlertManger.INSTANCE.showServerHasProblemAlert(this.finalContext);
        }
    }
}
