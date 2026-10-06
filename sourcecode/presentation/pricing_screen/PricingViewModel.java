package fast.dic.dict.presentation.pricing_screen;

import android.util.Log;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.parse.ParseException;
import com.parse.ParseUser;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.domain.entity.pricing.PricingResponse;
import fast.dic.dict.models.api.BaseApiResponseModel;
import fast.dic.dict.services.WebService;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.FDLanguageWord;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: PricingViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0002\b\n¢\u0006\u0004\b\b\u0010\tJ\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u000f2\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u0018\u001a\u00020\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\rR\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013Ê\u0001\u0002\b\u001b¨\u0006\u001a"}, d2 = {"Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;", "Landroidx/lifecycle/ViewModel;", "webService", "Lfast/dic/dict/services/WebService;", "firebaseUserPropertiesManager", "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "<init>", "(Lfast/dic/dict/services/WebService;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/database/LocalStorage;)V", "Ljavax/inject/Inject;", "isCurrentLanguagePersian", "", "()Z", "_emailVerificationState", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/pricing_screen/EmailVerificationState;", "emailVerificationState", "getEmailVerificationState", "()Landroidx/lifecycle/MutableLiveData;", "getPricingList", "Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState;", "language", "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;", "sendEmailVerification", "", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PricingViewModel extends ViewModel {
    private final MutableLiveData<EmailVerificationState> _emailVerificationState;
    private final MutableLiveData<EmailVerificationState> emailVerificationState;
    private final FirebaseUserPropertiesManager firebaseUserPropertiesManager;
    private final boolean isCurrentLanguagePersian;
    private final WebService webService;

    @Inject
    public PricingViewModel(WebService webService, FirebaseUserPropertiesManager firebaseUserPropertiesManager, LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(webService, "webService");
        Intrinsics.checkNotNullParameter(firebaseUserPropertiesManager, "firebaseUserPropertiesManager");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        this.webService = webService;
        this.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
        this.isCurrentLanguagePersian = localStorage.currentLanguageIsPersian();
        MutableLiveData<EmailVerificationState> mutableLiveData = new MutableLiveData<>();
        this._emailVerificationState = mutableLiveData;
        this.emailVerificationState = mutableLiveData;
    }

    /* JADX INFO: renamed from: isCurrentLanguagePersian, reason: from getter */
    public final boolean getIsCurrentLanguagePersian() {
        return this.isCurrentLanguagePersian;
    }

    public final MutableLiveData<EmailVerificationState> getEmailVerificationState() {
        return this.emailVerificationState;
    }

    public final MutableLiveData<PricingPlanViewModelState> getPricingList(FDLanguageWord.LanguageType language) {
        Intrinsics.checkNotNullParameter(language, "language");
        MutableLiveData<PricingPlanViewModelState> mutableLiveData = new MutableLiveData<>();
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(language, this, mutableLiveData, null), 3, null);
        return mutableLiveData;
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.pricing_screen.PricingViewModel$getPricingList$1, reason: invalid class name */
    /* JADX INFO: compiled from: PricingViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.pricing_screen.PricingViewModel$getPricingList$1", f = "PricingViewModel.kt", i = {}, l = {37}, m = "invokeSuspend", n = {}, nl = {38}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ FDLanguageWord.LanguageType $language;
        final /* synthetic */ MutableLiveData<PricingPlanViewModelState> $liveData;
        int label;
        final /* synthetic */ PricingViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(FDLanguageWord.LanguageType languageType, PricingViewModel pricingViewModel, MutableLiveData<PricingPlanViewModelState> mutableLiveData, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$language = languageType;
            this.this$0 = pricingViewModel;
            this.$liveData = mutableLiveData;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$language, this.this$0, this.$liveData, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String strString;
            ResponseBody responseBodyErrorBody;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Log.d("FD-HTTP", "[Pricing] getPricingListV2 start, language=" + this.$language);
                    this.label = 1;
                    obj = this.this$0.webService.getPricingListV2(this.$language, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Response response = (Response) obj;
                Log.d("FD-HTTP", "[Pricing] getPricingListV2 done, code=" + (response != null ? Boxing.boxInt(response.code()) : null));
                if (response != null && response.isSuccessful() && response.body() != null) {
                    MutableLiveData<PricingPlanViewModelState> mutableLiveData = this.$liveData;
                    Object objBody = response.body();
                    Intrinsics.checkNotNull(objBody);
                    mutableLiveData.postValue(new PricingPlanViewModelState.PricingPlan((PricingResponse) objBody));
                } else {
                    MutableLiveData<PricingPlanViewModelState> mutableLiveData2 = this.$liveData;
                    if (response == null || (responseBodyErrorBody = response.errorBody()) == null || (strString = responseBodyErrorBody.string()) == null) {
                        String strMessage = response != null ? response.message() : null;
                        strString = strMessage == null ? "Unknown Error" : strMessage;
                    }
                    mutableLiveData2.postValue(new PricingPlanViewModelState.Error(strString, response != null ? response.code() : -100));
                }
            } catch (Exception e) {
                e.printStackTrace();
                MutableLiveData<PricingPlanViewModelState> mutableLiveData3 = this.$liveData;
                String message = e.getMessage();
                mutableLiveData3.postValue(new PricingPlanViewModelState.Error(message != null ? message : "Unknown Error", 505));
            }
            return Unit.INSTANCE;
        }
    }

    public final void sendEmailVerification() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        String email = fDParseUser != null ? fDParseUser.getEmail() : null;
        MutableLiveData<EmailVerificationState> mutableLiveData = this._emailVerificationState;
        if (email == null) {
            mutableLiveData.postValue(new EmailVerificationState.Error("User email not found"));
        } else {
            mutableLiveData.setValue(EmailVerificationState.Loading.INSTANCE);
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45281(fDParseUser, null), 2, null);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.pricing_screen.PricingViewModel$sendEmailVerification$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PricingViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.pricing_screen.PricingViewModel$sendEmailVerification$1", f = "PricingViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ FDParseUser $currentUser;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45281(FDParseUser fDParseUser, Continuation<? super C45281> continuation) {
            super(2, continuation);
            this.$currentUser = fDParseUser;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PricingViewModel.this.new C45281(this.$currentUser, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                WebService webService = PricingViewModel.this.webService;
                String email = this.$currentUser.getEmail();
                Intrinsics.checkNotNullExpressionValue(email, "getEmail(...)");
                final PricingViewModel pricingViewModel = PricingViewModel.this;
                final FDParseUser fDParseUser = this.$currentUser;
                webService.verificationEmailRequest(email, new Callback<BaseApiResponseModel>() { // from class: fast.dic.dict.presentation.pricing_screen.PricingViewModel.sendEmailVerification.1.1
                    @Override // retrofit2.Callback
                    public void onResponse(Call<BaseApiResponseModel> call, Response<BaseApiResponseModel> response) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(response, "response");
                        FirebaseUserPropertiesManager firebaseUserPropertiesManager = pricingViewModel.firebaseUserPropertiesManager;
                        String email2 = fDParseUser.getEmail();
                        Intrinsics.checkNotNullExpressionValue(email2, "getEmail(...)");
                        firebaseUserPropertiesManager.logEmailVerificationSent(email2, fDParseUser.getUsername(), true);
                        pricingViewModel._emailVerificationState.postValue(EmailVerificationState.Success.INSTANCE);
                    }

                    @Override // retrofit2.Callback
                    public void onFailure(Call<BaseApiResponseModel> call, Throwable t) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(t, "t");
                        FirebaseUserPropertiesManager firebaseUserPropertiesManager = pricingViewModel.firebaseUserPropertiesManager;
                        String email2 = fDParseUser.getEmail();
                        Intrinsics.checkNotNullExpressionValue(email2, "getEmail(...)");
                        firebaseUserPropertiesManager.logEmailVerificationSent(email2, fDParseUser.getUsername(), false);
                        MutableLiveData mutableLiveData = pricingViewModel._emailVerificationState;
                        String message = t.getMessage();
                        if (message == null) {
                            message = "Unknown error";
                        }
                        mutableLiveData.postValue(new EmailVerificationState.Error(message));
                    }
                });
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
