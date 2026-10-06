package fast.dic.dict.presentation.forget_password_screen;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.parse.ParseException;
import com.parse.ParseUser;
import com.parse.RequestPasswordResetCallback;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.helpers.FDConnectivityHelper;
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

/* JADX INFO: compiled from: ForgetPasswordViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\b\b¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fÊ\u0001\u0002\b\u0015¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;", "Landroidx/lifecycle/ViewModel;", "connectivityHelper", "Lfast/dic/dict/helpers/FDConnectivityHelper;", "firebaseUserPropertiesManager", "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "<init>", "(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V", "Ljavax/inject/Inject;", "_uiState", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState;", "uiState", "Landroidx/lifecycle/LiveData;", "getUiState", "()Landroidx/lifecycle/LiveData;", "sendRestPasswordLink", "", "email", "", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class ForgetPasswordViewModel extends ViewModel {
    private final MutableLiveData<ForgetPasswordUIState> _uiState;
    private final FDConnectivityHelper connectivityHelper;
    private final FirebaseUserPropertiesManager firebaseUserPropertiesManager;
    private final LiveData<ForgetPasswordUIState> uiState;

    @Inject
    public ForgetPasswordViewModel(FDConnectivityHelper connectivityHelper, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        Intrinsics.checkNotNullParameter(connectivityHelper, "connectivityHelper");
        Intrinsics.checkNotNullParameter(firebaseUserPropertiesManager, "firebaseUserPropertiesManager");
        this.connectivityHelper = connectivityHelper;
        this.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
        MutableLiveData<ForgetPasswordUIState> mutableLiveData = new MutableLiveData<>();
        this._uiState = mutableLiveData;
        this.uiState = mutableLiveData;
    }

    public final LiveData<ForgetPasswordUIState> getUiState() {
        return this.uiState;
    }

    public final void sendRestPasswordLink(String email) {
        Intrinsics.checkNotNullParameter(email, "email");
        boolean zIsInternetAvailable = this.connectivityHelper.isInternetAvailable();
        MutableLiveData<ForgetPasswordUIState> mutableLiveData = this._uiState;
        if (!zIsInternetAvailable) {
            mutableLiveData.setValue(ForgetPasswordUIState.NoInternetError.INSTANCE);
        } else {
            mutableLiveData.setValue(ForgetPasswordUIState.Loading.INSTANCE);
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new AnonymousClass1(email, this, null), 2, null);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordViewModel$sendRestPasswordLink$1, reason: invalid class name */
    /* JADX INFO: compiled from: ForgetPasswordViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.forget_password_screen.ForgetPasswordViewModel$sendRestPasswordLink$1", f = "ForgetPasswordViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $email;
        int label;
        final /* synthetic */ ForgetPasswordViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, ForgetPasswordViewModel forgetPasswordViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$email = str;
            this.this$0 = forgetPasswordViewModel;
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
            String lowerCase = StringsKt.trim((CharSequence) this.$email).toString().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            final ForgetPasswordViewModel forgetPasswordViewModel = this.this$0;
            final String str = this.$email;
            ParseUser.requestPasswordResetInBackground(lowerCase, new RequestPasswordResetCallback() { // from class: fast.dic.dict.presentation.forget_password_screen.ForgetPasswordViewModel$sendRestPasswordLink$1$$ExternalSyntheticLambda0
                @Override // com.parse.RequestPasswordResetCallback, com.parse.ParseCallback1
                public final void done(ParseException parseException) {
                    ForgetPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0(forgetPasswordViewModel, str, parseException);
                }
            });
            return Unit.INSTANCE;
        }

        static final void invokeSuspend$lambda$0(ForgetPasswordViewModel forgetPasswordViewModel, String str, ParseException parseException) {
            if (parseException != null) {
                forgetPasswordViewModel._uiState.postValue(new ForgetPasswordUIState.Error(parseException.getMessage()));
                forgetPasswordViewModel.firebaseUserPropertiesManager.logPasswordChange(str, false);
            } else {
                FirebaseUserPropertiesManager.logPasswordChange$default(forgetPasswordViewModel.firebaseUserPropertiesManager, str, false, 2, null);
                forgetPasswordViewModel._uiState.postValue(new ForgetPasswordUIState.Success(str));
            }
        }
    }
}
