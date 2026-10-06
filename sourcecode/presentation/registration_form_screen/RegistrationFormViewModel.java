package fast.dic.dict.presentation.registration_form_screen;

import android.os.Build;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.couchbase.lite.internal.core.C4Replicator;
import com.parse.GetCallback;
import com.parse.LogOutCallback;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseSession;
import com.parse.ParseUser;
import com.parse.SaveCallback;
import com.parse.SignUpCallback;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDConnectivityHelper;
import fast.dic.dict.services.parse.FDParseSession;
import fast.dic.dict.services.parse.FDParseUser;
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

/* JADX INFO: compiled from: RegistrationFormViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B%\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0002\b\n¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\rR\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014Ê\u0001\u0002\b\u001c¨\u0006\u001b"}, d2 = {"Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;", "Landroidx/lifecycle/ViewModel;", "connectivityHelper", "Lfast/dic/dict/helpers/FDConnectivityHelper;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "firebaseUserPropertiesManager", "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "<init>", "(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V", "Ljavax/inject/Inject;", "isCurrentLanguagePersian", "", "()Z", "_uiState", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState;", "uiState", "Landroidx/lifecycle/LiveData;", "getUiState", "()Landroidx/lifecycle/LiveData;", "submitRegistrationForm", "", "email", "", C4Replicator.REPLICATOR_AUTH_PASSWORD, "name", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class RegistrationFormViewModel extends ViewModel {
    private final MutableLiveData<RegistrationFormUIState> _uiState;
    private final FDConnectivityHelper connectivityHelper;
    private final FirebaseUserPropertiesManager firebaseUserPropertiesManager;
    private final boolean isCurrentLanguagePersian;
    private final LocalStorage localStorage;
    private final LiveData<RegistrationFormUIState> uiState;

    @Inject
    public RegistrationFormViewModel(FDConnectivityHelper connectivityHelper, LocalStorage localStorage, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        Intrinsics.checkNotNullParameter(connectivityHelper, "connectivityHelper");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        Intrinsics.checkNotNullParameter(firebaseUserPropertiesManager, "firebaseUserPropertiesManager");
        this.connectivityHelper = connectivityHelper;
        this.localStorage = localStorage;
        this.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
        this.isCurrentLanguagePersian = localStorage.currentLanguageIsPersian();
        MutableLiveData<RegistrationFormUIState> mutableLiveData = new MutableLiveData<>();
        this._uiState = mutableLiveData;
        this.uiState = mutableLiveData;
    }

    /* JADX INFO: renamed from: isCurrentLanguagePersian, reason: from getter */
    public final boolean getIsCurrentLanguagePersian() {
        return this.isCurrentLanguagePersian;
    }

    public final LiveData<RegistrationFormUIState> getUiState() {
        return this.uiState;
    }

    public final void submitRegistrationForm(String email, String password, String name) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(name, "name");
        if (!this.connectivityHelper.isInternetAvailable()) {
            this.firebaseUserPropertiesManager.logUserRegisterFailed(email, "network_error", "email_password");
            this._uiState.setValue(RegistrationFormUIState.NoInternetError.INSTANCE);
        } else {
            this._uiState.setValue(RegistrationFormUIState.Loading.INSTANCE);
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new AnonymousClass1(email, name, password, this, null), 2, null);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel$submitRegistrationForm$1, reason: invalid class name */
    /* JADX INFO: compiled from: RegistrationFormViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel$submitRegistrationForm$1", f = "RegistrationFormViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $email;
        final /* synthetic */ String $name;
        final /* synthetic */ String $password;
        int label;
        final /* synthetic */ RegistrationFormViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, String str2, String str3, RegistrationFormViewModel registrationFormViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$email = str;
            this.$name = str2;
            this.$password = str3;
            this.this$0 = registrationFormViewModel;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0$0$0(ParseException parseException) {
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$email, this.$name, this.$password, this.this$0, continuation);
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
            FDParseUser fDParseUser = new FDParseUser();
            String lowerCase = StringsKt.trim((CharSequence) this.$email).toString().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            fDParseUser.setEmail(lowerCase);
            fDParseUser.setUsername(this.$email);
            fDParseUser.setName(this.$name);
            fDParseUser.setPassword(this.$password);
            final RegistrationFormViewModel registrationFormViewModel = this.this$0;
            final String str = this.$email;
            fDParseUser.signUpInBackground(new SignUpCallback() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda3
                @Override // com.parse.SignUpCallback, com.parse.ParseCallback1
                public final void done(ParseException parseException) {
                    RegistrationFormViewModel.AnonymousClass1.invokeSuspend$lambda$0(registrationFormViewModel, str, parseException);
                }
            });
            return Unit.INSTANCE;
        }

        static final void invokeSuspend$lambda$0(final RegistrationFormViewModel registrationFormViewModel, final String str, ParseException parseException) {
            String str2;
            if (parseException != null) {
                String message = parseException.getMessage();
                if (message != null && StringsKt.contains((CharSequence) message, (CharSequence) "email", true)) {
                    str2 = "email_already_exists";
                } else {
                    String message2 = parseException.getMessage();
                    if (message2 != null && StringsKt.contains((CharSequence) message2, (CharSequence) "username", true)) {
                        str2 = "username_taken";
                    } else {
                        String message3 = parseException.getMessage();
                        if (message3 != null && StringsKt.contains((CharSequence) message3, (CharSequence) C4Replicator.REPLICATOR_AUTH_PASSWORD, true)) {
                            str2 = "weak_password";
                        } else {
                            str2 = "error: " + parseException.getMessage();
                        }
                    }
                }
                registrationFormViewModel.firebaseUserPropertiesManager.logUserRegisterFailed(str, str2, "email_password");
                registrationFormViewModel._uiState.postValue(new RegistrationFormUIState.Error(parseException.getMessage()));
                return;
            }
            ParseSession.getCurrentSessionInBackground(new GetCallback() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda0
                @Override // com.parse.GetCallback, com.parse.ParseCallback2
                public final void done(ParseObject parseObject, ParseException parseException2) {
                    RegistrationFormViewModel.AnonymousClass1.invokeSuspend$lambda$0$0(registrationFormViewModel, str, (ParseSession) parseObject, parseException2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0$0(final RegistrationFormViewModel registrationFormViewModel, final String str, ParseSession parseSession, ParseException parseException) {
            String str2;
            if (parseException != null) {
                int code = parseException.getCode();
                if (code == 125) {
                    str2 = "invalid_email";
                } else if (code == 202) {
                    str2 = "username_taken";
                } else if (code == 203) {
                    str2 = "email_already_exists";
                } else {
                    str2 = "parse_error_" + parseException.getCode();
                }
                registrationFormViewModel.firebaseUserPropertiesManager.logUserRegisterFailed(str, str2, "email_password");
                registrationFormViewModel.firebaseUserPropertiesManager.logUserLogout(str, "registration_session_error");
                ParseUser.logOutInBackground(new LogOutCallback() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda1
                    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
                    public final void done(ParseException parseException2) {
                        RegistrationFormViewModel.AnonymousClass1.invokeSuspend$lambda$0$0$0(parseException2);
                    }
                });
                registrationFormViewModel._uiState.postValue(new RegistrationFormUIState.ParseError(parseException.getMessage(), parseException.getCode()));
                return;
            }
            Intrinsics.checkNotNull(parseSession, "null cannot be cast to non-null type fast.dic.dict.services.parse.FDParseSession");
            FDParseSession fDParseSession = (FDParseSession) parseSession;
            fDParseSession.setDeviceOS("Android");
            fDParseSession.setDeviceOSVersion(Build.VERSION.RELEASE.toString());
            fDParseSession.setDeviceName(Build.MODEL);
            fDParseSession.setDeviceModel(Build.BRAND);
            fDParseSession.saveInBackground(new SaveCallback() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda2
                @Override // com.parse.SaveCallback, com.parse.ParseCallback1
                public final void done(ParseException parseException2) {
                    RegistrationFormViewModel.AnonymousClass1.invokeSuspend$lambda$0$0$1(registrationFormViewModel, str, parseException2);
                }
            });
            registrationFormViewModel.firebaseUserPropertiesManager.logUserRegister(str, "email_password", true);
            registrationFormViewModel._uiState.postValue(RegistrationFormUIState.Success.INSTANCE);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0$0$1(final RegistrationFormViewModel registrationFormViewModel, final String str, ParseException parseException) {
            if (parseException != null) {
                ParseUser.logOutInBackground(new LogOutCallback() { // from class: fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda4
                    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
                    public final void done(ParseException parseException2) {
                        RegistrationFormViewModel.AnonymousClass1.invokeSuspend$lambda$0$0$1$0(registrationFormViewModel, str, parseException2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0$0$1$0(RegistrationFormViewModel registrationFormViewModel, String str, ParseException parseException) {
            registrationFormViewModel.firebaseUserPropertiesManager.logUserLogout(str, "registration_session_save_error");
        }
    }
}
