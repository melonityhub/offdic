package fast.dic.dict.viewmodels;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.parse.ParseException;
import com.parse.ParseUser;
import fast.dic.dict.PaymentMethodFragment;
import fast.dic.dict.adapters.SubscriptionIAPPlatformEnum;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.services.WebService;
import fast.dic.dict.services.parse.FDParseUser;
import ir.cafebazaar.poolakey.constant.RawJson;
import java.util.HashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaymentMethodViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\b\b¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u000b\u001a\u00020\fJ\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\n2\n\u0010\u0012\u001a\u00060\u0013R\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u0016¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/viewmodels/PaymentMethodViewModel;", "Landroidx/lifecycle/ViewModel;", "webService", "Lfast/dic/dict/services/WebService;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "<init>", "(Lfast/dic/dict/services/WebService;Lfast/dic/dict/database/LocalStorage;)V", "Ljavax/inject/Inject;", "mPlatform", "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;", "isCurrentLanguagePersian", "", "hideAd", "", RawJson.ORDER_ID, "", "platform", "validationPurchaseResponseCallback", "Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;", "Lfast/dic/dict/PaymentMethodFragment;", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PaymentMethodViewModel extends ViewModel {
    private final LocalStorage localStorage;
    private SubscriptionIAPPlatformEnum mPlatform;
    private final WebService webService;

    @Inject
    public PaymentMethodViewModel(WebService webService, LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(webService, "webService");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        this.webService = webService;
        this.localStorage = localStorage;
    }

    public final boolean isCurrentLanguagePersian() {
        return this.localStorage.currentLanguageIsPersian();
    }

    public final void hideAd(String orderId, SubscriptionIAPPlatformEnum platform, PaymentMethodFragment.ValidationPurchaseResponseCallback validationPurchaseResponseCallback) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(validationPurchaseResponseCallback, "validationPurchaseResponseCallback");
        if (ParseUser.getCurrentUser() == null) {
            return;
        }
        this.mPlatform = platform;
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(platform, this, orderId, validationPurchaseResponseCallback, null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.viewmodels.PaymentMethodViewModel$hideAd$1, reason: invalid class name */
    /* JADX INFO: compiled from: PaymentMethodViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.viewmodels.PaymentMethodViewModel$hideAd$1", f = "PaymentMethodViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $orderId;
        final /* synthetic */ SubscriptionIAPPlatformEnum $platform;
        final /* synthetic */ PaymentMethodFragment.ValidationPurchaseResponseCallback $validationPurchaseResponseCallback;
        int label;
        final /* synthetic */ PaymentMethodViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SubscriptionIAPPlatformEnum subscriptionIAPPlatformEnum, PaymentMethodViewModel paymentMethodViewModel, String str, PaymentMethodFragment.ValidationPurchaseResponseCallback validationPurchaseResponseCallback, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$platform = subscriptionIAPPlatformEnum;
            this.this$0 = paymentMethodViewModel;
            this.$orderId = str;
            this.$validationPurchaseResponseCallback = validationPurchaseResponseCallback;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$platform, this.this$0, this.$orderId, this.$validationPurchaseResponseCallback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws ParseException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ParseUser currentUser = ParseUser.getCurrentUser();
            Intrinsics.checkNotNull(currentUser, "null cannot be cast to non-null type fast.dic.dict.services.parse.FDParseUser");
            FDParseUser fDParseUser = (FDParseUser) currentUser;
            HashMap map = new HashMap();
            map.put("sessionToken", fDParseUser.getSessionToken());
            map.put("email", fDParseUser.getEmail());
            if (this.$platform == SubscriptionIAPPlatformEnum.CafeBazaar) {
                WebService webService = this.this$0.webService;
                String email = fDParseUser.getEmail();
                Intrinsics.checkNotNullExpressionValue(email, "getEmail(...)");
                String sessionToken = fDParseUser.getSessionToken();
                Intrinsics.checkNotNullExpressionValue(sessionToken, "getSessionToken(...)");
                webService.validateBazaar(email, sessionToken, this.$orderId, this.$validationPurchaseResponseCallback);
            } else if (this.$platform == SubscriptionIAPPlatformEnum.GooglePlay) {
                WebService webService2 = this.this$0.webService;
                String email2 = fDParseUser.getEmail();
                Intrinsics.checkNotNullExpressionValue(email2, "getEmail(...)");
                String sessionToken2 = fDParseUser.getSessionToken();
                Intrinsics.checkNotNullExpressionValue(sessionToken2, "getSessionToken(...)");
                webService2.validateGoogle(email2, sessionToken2, this.$orderId, this.$validationPurchaseResponseCallback);
            }
            return Unit.INSTANCE;
        }
    }
}
