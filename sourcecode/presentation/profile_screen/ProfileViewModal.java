package fast.dic.dict.presentation.profile_screen;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseUser;
import com.parse.RequestPasswordResetCallback;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDConnectivityHelper;
import fast.dic.dict.interfaces.IFDParseWrapperCallback;
import fast.dic.dict.models.PlanType;
import fast.dic.dict.models.api.BaseApiResponseModel;
import fast.dic.dict.services.FDAds;
import fast.dic.dict.services.WebService;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.services.parse.FDParseWrapper;
import fast.dic.dict.services.parse.FDPurchased;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.PersianDate;
import fast.dic.dict.utils.PersianDateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: ProfileViewModal.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B=\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u001a\u0002\b\u0010¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001dJ\b\u0010\u001f\u001a\u0004\u0018\u00010 J\u0006\u0010!\u001a\u00020\u001dJ\u000e\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020$J6\u0010%\u001a\u00020$2\b\u0010&\u001a\u0004\u0018\u00010'2\u0006\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010+H\u0007b\u0010\b,\u0012\f\b-\u0012\b\b\fJ\u0004\b\b(.J\u0006\u0010/\u001a\u00020\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0017Ê\u0001\u0002\b1¨\u00060"}, d2 = {"Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;", "Landroidx/lifecycle/ViewModel;", "fdAds", "Lfast/dic/dict/services/FDAds;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "webService", "Lfast/dic/dict/services/WebService;", "connectivityHelper", "Lfast/dic/dict/helpers/FDConnectivityHelper;", "fdParseWrapper", "Lfast/dic/dict/services/parse/FDParseWrapper;", "firebaseUserPropertiesManager", "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "<init>", "(Lfast/dic/dict/services/FDAds;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/WebService;Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/services/parse/FDParseWrapper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V", "Ljavax/inject/Inject;", "_state", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;", "state", "Landroidx/lifecycle/LiveData;", "getState", "()Landroidx/lifecycle/LiveData;", "_emailVerificationState", "Lfast/dic/dict/presentation/profile_screen/EmailVerificationState;", "emailVerificationState", "getEmailVerificationState", "fetchParseUser", "", "hideBannerAds", "getUser", "Lfast/dic/dict/services/parse/FDParseUser;", "deleteAccount", "requestForResetPassword", "email", "", "getStringBasedOnPlan", Names.CONTEXT, "Landroid/content/Context;", "planType", "Lfast/dic/dict/models/PlanType;", "date", "Ljava/util/Date;", "Landroid/annotation/SuppressLint;", "value", "SimpleDateFormat", "sendEmailVerification", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class ProfileViewModal extends ViewModel {
    private final MutableLiveData<EmailVerificationState> _emailVerificationState;
    private final MutableLiveData<ProfileUIState> _state;
    private final FDConnectivityHelper connectivityHelper;
    private final LiveData<EmailVerificationState> emailVerificationState;
    private final FDAds fdAds;
    private final FDParseWrapper fdParseWrapper;
    private final FirebaseUserPropertiesManager firebaseUserPropertiesManager;
    private final LocalStorage localStorage;
    private final LiveData<ProfileUIState> state;
    private final WebService webService;

    @Inject
    public ProfileViewModal(FDAds fdAds, LocalStorage localStorage, WebService webService, FDConnectivityHelper connectivityHelper, FDParseWrapper fdParseWrapper, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        Intrinsics.checkNotNullParameter(fdAds, "fdAds");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        Intrinsics.checkNotNullParameter(webService, "webService");
        Intrinsics.checkNotNullParameter(connectivityHelper, "connectivityHelper");
        Intrinsics.checkNotNullParameter(fdParseWrapper, "fdParseWrapper");
        Intrinsics.checkNotNullParameter(firebaseUserPropertiesManager, "firebaseUserPropertiesManager");
        this.fdAds = fdAds;
        this.localStorage = localStorage;
        this.webService = webService;
        this.connectivityHelper = connectivityHelper;
        this.fdParseWrapper = fdParseWrapper;
        this.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
        MutableLiveData<ProfileUIState> mutableLiveData = new MutableLiveData<>();
        this._state = mutableLiveData;
        this.state = mutableLiveData;
        MutableLiveData<EmailVerificationState> mutableLiveData2 = new MutableLiveData<>();
        this._emailVerificationState = mutableLiveData2;
        this.emailVerificationState = mutableLiveData2;
    }

    public final LiveData<ProfileUIState> getState() {
        return this.state;
    }

    public final LiveData<EmailVerificationState> getEmailVerificationState() {
        return this.emailVerificationState;
    }

    public final void fetchParseUser() {
        this._state.setValue(ProfileUIState.Loading.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45291(null), 2, null).invokeOnCompletion(new Function1() { // from class: fast.dic.dict.presentation.profile_screen.ProfileViewModal$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ProfileViewModal.fetchParseUser$lambda$0(this.f$0, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.profile_screen.ProfileViewModal$fetchParseUser$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.profile_screen.ProfileViewModal$fetchParseUser$1", f = "ProfileViewModal.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45291 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C45291(Continuation<? super C45291> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ProfileViewModal.this.new C45291(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45291) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                FDParseWrapper fDParseWrapper = ProfileViewModal.this.fdParseWrapper;
                final ProfileViewModal profileViewModal = ProfileViewModal.this;
                fDParseWrapper.fetchParseUser(new IFDParseWrapperCallback() { // from class: fast.dic.dict.presentation.profile_screen.ProfileViewModal.fetchParseUser.1.1
                    @Override // fast.dic.dict.interfaces.IFDParseWrapperCallback
                    public void onFailure(ParseException error, FDPurchased fdPurchased) {
                        Intrinsics.checkNotNullParameter(fdPurchased, "fdPurchased");
                    }

                    @Override // fast.dic.dict.interfaces.IFDParseWrapperCallback
                    public void onSuccess(ParseObject user, FDPurchased fdPurchased) {
                        Intrinsics.checkNotNullParameter(user, "user");
                        Intrinsics.checkNotNullParameter(fdPurchased, "fdPurchased");
                        profileViewModal._state.postValue(new ProfileUIState.User(user, fdPurchased));
                    }

                    @Override // fast.dic.dict.interfaces.IFDParseWrapperCallback
                    public void beforeGetUserSession(FDParseUser currentUser, FDPurchased fdPurchased) {
                        Intrinsics.checkNotNullParameter(currentUser, "currentUser");
                        Intrinsics.checkNotNullParameter(fdPurchased, "fdPurchased");
                        profileViewModal._state.postValue(new ProfileUIState.User(currentUser, fdPurchased));
                    }
                });
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static final Unit fetchParseUser$lambda$0(ProfileViewModal profileViewModal, Throwable th) {
        if (th != null) {
            MutableLiveData<ProfileUIState> mutableLiveData = profileViewModal._state;
            String message = th.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            mutableLiveData.setValue(new ProfileUIState.Error(message));
        }
        return Unit.INSTANCE;
    }

    public final void hideBannerAds() {
        this.fdAds.hideBanner();
    }

    public final FDParseUser getUser() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        if (currentUser instanceof FDParseUser) {
            return (FDParseUser) currentUser;
        }
        return null;
    }

    public final void deleteAccount() {
        boolean zIsInternetAvailable = this.connectivityHelper.isInternetAvailable();
        MutableLiveData<ProfileUIState> mutableLiveData = this._state;
        if (!zIsInternetAvailable) {
            mutableLiveData.setValue(ProfileUIState.NoInternetError.INSTANCE);
        } else {
            mutableLiveData.setValue(ProfileUIState.Loading.INSTANCE);
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new AnonymousClass1(null), 2, null);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.profile_screen.ProfileViewModal$deleteAccount$1, reason: invalid class name */
    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.profile_screen.ProfileViewModal$deleteAccount$1", f = "ProfileViewModal.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ProfileViewModal.this.new AnonymousClass1(continuation);
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
            FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
            if (fDParseUser == null) {
                return Unit.INSTANCE;
            }
            WebService webService = ProfileViewModal.this.webService;
            String email = fDParseUser.getEmail();
            Intrinsics.checkNotNullExpressionValue(email, "getEmail(...)");
            String sessionToken = fDParseUser.getSessionToken();
            Intrinsics.checkNotNullExpressionValue(sessionToken, "getSessionToken(...)");
            final ProfileViewModal profileViewModal = ProfileViewModal.this;
            webService.deleteAccount(email, sessionToken, new Callback<BaseApiResponseModel>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileViewModal.deleteAccount.1.1
                @Override // retrofit2.Callback
                public void onResponse(Call<BaseApiResponseModel> call, Response<BaseApiResponseModel> response) {
                    String result;
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                    if (response.body() == null) {
                        profileViewModal._state.postValue(new ProfileUIState.Error(response.message()));
                        return;
                    }
                    BaseApiResponseModel baseApiResponseModelBody = response.body();
                    if (baseApiResponseModelBody == null || (result = baseApiResponseModelBody.getResult()) == null) {
                        result = "";
                    }
                    if (baseApiResponseModelBody == null || !baseApiResponseModelBody.getSuccessful()) {
                        profileViewModal._state.postValue(new ProfileUIState.DeletedAccountError(result));
                    } else {
                        profileViewModal._state.postValue(new ProfileUIState.DeletedAccount(result));
                    }
                }

                @Override // retrofit2.Callback
                public void onFailure(Call<BaseApiResponseModel> call, Throwable t) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t, "t");
                    MutableLiveData mutableLiveData = profileViewModal._state;
                    String message = t.getMessage();
                    if (message == null) {
                        message = "Unknown error";
                    }
                    mutableLiveData.postValue(new ProfileUIState.Error(message));
                }
            });
            return Unit.INSTANCE;
        }
    }

    public final void requestForResetPassword(String email) {
        Intrinsics.checkNotNullParameter(email, "email");
        boolean zIsInternetAvailable = this.connectivityHelper.isInternetAvailable();
        MutableLiveData<ProfileUIState> mutableLiveData = this._state;
        if (!zIsInternetAvailable) {
            mutableLiveData.setValue(ProfileUIState.NoInternetError.INSTANCE);
        } else {
            mutableLiveData.setValue(ProfileUIState.Loading.INSTANCE);
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45301(email, this, null), 2, null);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.profile_screen.ProfileViewModal$requestForResetPassword$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.profile_screen.ProfileViewModal$requestForResetPassword$1", f = "ProfileViewModal.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45301 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $email;
        int label;
        final /* synthetic */ ProfileViewModal this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45301(String str, ProfileViewModal profileViewModal, Continuation<? super C45301> continuation) {
            super(2, continuation);
            this.$email = str;
            this.this$0 = profileViewModal;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C45301(this.$email, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45301) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String str = this.$email;
            final ProfileViewModal profileViewModal = this.this$0;
            ParseUser.requestPasswordResetInBackground(str, new RequestPasswordResetCallback() { // from class: fast.dic.dict.presentation.profile_screen.ProfileViewModal$requestForResetPassword$1$$ExternalSyntheticLambda0
                @Override // com.parse.RequestPasswordResetCallback, com.parse.ParseCallback1
                public final void done(ParseException parseException) {
                    ProfileViewModal.C45301.invokeSuspend$lambda$0(profileViewModal, parseException);
                }
            });
            return Unit.INSTANCE;
        }

        static final void invokeSuspend$lambda$0(ProfileViewModal profileViewModal, ParseException parseException) {
            if (parseException == null) {
                profileViewModal._state.postValue(ProfileUIState.ResetPasswordRequested.INSTANCE);
                return;
            }
            MutableLiveData mutableLiveData = profileViewModal._state;
            String message = parseException.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            mutableLiveData.postValue(new ProfileUIState.ResetPasswordFailed(message, Integer.valueOf(parseException.getCode())));
        }
    }

    public final String getStringBasedOnPlan(Context context, PlanType planType, Date date) {
        Intrinsics.checkNotNullParameter(planType, "planType");
        String strReplaceNumbersToFarsi = "";
        if (date == null || context == null) {
            return "";
        }
        try {
            if (this.localStorage.currentLanguageIsPersian()) {
                strReplaceNumbersToFarsi = FDLanguageWord.INSTANCE.replaceNumbersToFarsi(new PersianDateFormat("Y/m/d").format(new PersianDate(date)).toString());
            } else {
                String str = new SimpleDateFormat("yyyy/MM/dd").format(date);
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                strReplaceNumbersToFarsi = str;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (planType == PlanType.AI) {
            String string = context.getString(R.string.ai_plan_until, strReplaceNumbersToFarsi);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        String string2 = context.getString(R.string.your_current_professional_plan_until, strReplaceNumbersToFarsi);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        return string2;
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
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45311(fDParseUser, null), 2, null);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.profile_screen.ProfileViewModal$sendEmailVerification$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ProfileViewModal.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.profile_screen.ProfileViewModal$sendEmailVerification$1", f = "ProfileViewModal.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45311 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ FDParseUser $currentUser;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45311(FDParseUser fDParseUser, Continuation<? super C45311> continuation) {
            super(2, continuation);
            this.$currentUser = fDParseUser;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ProfileViewModal.this.new C45311(this.$currentUser, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45311) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                WebService webService = ProfileViewModal.this.webService;
                String email = this.$currentUser.getEmail();
                Intrinsics.checkNotNullExpressionValue(email, "getEmail(...)");
                final ProfileViewModal profileViewModal = ProfileViewModal.this;
                final FDParseUser fDParseUser = this.$currentUser;
                webService.verificationEmailRequest(email, new Callback<BaseApiResponseModel>() { // from class: fast.dic.dict.presentation.profile_screen.ProfileViewModal.sendEmailVerification.1.1
                    @Override // retrofit2.Callback
                    public void onResponse(Call<BaseApiResponseModel> call, Response<BaseApiResponseModel> response) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(response, "response");
                        FirebaseUserPropertiesManager firebaseUserPropertiesManager = profileViewModal.firebaseUserPropertiesManager;
                        String email2 = fDParseUser.getEmail();
                        Intrinsics.checkNotNullExpressionValue(email2, "getEmail(...)");
                        firebaseUserPropertiesManager.logEmailVerificationSent(email2, fDParseUser.getUsername(), true);
                        profileViewModal._emailVerificationState.postValue(EmailVerificationState.Success.INSTANCE);
                    }

                    @Override // retrofit2.Callback
                    public void onFailure(Call<BaseApiResponseModel> call, Throwable t) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(t, "t");
                        FirebaseUserPropertiesManager firebaseUserPropertiesManager = profileViewModal.firebaseUserPropertiesManager;
                        String email2 = fDParseUser.getEmail();
                        Intrinsics.checkNotNullExpressionValue(email2, "getEmail(...)");
                        firebaseUserPropertiesManager.logEmailVerificationSent(email2, fDParseUser.getUsername(), false);
                        MutableLiveData mutableLiveData = profileViewModal._emailVerificationState;
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
