package fast.dic.dict.viewmodels.fragments;

import android.app.Activity;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.media3.muxer.WebmConstants;
import com.applovin.sdk.AppLovinEventTypes;
import com.parse.ParseException;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.data.billing.PlayBillingRepository;
import fast.dic.dict.domain.billing.BillingRepository;
import fast.dic.dict.domain.billing.PurchaseListingDetails;
import fast.dic.dict.domain.billing.PurchasedItem;
import fast.dic.dict.utils.LoggerKt;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: GooglePaymentViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0011J9\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\b2)\u0010\u0017\u001a%\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u00110\u0018JI\u0010\u0015\u001a\u00020\u00112\u0016\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\b0\u001fj\b\u0012\u0004\u0012\u00020\b` 2)\u0010\u0017\u001a%\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u00110\u0018J\u0016\u0010!\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\"\u001a\u00020#J$\u0010$\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\b2\u0014\u0010%\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020\u00110\u0018J\u000e\u0010'\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fÊ\u0001\u0002\b)¨\u0006("}, d2 = {"Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;", "Landroidx/lifecycle/ViewModel;", "billingRepository", "Lfast/dic/dict/data/billing/PlayBillingRepository;", "<init>", "(Lfast/dic/dict/data/billing/PlayBillingRepository;)V", "Ljavax/inject/Inject;", "selectedProductForGoogle", "", "_googlePlayState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;", "googlePlayState", "Lkotlinx/coroutines/flow/StateFlow;", "getGooglePlayState", "()Lkotlinx/coroutines/flow/StateFlow;", "destroyGoogleConnection", "", "isIabServiceAvailable", "", "initializeGooglePlayConnection", "getGoogleProducts", "productId", "onCompletion", "Lkotlin/Function1;", "", "Lfast/dic/dict/domain/billing/PurchaseListingDetails;", "Lkotlin/ParameterName;", "name", "products", "productIds", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "purchaseFromGooglePlay", Names.CONTEXT, "Landroid/app/Activity;", "restorePurchaseFromGooglePlay", "onSuccess", "Lfast/dic/dict/domain/billing/PurchasedItem;", "consumeGooglePlayProduct", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class GooglePaymentViewModel extends ViewModel {
    private MutableStateFlow<GooglePlayPaymentMethodState> _googlePlayState;
    private final PlayBillingRepository billingRepository;
    private final StateFlow<GooglePlayPaymentMethodState> googlePlayState;
    private String selectedProductForGoogle;

    @Inject
    public GooglePaymentViewModel(PlayBillingRepository billingRepository) {
        Intrinsics.checkNotNullParameter(billingRepository, "billingRepository");
        this.billingRepository = billingRepository;
        MutableStateFlow<GooglePlayPaymentMethodState> MutableStateFlow = StateFlowKt.MutableStateFlow(GooglePlayPaymentMethodState.Initializing.INSTANCE);
        this._googlePlayState = MutableStateFlow;
        this.googlePlayState = FlowKt.asStateFlow(MutableStateFlow);
    }

    public final StateFlow<GooglePlayPaymentMethodState> getGooglePlayState() {
        return this.googlePlayState;
    }

    /* JADX INFO: renamed from: fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$destroyGoogleConnection$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$destroyGoogleConnection$1", f = "GooglePaymentViewModel.kt", i = {}, l = {30}, m = "invokeSuspend", n = {}, nl = {31}, s = {}, v = 2)
    static final class C45411 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C45411(Continuation<? super C45411> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GooglePaymentViewModel.this.new C45411(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45411) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (GooglePaymentViewModel.this.billingRepository.disconnect(this) == coroutine_suspended) {
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
    }

    public final void destroyGoogleConnection() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45411(null), 3, null);
    }

    public final boolean isIabServiceAvailable() {
        return this.billingRepository.isIabServiceAvailable();
    }

    public final void initializeGooglePlayConnection() {
        boolean zIsIabServiceAvailable = isIabServiceAvailable();
        MutableStateFlow<GooglePlayPaymentMethodState> mutableStateFlow = this._googlePlayState;
        if (!zIsIabServiceAvailable) {
            mutableStateFlow.setValue(new GooglePlayPaymentMethodState.InitialError("Google Play has not found", 404));
        } else {
            mutableStateFlow.setValue(GooglePlayPaymentMethodState.Initializing.INSTANCE);
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45431(null), 3, null);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$initializeGooglePlayConnection$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$initializeGooglePlayConnection$1", f = "GooglePaymentViewModel.kt", i = {}, l = {48, 49}, m = "invokeSuspend", n = {}, nl = {49, 127}, s = {}, v = 2)
    static final class C45431 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C45431(Continuation<? super C45431> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GooglePaymentViewModel.this.new C45431(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45431) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x004f, code lost:
        
            if (r5.collect(new fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.C45431.C14281<>(), r4) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r4.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r5)
                goto L52
            L12:
                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                r4.<init>(r5)
                throw r4
            L1a:
                kotlin.ResultKt.throwOnFailure(r5)
                goto L33
            L1e:
                kotlin.ResultKt.throwOnFailure(r5)
                fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel r5 = fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.this
                fast.dic.dict.data.billing.PlayBillingRepository r5 = fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.access$getBillingRepository$p(r5)
                r1 = r4
                kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                r4.label = r3
                java.lang.Object r5 = r5.connect(r1)
                if (r5 != r0) goto L33
                goto L51
            L33:
                fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel r5 = fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.this
                fast.dic.dict.data.billing.PlayBillingRepository r5 = fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.access$getBillingRepository$p(r5)
                kotlinx.coroutines.flow.Flow r5 = r5.getEvents()
                fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$initializeGooglePlayConnection$1$1 r1 = new fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$initializeGooglePlayConnection$1$1
                fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel r3 = fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.this
                r1.<init>()
                kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
                r3 = r4
                kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
                r4.label = r2
                java.lang.Object r4 = r5.collect(r1, r3)
                if (r4 != r0) goto L52
            L51:
                return r0
            L52:
                kotlin.Unit r4 = kotlin.Unit.INSTANCE
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.C45431.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void getGoogleProducts(String productId, Function1<? super List<PurchaseListingDetails>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        getGoogleProducts(CollectionsKt.arrayListOf(productId), onCompletion);
    }

    /* JADX INFO: renamed from: fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$getGoogleProducts$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$getGoogleProducts$1", f = "GooglePaymentViewModel.kt", i = {}, l = {ParseException.VALIDATION_ERROR}, m = "invokeSuspend", n = {}, nl = {143}, s = {}, v = 2)
    static final class C45421 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<List<PurchaseListingDetails>, Unit> $onCompletion;
        final /* synthetic */ ArrayList<String> $productIds;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C45421(ArrayList<String> arrayList, Function1<? super List<PurchaseListingDetails>, Unit> function1, Continuation<? super C45421> continuation) {
            super(2, continuation);
            this.$productIds = arrayList;
            this.$onCompletion = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GooglePaymentViewModel.this.new C45421(this.$productIds, this.$onCompletion, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45421) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = BillingRepository.getPurchaseListingDetailsAsync$default(GooglePaymentViewModel.this.billingRepository, this.$productIds, null, this, 2, null);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            List<PurchaseListingDetails> list = (List) obj;
            boolean zIsEmpty = list.isEmpty();
            Function1<List<PurchaseListingDetails>, Unit> function1 = this.$onCompletion;
            if (zIsEmpty) {
                function1.invoke(null);
                return Unit.INSTANCE;
            }
            function1.invoke(list);
            return Unit.INSTANCE;
        }
    }

    public final void getGoogleProducts(ArrayList<String> productIds, Function1<? super List<PurchaseListingDetails>, Unit> onCompletion) {
        Intrinsics.checkNotNullParameter(productIds, "productIds");
        Intrinsics.checkNotNullParameter(onCompletion, "onCompletion");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45421(productIds, onCompletion, null), 3, null);
    }

    public final boolean purchaseFromGooglePlay(String productId, Activity context) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(context, "context");
        this.selectedProductForGoogle = productId;
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45441(context, productId, null), 3, null);
        return true;
    }

    /* JADX INFO: renamed from: fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$purchaseFromGooglePlay$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$purchaseFromGooglePlay$1", f = "GooglePaymentViewModel.kt", i = {}, l = {WebmConstants.MkvEbmlElement.FLAG_LACING}, m = "invokeSuspend", n = {}, nl = {157}, s = {}, v = 2)
    static final class C45441 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Activity $context;
        final /* synthetic */ String $productId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45441(Activity activity, String str, Continuation<? super C45441> continuation) {
            super(2, continuation);
            this.$context = activity;
            this.$productId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GooglePaymentViewModel.this.new C45441(this.$context, this.$productId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45441) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = GooglePaymentViewModel.this.billingRepository.purchase(this.$context, this.$productId, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            LoggerKt.getLogger().debug("Google IAP: purchase state = " + ((Unit) obj), new Object[0]);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$restorePurchaseFromGooglePlay$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$restorePurchaseFromGooglePlay$1", f = "GooglePaymentViewModel.kt", i = {}, l = {WebmConstants.MkvEbmlElement.BLOCK_MORE}, m = "invokeSuspend", n = {}, nl = {167}, s = {}, v = 2)
    static final class C45451 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<PurchasedItem, Unit> $onSuccess;
        final /* synthetic */ String $productId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C45451(String str, Function1<? super PurchasedItem, Unit> function1, Continuation<? super C45451> continuation) {
            super(2, continuation);
            this.$productId = str;
            this.$onSuccess = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GooglePaymentViewModel.this.new C45451(this.$productId, this.$onSuccess, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45451) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = GooglePaymentViewModel.this.billingRepository.getPurchaseInfo(this.$productId, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            PurchasedItem purchasedItem = (PurchasedItem) obj;
            Function1<PurchasedItem, Unit> function1 = this.$onSuccess;
            if (purchasedItem == null) {
                function1.invoke(null);
                return Unit.INSTANCE;
            }
            function1.invoke(purchasedItem);
            return Unit.INSTANCE;
        }
    }

    public final void restorePurchaseFromGooglePlay(String productId, Function1<? super PurchasedItem, Unit> onSuccess) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45451(productId, onSuccess, null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$consumeGooglePlayProduct$1, reason: invalid class name */
    /* JADX INFO: compiled from: GooglePaymentViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$consumeGooglePlayProduct$1", f = "GooglePaymentViewModel.kt", i = {1}, l = {178, 182}, m = "invokeSuspend", n = {AppLovinEventTypes.USER_VIEWED_PRODUCT}, nl = {WebmConstants.MkvEbmlElement.CUE_TIME, WebmConstants.MkvEbmlElement.CUE_TRACK_POSITIONS}, s = {"L$0"}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $productId;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$productId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return GooglePaymentViewModel.this.new AnonymousClass1(this.$productId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
        
            if (r5.this$0.billingRepository.consume(r6.getPurchaseToken(), r5) == r0) goto L19;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L22
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                java.lang.Object r5 = r5.L$0
                fast.dic.dict.domain.billing.PurchasedItem r5 = (fast.dic.dict.domain.billing.PurchasedItem) r5
                kotlin.ResultKt.throwOnFailure(r6)
                goto L5c
            L16:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L1e:
                kotlin.ResultKt.throwOnFailure(r6)
                goto L39
            L22:
                kotlin.ResultKt.throwOnFailure(r6)
                fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel r6 = fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.this
                fast.dic.dict.data.billing.PlayBillingRepository r6 = fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.access$getBillingRepository$p(r6)
                java.lang.String r1 = r5.$productId
                r4 = r5
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                r5.label = r3
                java.lang.Object r6 = r6.getPurchaseInfo(r1, r4)
                if (r6 != r0) goto L39
                goto L5b
            L39:
                fast.dic.dict.domain.billing.PurchasedItem r6 = (fast.dic.dict.domain.billing.PurchasedItem) r6
                if (r6 != 0) goto L40
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            L40:
                fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel r1 = fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.this
                fast.dic.dict.data.billing.PlayBillingRepository r1 = fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.access$getBillingRepository$p(r1)
                java.lang.String r3 = r6.getPurchaseToken()
                r4 = r5
                kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
                java.lang.Object r6 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r6)
                r5.L$0 = r6
                r5.label = r2
                java.lang.Object r5 = r1.consume(r3, r4)
                if (r5 != r0) goto L5c
            L5b:
                return r0
            L5c:
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final void consumeGooglePlayProduct(String productId) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(productId, null), 3, null);
    }
}
