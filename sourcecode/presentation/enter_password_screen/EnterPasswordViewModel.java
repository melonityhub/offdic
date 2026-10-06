package fast.dic.dict.presentation.enter_password_screen;

import android.os.Build;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.couchbase.lite.internal.core.C4Replicator;
import com.ironsource.Ta;
import com.ironsource.U3;
import com.parse.FunctionCallback;
import com.parse.GetCallback;
import com.parse.LogInCallback;
import com.parse.LogOutCallback;
import com.parse.ParseCloud;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseSession;
import com.parse.ParseUser;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.helpers.FDConnectivityHelper;
import fast.dic.dict.services.parse.FDParseUser;
import java.util.HashMap;
import java.util.Locale;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: EnterPasswordViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\b\b¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fÊ\u0001\u0002\b\u0016¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;", "Landroidx/lifecycle/ViewModel;", "connectivityHelper", "Lfast/dic/dict/helpers/FDConnectivityHelper;", "firebaseUserPropertiesManager", "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "<init>", "(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V", "Ljavax/inject/Inject;", "_uiState", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState;", "uiState", "Landroidx/lifecycle/LiveData;", "getUiState", "()Landroidx/lifecycle/LiveData;", "loginWithPassword", "", "email", "", C4Replicator.REPLICATOR_AUTH_PASSWORD, "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class EnterPasswordViewModel extends ViewModel {
    private final MutableLiveData<EnterPasswordUIState> _uiState;
    private final FDConnectivityHelper connectivityHelper;
    private final FirebaseUserPropertiesManager firebaseUserPropertiesManager;
    private final LiveData<EnterPasswordUIState> uiState;

    @Inject
    public EnterPasswordViewModel(FDConnectivityHelper connectivityHelper, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        Intrinsics.checkNotNullParameter(connectivityHelper, "connectivityHelper");
        Intrinsics.checkNotNullParameter(firebaseUserPropertiesManager, "firebaseUserPropertiesManager");
        this.connectivityHelper = connectivityHelper;
        this.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
        MutableLiveData<EnterPasswordUIState> mutableLiveData = new MutableLiveData<>();
        this._uiState = mutableLiveData;
        this.uiState = mutableLiveData;
    }

    public final LiveData<EnterPasswordUIState> getUiState() {
        return this.uiState;
    }

    public final void loginWithPassword(String email, String password) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        boolean zIsInternetAvailable = this.connectivityHelper.isInternetAvailable();
        MutableLiveData<EnterPasswordUIState> mutableLiveData = this._uiState;
        if (!zIsInternetAvailable) {
            mutableLiveData.setValue(EnterPasswordUIState.NoInternetError.INSTANCE);
        } else {
            mutableLiveData.setValue(EnterPasswordUIState.Loading.INSTANCE);
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new AnonymousClass1(email, password, this, null), 2, null);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel$loginWithPassword$1, reason: invalid class name */
    /* JADX INFO: compiled from: EnterPasswordViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel$loginWithPassword$1", f = "EnterPasswordViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $email;
        final /* synthetic */ String $password;
        int label;
        final /* synthetic */ EnterPasswordViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, String str2, EnterPasswordViewModel enterPasswordViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$email = str;
            this.$password = str2;
            this.this$0 = enterPasswordViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$email, this.$password, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String lowerCase = StringsKt.trim((CharSequence) this.$email).toString().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String str = this.$password;
            final EnterPasswordViewModel enterPasswordViewModel = this.this$0;
            final String str2 = this.$email;
            ParseUser.logInInBackground(lowerCase, str, new LogInCallback() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda5
                @Override // com.parse.LogInCallback, com.parse.ParseCallback2
                public final void done(ParseUser parseUser, ParseException parseException) throws ParseException {
                    EnterPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0(enterPasswordViewModel, str2, parseUser, parseException);
                }
            });
            return Unit.INSTANCE;
        }

        static final void invokeSuspend$lambda$0(final EnterPasswordViewModel enterPasswordViewModel, final String str, ParseUser parseUser, ParseException parseException) throws ParseException {
            if (parseException != null) {
                MutableLiveData mutableLiveData = enterPasswordViewModel._uiState;
                String message = parseException.getMessage();
                if (message == null) {
                    message = "";
                }
                mutableLiveData.postValue(new EnterPasswordUIState.ParseError(message, parseException.getCode()));
                return;
            }
            ParseUser currentUser = ParseUser.getCurrentUser();
            FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
            if (fDParseUser != null && fDParseUser.isDisabled()) {
                ParseUser.logOutInBackground(new LogOutCallback() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda1
                    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
                    public final void done(ParseException parseException2) {
                        EnterPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0$0(enterPasswordViewModel, str, parseException2);
                    }
                });
                enterPasswordViewModel._uiState.postValue(new EnterPasswordUIState.UserNotActive(str));
            } else {
                if (fDParseUser == null || fDParseUser.isDisabled()) {
                    return;
                }
                HashMap map = new HashMap();
                map.put(Ta.o, "Android");
                map.put("deviceName", Build.MODEL);
                map.put("deviceModel", Build.BRAND);
                map.put("sessionToken", fDParseUser.getSessionToken());
                map.put(U3.j.n, Build.VERSION.RELEASE.toString());
                ParseCloud.callFunctionInBackground("updateSession", map, new FunctionCallback() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda2
                    @Override // com.parse.FunctionCallback, com.parse.ParseCallback2
                    public final void done(Object obj, ParseException parseException2) {
                        EnterPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0$1(enterPasswordViewModel, str, obj, parseException2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0$0(EnterPasswordViewModel enterPasswordViewModel, String str, ParseException parseException) {
            enterPasswordViewModel.firebaseUserPropertiesManager.logUserLogout(str, "account_disabled");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0$1(final EnterPasswordViewModel enterPasswordViewModel, final String str, Object obj, ParseException parseException) {
            if (parseException != null) {
                ParseUser.logOutInBackground(new LogOutCallback() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda3
                    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
                    public final void done(ParseException parseException2) {
                        EnterPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0$1$0(enterPasswordViewModel, str, parseException2);
                    }
                });
                enterPasswordViewModel._uiState.postValue(new EnterPasswordUIState.Error(parseException.getMessage()));
            } else {
                ParseSession.getCurrentSessionInBackground(new GetCallback() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda4
                    @Override // com.parse.GetCallback, com.parse.ParseCallback2
                    public final void done(ParseObject parseObject, ParseException parseException2) {
                        EnterPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0$1$1(enterPasswordViewModel, str, (ParseSession) parseObject, parseException2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0$1$0(EnterPasswordViewModel enterPasswordViewModel, String str, ParseException parseException) {
            enterPasswordViewModel.firebaseUserPropertiesManager.logUserLogout(str, "login_session_update_error");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0$1$1(final EnterPasswordViewModel enterPasswordViewModel, final String str, ParseSession parseSession, ParseException parseException) {
            if (parseException == null) {
                FirebaseUserPropertiesManager.logUserLogout$default(enterPasswordViewModel.firebaseUserPropertiesManager, str, null, 2, null);
                enterPasswordViewModel._uiState.postValue(new EnterPasswordUIState.Success(str));
            } else {
                ParseUser.logOutInBackground(new LogOutCallback() { // from class: fast.dic.dict.presentation.enter_password_screen.EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda0
                    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
                    public final void done(ParseException parseException2) {
                        EnterPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0$1$1$0(enterPasswordViewModel, str, parseException2);
                    }
                });
                enterPasswordViewModel._uiState.postValue(new EnterPasswordUIState.ParseError(parseException.getMessage(), parseException.getCode()));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0$1$1$0(EnterPasswordViewModel enterPasswordViewModel, String str, ParseException parseException) {
            enterPasswordViewModel.firebaseUserPropertiesManager.logUserLogout(str, "login_session_retrieval_error");
        }
    }
}
