package fast.dic.dict.viewmodels;

import android.content.Context;
import androidx.activity.result.ActivityResultRegistry;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import fast.dic.dict.models.PlanType;
import fast.dic.dict.p000const.ConfigConstKt;
import fast.dic.dict.services.parse.FDPurchased;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.LoggerKt;
import ir.cafebazaar.poolakey.Connection;
import ir.cafebazaar.poolakey.Payment;
import ir.cafebazaar.poolakey.callback.ConnectionCallback;
import ir.cafebazaar.poolakey.callback.ConsumeCallback;
import ir.cafebazaar.poolakey.callback.GetSkuDetailsCallback;
import ir.cafebazaar.poolakey.callback.PurchaseCallback;
import ir.cafebazaar.poolakey.config.PaymentConfiguration;
import ir.cafebazaar.poolakey.config.SecurityCheck;
import ir.cafebazaar.poolakey.entity.PurchaseInfo;
import ir.cafebazaar.poolakey.request.PurchaseRequest;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BazaarPaymentViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\b\u0007\u001a\u0002\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\t\u001a\u00020\nJ\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\f2\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\nJ4\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u000e\u001a\u00020\u000fR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000Ê\u0001\u0002\b#¨\u0006\""}, d2 = {"Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "Ljavax/inject/Inject;", "cafeBazaarPayment", "Lir/cafebazaar/poolakey/Payment;", "cafeBazaarPaymentConnection", "Lir/cafebazaar/poolakey/Connection;", "destroyBazaarConnection", "", "initializeCafeBazaarBillingService", "Landroidx/lifecycle/LiveData;", "", Names.CONTEXT, "Landroid/content/Context;", "getBazaarProducts", "Lfast/dic/dict/viewmodels/BazaarPaymentMethodState;", "productIds", "", "", "purchasePackageFromCafeBazaar", "Lfast/dic/dict/viewmodels/BazaarPurchaseState;", "productId", "activityResultRegistry", "Landroidx/activity/result/ActivityResultRegistry;", "disconnectCafeBazaar", "consumeCafeBazaarProduct", "consumeToken", "message", "fdPurchased", "Lfast/dic/dict/services/parse/FDPurchased;", "planType", "Lfast/dic/dict/models/PlanType;", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class BazaarPaymentViewModel extends ViewModel {
    private Payment cafeBazaarPayment;
    private Connection cafeBazaarPaymentConnection;

    @Inject
    public BazaarPaymentViewModel() {
    }

    public final void destroyBazaarConnection() {
        Connection connection = this.cafeBazaarPaymentConnection;
        if (connection != null) {
            connection.disconnect();
        }
    }

    public final LiveData<Boolean> initializeCafeBazaarBillingService(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        MutableLiveData mutableLiveData = new MutableLiveData();
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45401(context, mutableLiveData, null), 3, null);
        return mutableLiveData;
    }

    /* JADX INFO: renamed from: fast.dic.dict.viewmodels.BazaarPaymentViewModel$initializeCafeBazaarBillingService$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BazaarPaymentViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.viewmodels.BazaarPaymentViewModel$initializeCafeBazaarBillingService$1", f = "BazaarPaymentViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45401 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ MutableLiveData<Boolean> $liveData;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45401(Context context, MutableLiveData<Boolean> mutableLiveData, Continuation<? super C45401> continuation) {
            super(2, continuation);
            this.$context = context;
            this.$liveData = mutableLiveData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BazaarPaymentViewModel.this.new C45401(this.$context, this.$liveData, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45401) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Connection connectionConnect = null;
            PaymentConfiguration paymentConfiguration = new PaymentConfiguration(new SecurityCheck.Enable(ConfigConstKt.PUBLIC_KEY_IAP_BAZAAR), false, 2, 0 == true ? 1 : 0);
            BazaarPaymentViewModel.this.cafeBazaarPayment = new Payment(this.$context, paymentConfiguration);
            BazaarPaymentViewModel bazaarPaymentViewModel = BazaarPaymentViewModel.this;
            Payment payment = bazaarPaymentViewModel.cafeBazaarPayment;
            if (payment != null) {
                final MutableLiveData<Boolean> mutableLiveData = this.$liveData;
                final Context context = this.$context;
                connectionConnect = payment.connect(new Function1() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return BazaarPaymentViewModel.C45401.invokeSuspend$lambda$0(mutableLiveData, context, (ConnectionCallback) obj2);
                    }
                });
            }
            bazaarPaymentViewModel.cafeBazaarPaymentConnection = connectionConnect;
            return Unit.INSTANCE;
        }

        static final Unit invokeSuspend$lambda$0(final MutableLiveData mutableLiveData, final Context context, ConnectionCallback connectionCallback) {
            connectionCallback.connectionSucceed(new Function0() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BazaarPaymentViewModel.C45401.invokeSuspend$lambda$0$0(mutableLiveData);
                }
            });
            connectionCallback.connectionFailed(new Function1() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BazaarPaymentViewModel.C45401.invokeSuspend$lambda$0$1(mutableLiveData, context, (Throwable) obj);
                }
            });
            connectionCallback.disconnected(new Function0() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return BazaarPaymentViewModel.C45401.invokeSuspend$lambda$0$2(mutableLiveData);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0$0(MutableLiveData mutableLiveData) {
            mutableLiveData.postValue(true);
            LoggerKt.getLogger().debug("CafeBazaar connectionSucceed called", new Object[0]);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0$1(MutableLiveData mutableLiveData, Context context, Throwable th) {
            LoggerKt.getLogger().error("CafeBazaar connectionFailed called " + th, new Object[0]);
            mutableLiveData.postValue(false);
            String message = th.getMessage();
            if (message != null && StringsKt.contains$default((CharSequence) message, (CharSequence) "Bazaar is not installed", false, 2, (Object) null)) {
                FDAlertManger.INSTANCE.showCafeBazaarNotInstalledErrorAlert(context);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0$2(MutableLiveData mutableLiveData) {
            mutableLiveData.postValue(false);
            LoggerKt.getLogger().error("disconnected connectionFailed called", new Object[0]);
            return Unit.INSTANCE;
        }
    }

    public final LiveData<BazaarPaymentMethodState> getBazaarProducts(List<String> productIds) {
        Intrinsics.checkNotNullParameter(productIds, "productIds");
        MutableLiveData mutableLiveData = new MutableLiveData();
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(productIds, mutableLiveData, null), 3, null);
        return mutableLiveData;
    }

    /* JADX INFO: renamed from: fast.dic.dict.viewmodels.BazaarPaymentViewModel$getBazaarProducts$1, reason: invalid class name */
    /* JADX INFO: compiled from: BazaarPaymentViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.viewmodels.BazaarPaymentViewModel$getBazaarProducts$1", f = "BazaarPaymentViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MutableLiveData<BazaarPaymentMethodState> $liveData;
        final /* synthetic */ List<String> $productIds;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<String> list, MutableLiveData<BazaarPaymentMethodState> mutableLiveData, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$productIds = list;
            this.$liveData = mutableLiveData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return BazaarPaymentViewModel.this.new AnonymousClass1(this.$productIds, this.$liveData, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                Payment payment = BazaarPaymentViewModel.this.cafeBazaarPayment;
                if (payment != null) {
                    List<String> list = this.$productIds;
                    final MutableLiveData<BazaarPaymentMethodState> mutableLiveData = this.$liveData;
                    payment.getInAppSkuDetails(list, new Function1() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return BazaarPaymentViewModel.AnonymousClass1.invokeSuspend$lambda$0(mutableLiveData, (GetSkuDetailsCallback) obj2);
                        }
                    });
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        static final Unit invokeSuspend$lambda$0(final MutableLiveData mutableLiveData, GetSkuDetailsCallback getSkuDetailsCallback) {
            getSkuDetailsCallback.getSkuDetailsSucceed(new Function1() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BazaarPaymentViewModel.AnonymousClass1.invokeSuspend$lambda$0$0(mutableLiveData, (List) obj);
                }
            });
            getSkuDetailsCallback.getSkuDetailsFailed(new Function1() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BazaarPaymentViewModel.AnonymousClass1.invokeSuspend$lambda$0$1(mutableLiveData, (Throwable) obj);
                }
            });
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0$0(MutableLiveData mutableLiveData, List list) {
            mutableLiveData.postValue(new BazaarPaymentMethodState.Products(list));
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0$1(MutableLiveData mutableLiveData, Throwable th) {
            String localizedMessage = th.getLocalizedMessage();
            if (localizedMessage == null) {
                localizedMessage = "UnknownError";
            }
            mutableLiveData.postValue(new BazaarPaymentMethodState.Error(localizedMessage));
            return Unit.INSTANCE;
        }
    }

    public final LiveData<BazaarPurchaseState> purchasePackageFromCafeBazaar(final String productId, ActivityResultRegistry activityResultRegistry) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(activityResultRegistry, "activityResultRegistry");
        final MutableLiveData mutableLiveData = new MutableLiveData();
        PurchaseRequest purchaseRequest = new PurchaseRequest(productId, null, null, 6, null);
        Payment payment = this.cafeBazaarPayment;
        if (payment != null) {
            payment.purchaseProduct(activityResultRegistry, purchaseRequest, new Function1() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BazaarPaymentViewModel.purchasePackageFromCafeBazaar$lambda$0(mutableLiveData, productId, (PurchaseCallback) obj);
                }
            });
        }
        return mutableLiveData;
    }

    static final Unit purchasePackageFromCafeBazaar$lambda$0(final MutableLiveData mutableLiveData, final String str, PurchaseCallback purchaseProduct) {
        Intrinsics.checkNotNullParameter(purchaseProduct, "$this$purchaseProduct");
        purchaseProduct.purchaseFlowBegan(new Function0() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BazaarPaymentViewModel.purchasePackageFromCafeBazaar$lambda$0$0();
            }
        });
        purchaseProduct.failedToBeginFlow(new Function1() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BazaarPaymentViewModel.purchasePackageFromCafeBazaar$lambda$0$1(mutableLiveData, (Throwable) obj);
            }
        });
        purchaseProduct.purchaseFailed(new Function1() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BazaarPaymentViewModel.purchasePackageFromCafeBazaar$lambda$0$2(mutableLiveData, (Throwable) obj);
            }
        });
        purchaseProduct.purchaseSucceed(new Function1() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BazaarPaymentViewModel.purchasePackageFromCafeBazaar$lambda$0$3(mutableLiveData, str, (PurchaseInfo) obj);
            }
        });
        purchaseProduct.purchaseCanceled(new Function0() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BazaarPaymentViewModel.purchasePackageFromCafeBazaar$lambda$0$4(mutableLiveData);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit purchasePackageFromCafeBazaar$lambda$0$0() {
        LoggerKt.getLogger().debug("Bazaar's billing screen has opened successfully", new Object[0]);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit purchasePackageFromCafeBazaar$lambda$0$1(MutableLiveData mutableLiveData, Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        LoggerKt.getLogger().error("Failed to open Bazaar's billing screen " + throwable, new Object[0]);
        String message = throwable.getMessage();
        if (message == null) {
            message = "Failed to open Bazaar's billing screen " + throwable;
        }
        mutableLiveData.postValue(new BazaarPurchaseState.Error(message));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit purchasePackageFromCafeBazaar$lambda$0$2(MutableLiveData mutableLiveData, Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        LoggerKt.getLogger().error("getPurchasedProducts: purchaseFailed called " + throwable, new Object[0]);
        String message = throwable.getMessage();
        if (message == null) {
            message = "Failed to purchase Bazaar's billing screen " + throwable;
        }
        mutableLiveData.postValue(new BazaarPurchaseState.Error(message));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit purchasePackageFromCafeBazaar$lambda$0$3(MutableLiveData mutableLiveData, String str, PurchaseInfo purchaseInfo) {
        Intrinsics.checkNotNullParameter(purchaseInfo, "purchaseInfo");
        LoggerKt.getLogger().debug("Bazaar's billing purchaseSucceed " + purchaseInfo, new Object[0]);
        mutableLiveData.postValue(new BazaarPurchaseState.Purchased(purchaseInfo.getPurchaseToken(), str));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit purchasePackageFromCafeBazaar$lambda$0$4(MutableLiveData mutableLiveData) {
        LoggerKt.getLogger().warn("Bazaar's billing purchaseCanceled", new Object[0]);
        mutableLiveData.postValue(new BazaarPurchaseState.Error("Bazaar's billing has been canceled"));
        return Unit.INSTANCE;
    }

    public final void disconnectCafeBazaar() {
        Connection connection = this.cafeBazaarPaymentConnection;
        if (connection != null) {
            connection.disconnect();
        }
    }

    public final LiveData<Boolean> consumeCafeBazaarProduct(String consumeToken, final String message, final FDPurchased fdPurchased, final PlanType planType, final Context context) {
        Intrinsics.checkNotNullParameter(consumeToken, "consumeToken");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(fdPurchased, "fdPurchased");
        Intrinsics.checkNotNullParameter(planType, "planType");
        Intrinsics.checkNotNullParameter(context, "context");
        final MutableLiveData mutableLiveData = new MutableLiveData();
        LoggerKt.getLogger().debug("Cafe bazaar consumeCafeBazaarProduct called!", new Object[0]);
        Payment payment = this.cafeBazaarPayment;
        if (payment != null) {
            payment.consumeProduct(consumeToken, new Function1() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return BazaarPaymentViewModel.consumeCafeBazaarProduct$lambda$0(planType, fdPurchased, context, message, mutableLiveData, (ConsumeCallback) obj);
                }
            });
        }
        return mutableLiveData;
    }

    static final Unit consumeCafeBazaarProduct$lambda$0(final PlanType planType, final FDPurchased fDPurchased, final Context context, final String str, final MutableLiveData mutableLiveData, ConsumeCallback consumeProduct) {
        Intrinsics.checkNotNullParameter(consumeProduct, "$this$consumeProduct");
        consumeProduct.consumeSucceed(new Function0() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BazaarPaymentViewModel.consumeCafeBazaarProduct$lambda$0$0(planType, fDPurchased, context, str, mutableLiveData);
            }
        });
        consumeProduct.consumeFailed(new Function1() { // from class: fast.dic.dict.viewmodels.BazaarPaymentViewModel$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return BazaarPaymentViewModel.consumeCafeBazaarProduct$lambda$0$1(context, mutableLiveData, (Throwable) obj);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit consumeCafeBazaarProduct$lambda$0$0(PlanType planType, FDPurchased fDPurchased, Context context, String str, MutableLiveData mutableLiveData) {
        LoggerKt.getLogger().debug("Cafe bazaar PurchasedPlan2 successfully done!", new Object[0]);
        if (planType == PlanType.PRO) {
            fDPurchased.PurchasedPlan2();
        } else {
            fDPurchased.PurchasedPlan3();
        }
        FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
        String string = context.getString(R.string.thanks);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = context.getString(R.string.close);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        fDAlertManger.showAlertWithOutForeCloseApp(string, str, string2, context);
        mutableLiveData.postValue(true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit consumeCafeBazaarProduct$lambda$0$1(Context context, MutableLiveData mutableLiveData, Throwable it) {
        Intrinsics.checkNotNullParameter(it, "it");
        LoggerKt.getLogger().error("Unknown error happen for consume product: " + it, new Object[0]);
        FDAlertManger.INSTANCE.showCouldNotPurchaseAlert(context);
        mutableLiveData.postValue(false);
        return Unit.INSTANCE;
    }
}
