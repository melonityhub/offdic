package fast.dic.dict.data.billing;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import androidx.media3.muxer.WebmConstants;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientKotlinKt;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResult;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryPurchasesParams;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.parse.ParseException;
import com.vungle.ads.internal.protos.Sdk;
import dagger.hilt.android.qualifiers.ApplicationContext;
import fast.dic.dict.domain.billing.BillingEvent;
import fast.dic.dict.domain.billing.BillingRepository;
import fast.dic.dict.domain.billing.IntroPriceInfo;
import fast.dic.dict.domain.billing.ProductCatalog;
import fast.dic.dict.domain.billing.PurchaseListingDetails;
import fast.dic.dict.domain.billing.PurchasedItem;
import fast.dic.dict.domain.billing.SubscriptionInfo;
import fast.dic.dict.utils.LoggerKt;
import ir.cafebazaar.poolakey.constant.RawJson;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: PlayBillingRepository.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\b\u0007\u0012\f\b\u0001\u0010\u0003\u001a\u00020\u0004:\u0002\b\u0005\u001a\u0002\b\b¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0014\u001a\u00020\u0015H\u0096@¢\u0006\u0002\u0010\u0016J\u000e\u0010\u0017\u001a\u00020\u0015H\u0096@¢\u0006\u0002\u0010\u0016J*\u0010\u0018\u001a\u00020\u00132\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0096@¢\u0006\u0002\u0010\u001dJ\u001e\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u0010\"J \u0010#\u001a\u00020\u00152\u0006\u0010$\u001a\u00020%2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010'H\u0016J\u0016\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u0010,J\u0016\u0010-\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u0010,J\u0014\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\u001aH\u0096@¢\u0006\u0002\u0010\u0016J\u0016\u00100\u001a\u00020*2\u0006\u0010!\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u0010,J\u0018\u00101\u001a\u0004\u0018\u0001022\u0006\u0010!\u001a\u00020\u001bH\u0096@¢\u0006\u0002\u0010,J0\u00101\u001a\b\u0012\u0004\u0012\u0002020\u001a2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0096@¢\u0006\u0002\u0010\u001dJ\b\u00103\u001a\u00020*H\u0002J\u0006\u00104\u001a\u00020*J\u0018\u00105\u001a\u0004\u0018\u00010/2\u0006\u0010!\u001a\u00020\u001bH\u0086@¢\u0006\u0002\u0010,J\f\u00106\u001a\u00020/*\u00020(H\u0002J\f\u00107\u001a\u000202*\u000208H\u0002J\u001a\u00109\u001a\u0004\u0018\u00010:2\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020:\u0018\u00010\u001aH\u0002R\u0015\u0010\u0003\u001a\u00020\u00048\u0002X\u0083\u0004\u0092\u0002\u0002\b\u0005¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\u000fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lfast/dic/dict/data/billing/PlayBillingRepository;", "Lfast/dic/dict/domain/billing/BillingRepository;", "Lcom/android/billingclient/api/PurchasesUpdatedListener;", "appContext", "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "<init>", "(Landroid/content/Context;)V", "Ljavax/inject/Inject;", "billingClient", "Lcom/android/billingclient/api/BillingClient;", "_events", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lfast/dic/dict/domain/billing/BillingEvent;", "events", "Lkotlinx/coroutines/flow/Flow;", "getEvents", "()Lkotlinx/coroutines/flow/Flow;", "productCatalog", "Lfast/dic/dict/domain/billing/ProductCatalog;", "connect", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "disconnect", "queryProducts", "inappIds", "", "", "subIds", "(Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", FirebaseAnalytics.Event.PURCHASE, "activity", "Landroid/app/Activity;", "productId", "(Landroid/app/Activity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onPurchasesUpdated", "billingResult", "Lcom/android/billingclient/api/BillingResult;", "purchases", "", "Lcom/android/billingclient/api/Purchase;", "acknowledgeIfNeeded", "", RawJson.PURCHASE_TOKEN, "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "consume", "getActivePurchases", "Lfast/dic/dict/domain/billing/PurchasedItem;", "isPurchased", "getPurchaseListingDetailsAsync", "Lfast/dic/dict/domain/billing/PurchaseListingDetails;", "isBillingConnected", "isIabServiceAvailable", "getPurchaseInfo", "toItem", "toListing", "Lcom/android/billingclient/api/ProductDetails;", "pickBestOffer", "Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;", "offers", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PlayBillingRepository implements BillingRepository, PurchasesUpdatedListener {
    private final MutableStateFlow<BillingEvent> _events;

    @ApplicationContext
    private final Context appContext;
    private BillingClient billingClient;
    private final Flow<BillingEvent> events;
    private ProductCatalog productCatalog;

    /* JADX INFO: renamed from: fast.dic.dict.data.billing.PlayBillingRepository$acknowledgeIfNeeded$1, reason: invalid class name */
    /* JADX INFO: compiled from: PlayBillingRepository.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.data.billing.PlayBillingRepository", f = "PlayBillingRepository.kt", i = {0, 1, 1}, l = {182, WebmConstants.MkvEbmlElement.PIXEL_HEIGHT}, m = "acknowledgeIfNeeded", n = {RawJson.PURCHASE_TOKEN, RawJson.PURCHASE_TOKEN, "params"}, nl = {WebmConstants.MkvEbmlElement.CUE_TRACK_POSITIONS, WebmConstants.MkvEbmlElement.CUE_POINT}, s = {"L$0", "L$0", "L$1"}, v = 2)
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlayBillingRepository.this.acknowledgeIfNeeded(null, this);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.data.billing.PlayBillingRepository$connect$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PlayBillingRepository.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.data.billing.PlayBillingRepository", f = "PlayBillingRepository.kt", i = {}, l = {364}, m = "connect", n = {}, nl = {364}, s = {}, v = 2)
    static final class C45061 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C45061(Continuation<? super C45061> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlayBillingRepository.this.connect(this);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.data.billing.PlayBillingRepository$consume$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PlayBillingRepository.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.data.billing.PlayBillingRepository", f = "PlayBillingRepository.kt", i = {0, 1, 1}, l = {193, 195}, m = "consume", n = {RawJson.PURCHASE_TOKEN, RawJson.PURCHASE_TOKEN, "params"}, nl = {194, 196}, s = {"L$0", "L$0", "L$1"}, v = 2)
    static final class C45071 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C45071(Continuation<? super C45071> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlayBillingRepository.this.consume(null, this);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.data.billing.PlayBillingRepository$getActivePurchases$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PlayBillingRepository.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.data.billing.PlayBillingRepository", f = "PlayBillingRepository.kt", i = {2}, l = {Sdk.SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 215, Sdk.SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE}, m = "getActivePurchases", n = {BillingClient.ProductType.INAPP}, nl = {215, Sdk.SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, Sdk.SDKError.Reason.INVALID_WATERFALL_PLACEMENT_ID_VALUE}, s = {"L$0"}, v = 2)
    static final class C45081 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C45081(Continuation<? super C45081> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlayBillingRepository.this.getActivePurchases(this);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.data.billing.PlayBillingRepository$getPurchaseInfo$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PlayBillingRepository.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.data.billing.PlayBillingRepository", f = "PlayBillingRepository.kt", i = {0}, l = {276}, m = "getPurchaseInfo", n = {"productId"}, nl = {277}, s = {"L$0"}, v = 2)
    static final class C45091 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C45091(Continuation<? super C45091> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlayBillingRepository.this.getPurchaseInfo(null, this);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.data.billing.PlayBillingRepository$getPurchaseListingDetailsAsync$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PlayBillingRepository.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.data.billing.PlayBillingRepository", f = "PlayBillingRepository.kt", i = {0}, l = {242}, m = "getPurchaseListingDetailsAsync", n = {"productId"}, nl = {244}, s = {"L$0"}, v = 2)
    static final class C45101 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C45101(Continuation<? super C45101> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlayBillingRepository.this.getPurchaseListingDetailsAsync(null, this);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.data.billing.PlayBillingRepository$getPurchaseListingDetailsAsync$2, reason: invalid class name */
    /* JADX INFO: compiled from: PlayBillingRepository.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.data.billing.PlayBillingRepository", f = "PlayBillingRepository.kt", i = {0, 0}, l = {253}, m = "getPurchaseListingDetailsAsync", n = {"inappIds", "subIds"}, nl = {254}, s = {"L$0", "L$1"}, v = 2)
    static final class AnonymousClass2 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlayBillingRepository.this.getPurchaseListingDetailsAsync(null, null, this);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.data.billing.PlayBillingRepository$isPurchased$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PlayBillingRepository.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.data.billing.PlayBillingRepository", f = "PlayBillingRepository.kt", i = {0}, l = {233}, m = "isPurchased", n = {"productId"}, nl = {364}, s = {"L$0"}, v = 2)
    static final class C45111 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C45111(Continuation<? super C45111> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlayBillingRepository.this.isPurchased(null, this);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.data.billing.PlayBillingRepository$purchase$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PlayBillingRepository.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.data.billing.PlayBillingRepository", f = "PlayBillingRepository.kt", i = {0, 0}, l = {131}, m = FirebaseAnalytics.Event.PURCHASE, n = {"activity", "productId"}, nl = {Sdk.SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE}, s = {"L$0", "L$1"}, v = 2)
    static final class C45121 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C45121(Continuation<? super C45121> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlayBillingRepository.this.purchase(null, null, this);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.data.billing.PlayBillingRepository$queryProducts$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PlayBillingRepository.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.data.billing.PlayBillingRepository", f = "PlayBillingRepository.kt", i = {0, 0, 1, 1, 2, 2, 2}, l = {95, 119, ParseException.CACHE_MISS}, m = "queryProducts", n = {"inappIds", "subIds", "inappIds", "subIds", "inappIds", "subIds", "inapps"}, nl = {119, ParseException.CACHE_MISS, 122}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$2"}, v = 2)
    static final class C45131 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C45131(Continuation<? super C45131> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PlayBillingRepository.this.queryProducts(null, null, this);
        }
    }

    @Inject
    public PlayBillingRepository(@ApplicationContext Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.appContext = appContext;
        BillingClient billingClientBuild = BillingClient.newBuilder(appContext).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).setListener(this).build();
        Intrinsics.checkNotNullExpressionValue(billingClientBuild, "build(...)");
        this.billingClient = billingClientBuild;
        MutableStateFlow<BillingEvent> MutableStateFlow = StateFlowKt.MutableStateFlow(BillingEvent.Idle.INSTANCE);
        this._events = MutableStateFlow;
        this.events = FlowKt.asSharedFlow(MutableStateFlow);
        this.productCatalog = new ProductCatalog(MapsKt.emptyMap(), MapsKt.emptyMap());
    }

    @Override // fast.dic.dict.domain.billing.BillingRepository
    public Flow<BillingEvent> getEvents() {
        return this.events;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // fast.dic.dict.domain.billing.BillingRepository
    public Object connect(Continuation<? super Unit> continuation) {
        C45061 c45061;
        if (continuation instanceof C45061) {
            c45061 = (C45061) continuation;
            if ((c45061.label & Integer.MIN_VALUE) != 0) {
                c45061.label -= Integer.MIN_VALUE;
            } else {
                c45061 = new C45061(continuation);
            }
        } else {
            c45061 = new C45061(continuation);
        }
        Object obj = c45061.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c45061.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (isBillingConnected()) {
                return Unit.INSTANCE;
            }
            c45061.label = 1;
            C45061 c45062 = c45061;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(c45062), 1);
            cancellableContinuationImpl.initCancellability();
            final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
            this.billingClient.startConnection(new BillingClientStateListener() { // from class: fast.dic.dict.data.billing.PlayBillingRepository$connect$2$1
                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingServiceDisconnected() {
                    LoggerKt.getLogger().warn("Billing service disconnected", new Object[0]);
                }

                @Override // com.android.billingclient.api.BillingClientStateListener
                public void onBillingSetupFinished(BillingResult result) {
                    Intrinsics.checkNotNullParameter(result, "result");
                    LoggerKt.getLogger().debug("Billing setup finished", new Object[0]);
                    int responseCode = result.getResponseCode();
                    PlayBillingRepository playBillingRepository = this.this$0;
                    if (responseCode == 0) {
                        playBillingRepository._events.tryEmit(new BillingEvent.BillingInitialized(true));
                    } else {
                        playBillingRepository._events.tryEmit(new BillingEvent.InitializeError(result.getResponseCode(), result.getDebugMessage()));
                    }
                    CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m5163constructorimpl(Unit.INSTANCE));
                }
            });
            Object result = cancellableContinuationImpl.getResult();
            if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(c45062);
            }
            if (result == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @Override // fast.dic.dict.domain.billing.BillingRepository
    public Object disconnect(Continuation<? super Unit> continuation) {
        if (this.billingClient.isReady()) {
            this.billingClient.endConnection();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x009f  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c9 A[LOOP:0: B:30:0x00c1->B:32:0x00c9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:36:0x00fa A[LOOP:1: B:34:0x00f4->B:36:0x00fa, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // fast.dic.dict.domain.billing.BillingRepository
    public Object queryProducts(List<String> list, List<String> list2, Continuation<? super ProductCatalog> continuation) {
        C45131 c45131;
        List<String> list3;
        List<String> list4;
        List list5;
        Object objQueryProducts$query;
        List list6;
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        if (continuation instanceof C45131) {
            c45131 = (C45131) continuation;
            if ((c45131.label & Integer.MIN_VALUE) != 0) {
                c45131.label -= Integer.MIN_VALUE;
            } else {
                c45131 = new C45131(continuation);
            }
        } else {
            c45131 = new C45131(continuation);
        }
        Object objQueryProducts$query2 = c45131.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c45131.label;
        if (i != 0) {
            if (i == 1) {
                list2 = (List) c45131.L$1;
                list = (List) c45131.L$0;
                ResultKt.throwOnFailure(objQueryProducts$query2);
            } else {
                if (i == 2) {
                    list4 = (List) c45131.L$1;
                    list3 = (List) c45131.L$0;
                    ResultKt.throwOnFailure(objQueryProducts$query2);
                    list5 = (List) objQueryProducts$query2;
                    c45131.L$0 = SpillingKt.nullOutSpilledVariable(list3);
                    c45131.L$1 = SpillingKt.nullOutSpilledVariable(list4);
                    c45131.L$2 = list5;
                    c45131.label = 3;
                    objQueryProducts$query = queryProducts$query(this, BillingClient.ProductType.SUBS, list4, c45131);
                    if (objQueryProducts$query != coroutine_suspended) {
                        objQueryProducts$query2 = objQueryProducts$query;
                        list6 = list5;
                    }
                    return coroutine_suspended;
                }
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                list6 = (List) c45131.L$2;
                ResultKt.throwOnFailure(objQueryProducts$query2);
            }
            List list7 = (List) objQueryProducts$query2;
            List list8 = list6;
            linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list8, 10)), 16));
            for (Object obj : list8) {
                String productId = ((ProductDetails) obj).getProductId();
                Intrinsics.checkNotNullExpressionValue(productId, "getProductId(...)");
                linkedHashMap.put(productId, obj);
            }
            List list9 = list7;
            linkedHashMap2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list9, 10)), 16));
            for (Object obj2 : list9) {
                String productId2 = ((ProductDetails) obj2).getProductId();
                Intrinsics.checkNotNullExpressionValue(productId2, "getProductId(...)");
                linkedHashMap2.put(productId2, obj2);
            }
            ProductCatalog productCatalog = new ProductCatalog(linkedHashMap, linkedHashMap2);
            this.productCatalog = productCatalog;
            return productCatalog;
        }
        ResultKt.throwOnFailure(objQueryProducts$query2);
        c45131.L$0 = list;
        c45131.L$1 = list2;
        c45131.label = 1;
        if (connect(c45131) != coroutine_suspended) {
        }
        return coroutine_suspended;
        c45131.L$0 = SpillingKt.nullOutSpilledVariable(list);
        c45131.L$1 = list2;
        c45131.label = 2;
        objQueryProducts$query2 = queryProducts$query(this, BillingClient.ProductType.INAPP, list, c45131);
        if (objQueryProducts$query2 != coroutine_suspended) {
            List<String> list10 = list2;
            list3 = list;
            list4 = list10;
            list5 = (List) objQueryProducts$query2;
            c45131.L$0 = SpillingKt.nullOutSpilledVariable(list3);
            c45131.L$1 = SpillingKt.nullOutSpilledVariable(list4);
            c45131.L$2 = list5;
            c45131.label = 3;
            objQueryProducts$query = queryProducts$query(this, BillingClient.ProductType.SUBS, list4, c45131);
            if (objQueryProducts$query != coroutine_suspended) {
                objQueryProducts$query2 = objQueryProducts$query;
                list6 = list5;
                List list11 = (List) objQueryProducts$query2;
                List list12 = list6;
                linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list12, 10)), 16));
                while (r8.hasNext()) {
                    String productId3 = ((ProductDetails) obj).getProductId();
                    Intrinsics.checkNotNullExpressionValue(productId3, "getProductId(...)");
                    linkedHashMap.put(productId3, obj);
                }
                List list13 = list11;
                linkedHashMap2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list13, 10)), 16));
                while (r8.hasNext()) {
                    String productId4 = ((ProductDetails) obj2).getProductId();
                    Intrinsics.checkNotNullExpressionValue(productId4, "getProductId(...)");
                    linkedHashMap2.put(productId4, obj2);
                }
                ProductCatalog productCatalog2 = new ProductCatalog(linkedHashMap, linkedHashMap2);
                this.productCatalog = productCatalog2;
                return productCatalog2;
            }
        }
        return coroutine_suspended;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public static final Object queryProducts$query(PlayBillingRepository playBillingRepository, String str, List<String> list, Continuation<? super List<ProductDetails>> continuation) {
        PlayBillingRepository$queryProducts$query$1 playBillingRepository$queryProducts$query$1;
        if (continuation instanceof PlayBillingRepository$queryProducts$query$1) {
            playBillingRepository$queryProducts$query$1 = (PlayBillingRepository$queryProducts$query$1) continuation;
            if ((playBillingRepository$queryProducts$query$1.label & Integer.MIN_VALUE) != 0) {
                playBillingRepository$queryProducts$query$1.label -= Integer.MIN_VALUE;
            } else {
                playBillingRepository$queryProducts$query$1 = new PlayBillingRepository$queryProducts$query$1(continuation);
            }
        } else {
            playBillingRepository$queryProducts$query$1 = new PlayBillingRepository$queryProducts$query$1(continuation);
        }
        Object objQueryProductDetails = playBillingRepository$queryProducts$query$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = playBillingRepository$queryProducts$query$1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objQueryProductDetails);
            if (list.isEmpty()) {
                return CollectionsKt.emptyList();
            }
            QueryProductDetailsParams.Builder builderNewBuilder = QueryProductDetailsParams.newBuilder();
            List<String> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductId((String) it.next()).setProductType(str).build());
            }
            QueryProductDetailsParams queryProductDetailsParamsBuild = builderNewBuilder.setProductList(arrayList).build();
            Intrinsics.checkNotNullExpressionValue(queryProductDetailsParamsBuild, "build(...)");
            BillingClient billingClient = playBillingRepository.billingClient;
            playBillingRepository$queryProducts$query$1.L$0 = playBillingRepository;
            playBillingRepository$queryProducts$query$1.L$1 = SpillingKt.nullOutSpilledVariable(str);
            playBillingRepository$queryProducts$query$1.L$2 = SpillingKt.nullOutSpilledVariable(list);
            playBillingRepository$queryProducts$query$1.L$3 = SpillingKt.nullOutSpilledVariable(queryProductDetailsParamsBuild);
            playBillingRepository$queryProducts$query$1.label = 1;
            objQueryProductDetails = BillingClientKotlinKt.queryProductDetails(billingClient, queryProductDetailsParamsBuild, playBillingRepository$queryProducts$query$1);
            if (objQueryProductDetails == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            playBillingRepository = (PlayBillingRepository) playBillingRepository$queryProducts$query$1.L$0;
            ResultKt.throwOnFailure(objQueryProductDetails);
        }
        ProductDetailsResult productDetailsResult = (ProductDetailsResult) objQueryProductDetails;
        if (productDetailsResult.getBillingResult().getResponseCode() != 0) {
            playBillingRepository._events.tryEmit(new BillingEvent.Error(productDetailsResult.getBillingResult().getResponseCode(), productDetailsResult.getBillingResult().getDebugMessage()));
        }
        List<ProductDetails> productDetailsList = productDetailsResult.getProductDetailsList();
        return productDetailsList == null ? CollectionsKt.emptyList() : productDetailsList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // fast.dic.dict.domain.billing.BillingRepository
    public Object purchase(Activity activity, String str, Continuation<? super Unit> continuation) {
        C45121 c45121;
        ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails;
        if (continuation instanceof C45121) {
            c45121 = (C45121) continuation;
            if ((c45121.label & Integer.MIN_VALUE) != 0) {
                c45121.label -= Integer.MIN_VALUE;
            } else {
                c45121 = new C45121(continuation);
            }
        } else {
            c45121 = new C45121(continuation);
        }
        Object obj = c45121.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c45121.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            c45121.L$0 = activity;
            c45121.L$1 = str;
            c45121.label = 1;
            if (connect(c45121) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) c45121.L$1;
            activity = (Activity) c45121.L$0;
            ResultKt.throwOnFailure(obj);
        }
        ProductDetails productDetails = this.productCatalog.getInapp().get(str);
        if (productDetails == null) {
            productDetails = this.productCatalog.getSubs().get(str);
        }
        if (productDetails == null) {
            this._events.tryEmit(new BillingEvent.Error(-1, "ProductDetails not loaded for " + str));
            return Unit.INSTANCE;
        }
        List<ProductDetails.SubscriptionOfferDetails> subscriptionOfferDetails2 = productDetails.getSubscriptionOfferDetails();
        String offerToken = (subscriptionOfferDetails2 == null || (subscriptionOfferDetails = (ProductDetails.SubscriptionOfferDetails) CollectionsKt.firstOrNull((List) subscriptionOfferDetails2)) == null) ? null : subscriptionOfferDetails.getOfferToken();
        BillingFlowParams.ProductDetailsParams.Builder productDetails2 = BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails);
        if (offerToken != null) {
            productDetails2.setOfferToken(offerToken);
        }
        BillingFlowParams.ProductDetailsParams productDetailsParamsBuild = productDetails2.build();
        Intrinsics.checkNotNullExpressionValue(productDetailsParamsBuild, "build(...)");
        BillingFlowParams billingFlowParamsBuild = BillingFlowParams.newBuilder().setProductDetailsParamsList(CollectionsKt.listOf(productDetailsParamsBuild)).build();
        Intrinsics.checkNotNullExpressionValue(billingFlowParamsBuild, "build(...)");
        BillingResult billingResultLaunchBillingFlow = this.billingClient.launchBillingFlow(activity, billingFlowParamsBuild);
        Intrinsics.checkNotNullExpressionValue(billingResultLaunchBillingFlow, "launchBillingFlow(...)");
        if (billingResultLaunchBillingFlow.getResponseCode() != 0) {
            this._events.tryEmit(new BillingEvent.Error(billingResultLaunchBillingFlow.getResponseCode(), billingResultLaunchBillingFlow.getDebugMessage()));
        }
        return Unit.INSTANCE;
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> purchases) {
        List<Purchase> list;
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        if (billingResult.getResponseCode() != 0 || (list = purchases) == null || list.isEmpty()) {
            if (billingResult.getResponseCode() != 1) {
                this._events.tryEmit(new BillingEvent.Error(billingResult.getResponseCode(), billingResult.getDebugMessage()));
                return;
            }
            return;
        }
        List<Purchase> list2 = purchases;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(toItem((Purchase) it.next()));
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this._events.tryEmit(new BillingEvent.PurchaseCompleted((PurchasedItem) it2.next()));
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
    
        if (r7 == r1) goto L21;
     */
    @Override // fast.dic.dict.domain.billing.BillingRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object acknowledgeIfNeeded(java.lang.String r6, kotlin.coroutines.Continuation<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof fast.dic.dict.data.billing.PlayBillingRepository.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r7
            fast.dic.dict.data.billing.PlayBillingRepository$acknowledgeIfNeeded$1 r0 = (fast.dic.dict.data.billing.PlayBillingRepository.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            fast.dic.dict.data.billing.PlayBillingRepository$acknowledgeIfNeeded$1 r0 = new fast.dic.dict.data.billing.PlayBillingRepository$acknowledgeIfNeeded$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L45
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r6 = r0.L$1
            com.android.billingclient.api.AcknowledgePurchaseParams r6 = (com.android.billingclient.api.AcknowledgePurchaseParams) r6
            java.lang.Object r6 = r0.L$0
            java.lang.String r6 = (java.lang.String) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L7b
        L35:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3d:
            java.lang.Object r6 = r0.L$0
            java.lang.String r6 = (java.lang.String) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L53
        L45:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r7 = r5.connect(r0)
            if (r7 != r1) goto L53
            goto L7a
        L53:
            com.android.billingclient.api.AcknowledgePurchaseParams$Builder r7 = com.android.billingclient.api.AcknowledgePurchaseParams.newBuilder()
            com.android.billingclient.api.AcknowledgePurchaseParams$Builder r7 = r7.setPurchaseToken(r6)
            com.android.billingclient.api.AcknowledgePurchaseParams r7 = r7.build()
            java.lang.String r2 = "build(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r2)
            com.android.billingclient.api.BillingClient r2 = r5.billingClient
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)
            r0.L$0 = r6
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r7 = com.android.billingclient.api.BillingClientKotlinKt.acknowledgePurchase(r2, r7, r0)
            if (r7 != r1) goto L7b
        L7a:
            return r1
        L7b:
            com.android.billingclient.api.BillingResult r7 = (com.android.billingclient.api.BillingResult) r7
            int r6 = r7.getResponseCode()
            if (r6 != 0) goto L84
            goto L85
        L84:
            r4 = 0
        L85:
            if (r4 != 0) goto L99
            kotlinx.coroutines.flow.MutableStateFlow<fast.dic.dict.domain.billing.BillingEvent> r5 = r5._events
            fast.dic.dict.domain.billing.BillingEvent$Error r6 = new fast.dic.dict.domain.billing.BillingEvent$Error
            int r0 = r7.getResponseCode()
            java.lang.String r7 = r7.getDebugMessage()
            r6.<init>(r0, r7)
            r5.tryEmit(r6)
        L99:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: fast.dic.dict.data.billing.PlayBillingRepository.acknowledgeIfNeeded(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
    
        if (r7 == r1) goto L21;
     */
    @Override // fast.dic.dict.domain.billing.BillingRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object consume(java.lang.String r6, kotlin.coroutines.Continuation<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof fast.dic.dict.data.billing.PlayBillingRepository.C45071
            if (r0 == 0) goto L14
            r0 = r7
            fast.dic.dict.data.billing.PlayBillingRepository$consume$1 r0 = (fast.dic.dict.data.billing.PlayBillingRepository.C45071) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            fast.dic.dict.data.billing.PlayBillingRepository$consume$1 r0 = new fast.dic.dict.data.billing.PlayBillingRepository$consume$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L45
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r6 = r0.L$1
            com.android.billingclient.api.ConsumeParams r6 = (com.android.billingclient.api.ConsumeParams) r6
            java.lang.Object r6 = r0.L$0
            java.lang.String r6 = (java.lang.String) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L7b
        L35:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3d:
            java.lang.Object r6 = r0.L$0
            java.lang.String r6 = (java.lang.String) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L53
        L45:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r7 = r5.connect(r0)
            if (r7 != r1) goto L53
            goto L7a
        L53:
            com.android.billingclient.api.ConsumeParams$Builder r7 = com.android.billingclient.api.ConsumeParams.newBuilder()
            com.android.billingclient.api.ConsumeParams$Builder r7 = r7.setPurchaseToken(r6)
            com.android.billingclient.api.ConsumeParams r7 = r7.build()
            java.lang.String r2 = "build(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r2)
            com.android.billingclient.api.BillingClient r2 = r5.billingClient
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)
            r0.L$0 = r6
            java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r7 = com.android.billingclient.api.BillingClientKotlinKt.consumePurchase(r2, r7, r0)
            if (r7 != r1) goto L7b
        L7a:
            return r1
        L7b:
            com.android.billingclient.api.ConsumeResult r7 = (com.android.billingclient.api.ConsumeResult) r7
            com.android.billingclient.api.BillingResult r6 = r7.getBillingResult()
            int r6 = r6.getResponseCode()
            if (r6 != 0) goto L88
            goto L89
        L88:
            r4 = 0
        L89:
            kotlinx.coroutines.flow.MutableStateFlow<fast.dic.dict.domain.billing.BillingEvent> r5 = r5._events
            if (r4 == 0) goto L9e
            fast.dic.dict.domain.billing.BillingEvent$PurchaseConsumed r6 = new fast.dic.dict.domain.billing.BillingEvent$PurchaseConsumed
            java.lang.String r7 = r7.getPurchaseToken()
            if (r7 != 0) goto L97
            java.lang.String r7 = ""
        L97:
            r6.<init>(r7)
            r5.tryEmit(r6)
            goto Lb6
        L9e:
            fast.dic.dict.domain.billing.BillingEvent$Error r6 = new fast.dic.dict.domain.billing.BillingEvent$Error
            com.android.billingclient.api.BillingResult r0 = r7.getBillingResult()
            int r0 = r0.getResponseCode()
            com.android.billingclient.api.BillingResult r7 = r7.getBillingResult()
            java.lang.String r7 = r7.getDebugMessage()
            r6.<init>(r0, r7)
            r5.tryEmit(r6)
        Lb6:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: fast.dic.dict.data.billing.PlayBillingRepository.consume(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0076  */
    /* JADX WARN: Code duplicated, block: B:30:0x0099  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c9 A[LOOP:0: B:35:0x00c3->B:37:0x00c9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:40:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // fast.dic.dict.domain.billing.BillingRepository
    public Object getActivePurchases(Continuation<? super List<PurchasedItem>> continuation) {
        C45081 c45081;
        List<Purchase> purchasesList;
        Object objQueryPurchasesAsync;
        List<Purchase> list;
        List<Purchase> purchasesList2;
        ArrayList arrayList;
        Iterator it;
        ArrayList arrayList2;
        if (continuation instanceof C45081) {
            c45081 = (C45081) continuation;
            if ((c45081.label & Integer.MIN_VALUE) != 0) {
                c45081.label -= Integer.MIN_VALUE;
            } else {
                c45081 = new C45081(continuation);
            }
        } else {
            c45081 = new C45081(continuation);
        }
        Object objQueryPurchasesAsync2 = c45081.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c45081.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objQueryPurchasesAsync2);
            c45081.label = 1;
            if (connect(c45081) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i == 1) {
            ResultKt.throwOnFailure(objQueryPurchasesAsync2);
        } else {
            if (i == 2) {
                ResultKt.throwOnFailure(objQueryPurchasesAsync2);
                purchasesList = ((PurchasesResult) objQueryPurchasesAsync2).getPurchasesList();
                if (purchasesList == null) {
                    purchasesList = CollectionsKt.emptyList();
                }
                BillingClient billingClient = this.billingClient;
                QueryPurchasesParams queryPurchasesParamsBuild = QueryPurchasesParams.newBuilder().setProductType(BillingClient.ProductType.SUBS).build();
                Intrinsics.checkNotNullExpressionValue(queryPurchasesParamsBuild, "build(...)");
                c45081.L$0 = purchasesList;
                c45081.label = 3;
                objQueryPurchasesAsync = BillingClientKotlinKt.queryPurchasesAsync(billingClient, queryPurchasesParamsBuild, c45081);
                if (objQueryPurchasesAsync != coroutine_suspended) {
                    list = purchasesList;
                    objQueryPurchasesAsync2 = objQueryPurchasesAsync;
                }
                return coroutine_suspended;
            }
            if (i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list = (List) c45081.L$0;
            ResultKt.throwOnFailure(objQueryPurchasesAsync2);
        }
        purchasesList2 = ((PurchasesResult) objQueryPurchasesAsync2).getPurchasesList();
        if (purchasesList2 == null) {
            purchasesList2 = CollectionsKt.emptyList();
        }
        List listPlus = CollectionsKt.plus((Collection) list, (Iterable) purchasesList2);
        arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPlus, 10));
        it = listPlus.iterator();
        while (it.hasNext()) {
            arrayList.add(toItem((Purchase) it.next()));
        }
        arrayList2 = arrayList;
        if (!arrayList2.isEmpty()) {
            this._events.tryEmit(new BillingEvent.PurchaseRestored(arrayList2));
        }
        return arrayList2;
        BillingClient billingClient2 = this.billingClient;
        QueryPurchasesParams queryPurchasesParamsBuild2 = QueryPurchasesParams.newBuilder().setProductType(BillingClient.ProductType.INAPP).build();
        Intrinsics.checkNotNullExpressionValue(queryPurchasesParamsBuild2, "build(...)");
        c45081.label = 2;
        objQueryPurchasesAsync2 = BillingClientKotlinKt.queryPurchasesAsync(billingClient2, queryPurchasesParamsBuild2, c45081);
        if (objQueryPurchasesAsync2 != coroutine_suspended) {
            purchasesList = ((PurchasesResult) objQueryPurchasesAsync2).getPurchasesList();
            if (purchasesList == null) {
                purchasesList = CollectionsKt.emptyList();
            }
            BillingClient billingClient3 = this.billingClient;
            QueryPurchasesParams queryPurchasesParamsBuild3 = QueryPurchasesParams.newBuilder().setProductType(BillingClient.ProductType.SUBS).build();
            Intrinsics.checkNotNullExpressionValue(queryPurchasesParamsBuild3, "build(...)");
            c45081.L$0 = purchasesList;
            c45081.label = 3;
            objQueryPurchasesAsync = BillingClientKotlinKt.queryPurchasesAsync(billingClient3, queryPurchasesParamsBuild3, c45081);
            if (objQueryPurchasesAsync != coroutine_suspended) {
                list = purchasesList;
                objQueryPurchasesAsync2 = objQueryPurchasesAsync;
                purchasesList2 = ((PurchasesResult) objQueryPurchasesAsync2).getPurchasesList();
                if (purchasesList2 == null) {
                    purchasesList2 = CollectionsKt.emptyList();
                }
                List listPlus2 = CollectionsKt.plus((Collection) list, (Iterable) purchasesList2);
                arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPlus2, 10));
                it = listPlus2.iterator();
                while (it.hasNext()) {
                    arrayList.add(toItem((Purchase) it.next()));
                }
                arrayList2 = arrayList;
                if (!arrayList2.isEmpty()) {
                    this._events.tryEmit(new BillingEvent.PurchaseRestored(arrayList2));
                }
                return arrayList2;
            }
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // fast.dic.dict.domain.billing.BillingRepository
    public Object isPurchased(String str, Continuation<? super Boolean> continuation) {
        C45111 c45111;
        if (continuation instanceof C45111) {
            c45111 = (C45111) continuation;
            if ((c45111.label & Integer.MIN_VALUE) != 0) {
                c45111.label -= Integer.MIN_VALUE;
            } else {
                c45111 = new C45111(continuation);
            }
        } else {
            c45111 = new C45111(continuation);
        }
        Object activePurchases = c45111.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c45111.label;
        boolean z = true;
        if (i == 0) {
            ResultKt.throwOnFailure(activePurchases);
            c45111.L$0 = str;
            c45111.label = 1;
            activePurchases = getActivePurchases(c45111);
            if (activePurchases == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) c45111.L$0;
            ResultKt.throwOnFailure(activePurchases);
        }
        Iterable iterable = (Iterable) activePurchases;
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            z = false;
        } else {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((PurchasedItem) it.next()).getProductId(), str)) {
                }
            }
            z = false;
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // fast.dic.dict.domain.billing.BillingRepository
    public Object getPurchaseListingDetailsAsync(String str, Continuation<? super PurchaseListingDetails> continuation) {
        C45101 c45101;
        if (continuation instanceof C45101) {
            c45101 = (C45101) continuation;
            if ((c45101.label & Integer.MIN_VALUE) != 0) {
                c45101.label -= Integer.MIN_VALUE;
            } else {
                c45101 = new C45101(continuation);
            }
        } else {
            c45101 = new C45101(continuation);
        }
        Object obj = c45101.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c45101.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (!this.productCatalog.getInapp().containsKey(str) && !this.productCatalog.getSubs().containsKey(str)) {
                List<String> listListOf = CollectionsKt.listOf(str);
                List<String> listListOf2 = CollectionsKt.listOf(str);
                c45101.L$0 = str;
                c45101.label = 1;
                if (queryProducts(listListOf, listListOf2, c45101) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) c45101.L$0;
            ResultKt.throwOnFailure(obj);
        }
        ProductDetails productDetails = this.productCatalog.getInapp().get(str);
        if (productDetails == null && (productDetails = this.productCatalog.getSubs().get(str)) == null) {
            return null;
        }
        return toListing(productDetails);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // fast.dic.dict.domain.billing.BillingRepository
    public Object getPurchaseListingDetailsAsync(List<String> list, List<String> list2, Continuation<? super List<PurchaseListingDetails>> continuation) {
        AnonymousClass2 anonymousClass2;
        if (continuation instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) continuation;
            if ((anonymousClass2.label & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(continuation);
            }
        } else {
            anonymousClass2 = new AnonymousClass2(continuation);
        }
        Object obj = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            anonymousClass2.L$0 = list;
            anonymousClass2.L$1 = list2;
            anonymousClass2.label = 1;
            if (queryProducts(list, list2, anonymousClass2) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            list2 = (List) anonymousClass2.L$1;
            list = (List) anonymousClass2.L$0;
            ResultKt.throwOnFailure(obj);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ProductDetails productDetails = this.productCatalog.getInapp().get((String) it.next());
            PurchaseListingDetails listing = productDetails != null ? toListing(productDetails) : null;
            if (listing != null) {
                arrayList.add(listing);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList();
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            ProductDetails productDetails2 = this.productCatalog.getSubs().get((String) it2.next());
            PurchaseListingDetails listing2 = productDetails2 != null ? toListing(productDetails2) : null;
            if (listing2 != null) {
                arrayList3.add(listing2);
            }
        }
        return CollectionsKt.plus((Collection) arrayList2, (Iterable) arrayList3);
    }

    private final boolean isBillingConnected() {
        if (!this.billingClient.isReady()) {
            return false;
        }
        BillingResult billingResultIsFeatureSupported = this.billingClient.isFeatureSupported(BillingClient.FeatureType.SUBSCRIPTIONS);
        Intrinsics.checkNotNullExpressionValue(billingResultIsFeatureSupported, "isFeatureSupported(...)");
        return billingResultIsFeatureSupported.getResponseCode() == 0;
    }

    public final boolean isIabServiceAvailable() {
        try {
            this.appContext.getPackageManager().getPackageInfo("com.android.vending", 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getPurchaseInfo(String str, Continuation<? super PurchasedItem> continuation) {
        C45091 c45091;
        if (continuation instanceof C45091) {
            c45091 = (C45091) continuation;
            if ((c45091.label & Integer.MIN_VALUE) != 0) {
                c45091.label -= Integer.MIN_VALUE;
            } else {
                c45091 = new C45091(continuation);
            }
        } else {
            c45091 = new C45091(continuation);
        }
        Object activePurchases = c45091.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c45091.label;
        if (i == 0) {
            ResultKt.throwOnFailure(activePurchases);
            c45091.L$0 = str;
            c45091.label = 1;
            activePurchases = getActivePurchases(c45091);
            if (activePurchases == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) c45091.L$0;
            ResultKt.throwOnFailure(activePurchases);
        }
        for (Object obj : (List) activePurchases) {
            if (Intrinsics.areEqual(((PurchasedItem) obj).getProductId(), str)) {
                return obj;
            }
        }
        return null;
    }

    private final PurchasedItem toItem(Purchase purchase) {
        List<String> products = purchase.getProducts();
        Intrinsics.checkNotNullExpressionValue(products, "getProducts(...)");
        String str = (String) CollectionsKt.firstOrNull((List) products);
        if (str == null) {
            str = "";
        }
        String purchaseToken = purchase.getPurchaseToken();
        Intrinsics.checkNotNullExpressionValue(purchaseToken, "getPurchaseToken(...)");
        return new PurchasedItem(str, purchaseToken, purchase.isAcknowledged(), purchase.isAutoRenewing(), purchase.getPurchaseTime());
    }

    private final PurchaseListingDetails toListing(ProductDetails productDetails) {
        ProductDetails.PricingPhase pricingPhase;
        ProductDetails.PricingPhase pricingPhase2;
        ProductDetails.PricingPhases pricingPhases;
        List<ProductDetails.PricingPhase> pricingPhaseList;
        Object next;
        ProductDetails.PricingPhases pricingPhases2;
        List<ProductDetails.PricingPhase> pricingPhaseList2;
        Object next2;
        ProductDetails.PricingPhases pricingPhases3;
        List<ProductDetails.PricingPhase> pricingPhaseList3;
        if (Intrinsics.areEqual(productDetails.getProductType(), BillingClient.ProductType.INAPP)) {
            ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
            String productId = productDetails.getProductId();
            Intrinsics.checkNotNullExpressionValue(productId, "getProductId(...)");
            String title = productDetails.getTitle();
            Intrinsics.checkNotNullExpressionValue(title, "getTitle(...)");
            String description = productDetails.getDescription();
            Intrinsics.checkNotNullExpressionValue(description, "getDescription(...)");
            return new PurchaseListingDetails(productId, title, description, oneTimePurchaseOfferDetails != null ? oneTimePurchaseOfferDetails.getFormattedPrice() : null, oneTimePurchaseOfferDetails != null ? Long.valueOf(oneTimePurchaseOfferDetails.getPriceAmountMicros()) : null, oneTimePurchaseOfferDetails != null ? oneTimePurchaseOfferDetails.getPriceCurrencyCode() : null, null);
        }
        ProductDetails.SubscriptionOfferDetails subscriptionOfferDetailsPickBestOffer = pickBestOffer(productDetails.getSubscriptionOfferDetails());
        ProductDetails.PricingPhase pricingPhase3 = (subscriptionOfferDetailsPickBestOffer == null || (pricingPhases3 = subscriptionOfferDetailsPickBestOffer.getPricingPhases()) == null || (pricingPhaseList3 = pricingPhases3.getPricingPhaseList()) == null) ? null : (ProductDetails.PricingPhase) CollectionsKt.lastOrNull((List) pricingPhaseList3);
        if (subscriptionOfferDetailsPickBestOffer == null || (pricingPhases2 = subscriptionOfferDetailsPickBestOffer.getPricingPhases()) == null || (pricingPhaseList2 = pricingPhases2.getPricingPhaseList()) == null) {
            pricingPhase = null;
        } else {
            Iterator<T> it = pricingPhaseList2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it.next();
                ProductDetails.PricingPhase pricingPhase4 = (ProductDetails.PricingPhase) next2;
                if (pricingPhase4.getPriceAmountMicros() == 0 && pricingPhase4.getBillingCycleCount() > 0) {
                    break;
                }
            }
            pricingPhase = (ProductDetails.PricingPhase) next2;
        }
        if (subscriptionOfferDetailsPickBestOffer == null || (pricingPhases = subscriptionOfferDetailsPickBestOffer.getPricingPhases()) == null || (pricingPhaseList = pricingPhases.getPricingPhaseList()) == null) {
            pricingPhase2 = null;
        } else {
            Iterator<T> it2 = pricingPhaseList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                ProductDetails.PricingPhase pricingPhase5 = (ProductDetails.PricingPhase) next;
                if (pricingPhase5.getPriceAmountMicros() > 0 && pricingPhase5.getBillingCycleCount() > 0) {
                    break;
                }
            }
            pricingPhase2 = (ProductDetails.PricingPhase) next;
        }
        String productId2 = productDetails.getProductId();
        Intrinsics.checkNotNullExpressionValue(productId2, "getProductId(...)");
        String title2 = productDetails.getTitle();
        Intrinsics.checkNotNullExpressionValue(title2, "getTitle(...)");
        String description2 = productDetails.getDescription();
        Intrinsics.checkNotNullExpressionValue(description2, "getDescription(...)");
        return new PurchaseListingDetails(productId2, title2, description2, pricingPhase3 != null ? pricingPhase3.getFormattedPrice() : null, pricingPhase3 != null ? Long.valueOf(pricingPhase3.getPriceAmountMicros()) : null, pricingPhase3 != null ? pricingPhase3.getPriceCurrencyCode() : null, new SubscriptionInfo(subscriptionOfferDetailsPickBestOffer != null ? subscriptionOfferDetailsPickBestOffer.getBasePlanId() : null, subscriptionOfferDetailsPickBestOffer != null ? subscriptionOfferDetailsPickBestOffer.getOfferToken() : null, pricingPhase3 != null ? pricingPhase3.getBillingPeriod() : null, pricingPhase3 != null ? pricingPhase3.getFormattedPrice() : null, pricingPhase3 != null ? Long.valueOf(pricingPhase3.getPriceAmountMicros()) : null, pricingPhase3 != null ? pricingPhase3.getPriceCurrencyCode() : null, pricingPhase != null ? pricingPhase.getBillingPeriod() : null, pricingPhase2 != null ? new IntroPriceInfo(pricingPhase2.getFormattedPrice(), Long.valueOf(pricingPhase2.getPriceAmountMicros()), pricingPhase2.getPriceCurrencyCode(), pricingPhase2.getBillingPeriod(), pricingPhase2.getBillingCycleCount()) : null));
    }

    private final ProductDetails.SubscriptionOfferDetails pickBestOffer(List<ProductDetails.SubscriptionOfferDetails> offers) {
        Object next;
        Object next2;
        List<ProductDetails.SubscriptionOfferDetails> list = offers;
        Object next3 = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        List<ProductDetails.SubscriptionOfferDetails> list2 = offers;
        Iterator<T> it = list2.iterator();
        loop0: while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            List<ProductDetails.PricingPhase> pricingPhaseList = ((ProductDetails.SubscriptionOfferDetails) next).getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList, "getPricingPhaseList(...)");
            List<ProductDetails.PricingPhase> list3 = pricingPhaseList;
            if (!(list3 instanceof Collection) || !list3.isEmpty()) {
                Iterator<T> it2 = list3.iterator();
                while (it2.hasNext()) {
                    if (((ProductDetails.PricingPhase) it2.next()).getPriceAmountMicros() == 0) {
                        break loop0;
                    }
                }
            }
        }
        ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails = (ProductDetails.SubscriptionOfferDetails) next;
        if (subscriptionOfferDetails != null) {
            return subscriptionOfferDetails;
        }
        Iterator<T> it3 = list2.iterator();
        loop2: while (true) {
            if (!it3.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it3.next();
            List<ProductDetails.PricingPhase> pricingPhaseList2 = ((ProductDetails.SubscriptionOfferDetails) next2).getPricingPhases().getPricingPhaseList();
            Intrinsics.checkNotNullExpressionValue(pricingPhaseList2, "getPricingPhaseList(...)");
            List<ProductDetails.PricingPhase> list4 = pricingPhaseList2;
            if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                for (ProductDetails.PricingPhase pricingPhase : list4) {
                    if (pricingPhase.getPriceAmountMicros() > 0 && pricingPhase.getBillingCycleCount() > 0) {
                        break loop2;
                    }
                }
            }
        }
        ProductDetails.SubscriptionOfferDetails subscriptionOfferDetails2 = (ProductDetails.SubscriptionOfferDetails) next2;
        if (subscriptionOfferDetails2 != null) {
            return subscriptionOfferDetails2;
        }
        Iterator<T> it4 = list2.iterator();
        if (it4.hasNext()) {
            next3 = it4.next();
            if (it4.hasNext()) {
                List<ProductDetails.PricingPhase> pricingPhaseList3 = ((ProductDetails.SubscriptionOfferDetails) next3).getPricingPhases().getPricingPhaseList();
                Intrinsics.checkNotNullExpressionValue(pricingPhaseList3, "getPricingPhaseList(...)");
                ProductDetails.PricingPhase pricingPhase2 = (ProductDetails.PricingPhase) CollectionsKt.lastOrNull((List) pricingPhaseList3);
                long priceAmountMicros = pricingPhase2 != null ? pricingPhase2.getPriceAmountMicros() : Long.MAX_VALUE;
                do {
                    Object next4 = it4.next();
                    List<ProductDetails.PricingPhase> pricingPhaseList4 = ((ProductDetails.SubscriptionOfferDetails) next4).getPricingPhases().getPricingPhaseList();
                    Intrinsics.checkNotNullExpressionValue(pricingPhaseList4, "getPricingPhaseList(...)");
                    ProductDetails.PricingPhase pricingPhase3 = (ProductDetails.PricingPhase) CollectionsKt.lastOrNull((List) pricingPhaseList4);
                    long priceAmountMicros2 = pricingPhase3 != null ? pricingPhase3.getPriceAmountMicros() : Long.MAX_VALUE;
                    if (priceAmountMicros > priceAmountMicros2) {
                        next3 = next4;
                        priceAmountMicros = priceAmountMicros2;
                    }
                } while (it4.hasNext());
            }
        }
        return (ProductDetails.SubscriptionOfferDetails) next3;
    }
}
