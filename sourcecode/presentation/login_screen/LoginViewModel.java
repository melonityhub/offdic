package fast.dic.dict.presentation.login_screen;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.parse.FunctionCallback;
import com.parse.ParseCloud;
import com.parse.ParseException;
import fast.dic.dict.helpers.FDConnectivityHelper;
import java.util.LinkedHashMap;
import java.util.Locale;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: LoginViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rÊ\u0001\u0002\b\u0014¨\u0006\u0013"}, d2 = {"Lfast/dic/dict/presentation/login_screen/LoginViewModel;", "Landroidx/lifecycle/ViewModel;", "connectivityHelper", "Lfast/dic/dict/helpers/FDConnectivityHelper;", "<init>", "(Lfast/dic/dict/helpers/FDConnectivityHelper;)V", "Ljavax/inject/Inject;", "_uiState", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState;", "uiState", "Landroidx/lifecycle/LiveData;", "getUiState", "()Landroidx/lifecycle/LiveData;", "checkUserEmail", "", "email", "", "resetState", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class LoginViewModel extends ViewModel {
    private final MutableLiveData<LoginViewModelUIState> _uiState;
    private final FDConnectivityHelper connectivityHelper;
    private final LiveData<LoginViewModelUIState> uiState;

    @Inject
    public LoginViewModel(FDConnectivityHelper connectivityHelper) {
        Intrinsics.checkNotNullParameter(connectivityHelper, "connectivityHelper");
        this.connectivityHelper = connectivityHelper;
        MutableLiveData<LoginViewModelUIState> mutableLiveData = new MutableLiveData<>();
        this._uiState = mutableLiveData;
        this.uiState = mutableLiveData;
    }

    public final LiveData<LoginViewModelUIState> getUiState() {
        return this.uiState;
    }

    public final void checkUserEmail(String email) {
        Intrinsics.checkNotNullParameter(email, "email");
        boolean zIsInternetAvailable = this.connectivityHelper.isInternetAvailable();
        MutableLiveData<LoginViewModelUIState> mutableLiveData = this._uiState;
        if (!zIsInternetAvailable) {
            mutableLiveData.setValue(LoginViewModelUIState.NoInternetError.INSTANCE);
        } else {
            mutableLiveData.setValue(LoginViewModelUIState.Loading.INSTANCE);
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new AnonymousClass1(email, this, null), 2, null).invokeOnCompletion(new Function1() { // from class: fast.dic.dict.presentation.login_screen.LoginViewModel$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LoginViewModel.checkUserEmail$lambda$0(this.f$0, (Throwable) obj);
                }
            });
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.login_screen.LoginViewModel$checkUserEmail$1, reason: invalid class name */
    /* JADX INFO: compiled from: LoginViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.login_screen.LoginViewModel$checkUserEmail$1", f = "LoginViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $email;
        int label;
        final /* synthetic */ LoginViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, LoginViewModel loginViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$email = str;
            this.this$0 = loginViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$email, this.this$0, continuation);
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
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            String lowerCase = StringsKt.trim((CharSequence) this.$email).toString().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            linkedHashMap.put("email", lowerCase);
            final LoginViewModel loginViewModel = this.this$0;
            final String str = this.$email;
            ParseCloud.callFunctionInBackground("existingUser", linkedHashMap, new FunctionCallback() { // from class: fast.dic.dict.presentation.login_screen.LoginViewModel$checkUserEmail$1$$ExternalSyntheticLambda0
                @Override // com.parse.FunctionCallback, com.parse.ParseCallback2
                public final void done(Object obj2, ParseException parseException) {
                    LoginViewModel.AnonymousClass1.invokeSuspend$lambda$0(loginViewModel, str, (Boolean) obj2, parseException);
                }
            });
            return Unit.INSTANCE;
        }

        static final void invokeSuspend$lambda$0(LoginViewModel loginViewModel, String str, Boolean bool, ParseException parseException) {
            if (parseException != null) {
                loginViewModel._uiState.postValue(new LoginViewModelUIState.Error(parseException.getMessage()));
            } else if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                loginViewModel._uiState.postValue(new LoginViewModelUIState.EmailExists(str));
            } else {
                loginViewModel._uiState.postValue(new LoginViewModelUIState.NewUser(str));
            }
        }
    }

    static final Unit checkUserEmail$lambda$0(LoginViewModel loginViewModel, Throwable th) {
        if (th != null) {
            loginViewModel._uiState.postValue(new LoginViewModelUIState.Error(th.getMessage()));
        }
        return Unit.INSTANCE;
    }

    public final void resetState() {
        this._uiState.setValue(null);
    }
}
