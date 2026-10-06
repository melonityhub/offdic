package fast.dic.dict.viewmodels.fragments;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.fastdic.android.modules.fdnumberstowords.utils.FDStringExtKt;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.models.api.WodApiModel;
import fast.dic.dict.services.WebService;
import fast.dic.dict.utils.DateExtKt;
import fast.dic.dict.utils.LoggerKt;
import java.util.Calendar;
import java.util.Date;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import retrofit2.Response;

/* JADX INFO: compiled from: HomeViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\b\b¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fÊ\u0001\u0002\b\u0013¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/HomeViewModel;", "Landroidx/lifecycle/ViewModel;", "webService", "Lfast/dic/dict/services/WebService;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "<init>", "(Lfast/dic/dict/services/WebService;Lfast/dic/dict/database/LocalStorage;)V", "Ljavax/inject/Inject;", "viewModelState", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/viewmodels/fragments/HomeViewModelState;", "data", "Landroidx/lifecycle/LiveData;", "getData", "()Landroidx/lifecycle/LiveData;", "getWordOfDayData", "", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class HomeViewModel extends ViewModel {
    private final LocalStorage localStorage;
    private MutableLiveData<HomeViewModelState> viewModelState;
    private final WebService webService;

    @Inject
    public HomeViewModel(WebService webService, LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(webService, "webService");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        this.webService = webService;
        this.localStorage = localStorage;
        this.viewModelState = new MutableLiveData<>();
    }

    public final LiveData<HomeViewModelState> getData() {
        return this.viewModelState;
    }

    /* JADX INFO: renamed from: fast.dic.dict.viewmodels.fragments.HomeViewModel$getWordOfDayData$1, reason: invalid class name */
    /* JADX INFO: compiled from: HomeViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.viewmodels.fragments.HomeViewModel$getWordOfDayData$1", f = "HomeViewModel.kt", i = {0, 0}, l = {44}, m = "invokeSuspend", n = {"localWodModel", "canGetRequest"}, nl = {45}, s = {"L$0", "I$0"}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int I$0;
        Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HomeViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.label;
            try {
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    WodApiModel wod = HomeViewModel.this.localStorage.getWod();
                    if (wod != null) {
                        Date time = Calendar.getInstance().getTime();
                        Intrinsics.checkNotNull(time);
                        i = !Intrinsics.areEqual(wod.getDate(), FDStringExtKt.toEnglishNumber(DateExtKt.toString$default(time, "yyyy-MM-dd", null, 2, null))) ? 1 : 0;
                    } else {
                        i = 1;
                    }
                    HomeViewModel homeViewModel = HomeViewModel.this;
                    if (i == 0) {
                        homeViewModel.viewModelState.postValue(new HomeViewModelState.Data(wod));
                        return Unit.INSTANCE;
                    }
                    this.L$0 = SpillingKt.nullOutSpilledVariable(wod);
                    this.I$0 = i;
                    this.label = 1;
                    obj = homeViewModel.webService.getWod(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                Response response = (Response) obj;
                WodApiModel wodApiModel = response != null ? (WodApiModel) response.body() : null;
                if (response != null && response.isSuccessful() && wodApiModel != null) {
                    HomeViewModel.this.localStorage.storeWod(wodApiModel);
                    HomeViewModel.this.viewModelState.postValue(new HomeViewModelState.Data(wodApiModel));
                    return Unit.INSTANCE;
                }
                HomeViewModel.this.viewModelState.postValue(new HomeViewModelState.Data(null));
                return Unit.INSTANCE;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public final void getWordOfDayData() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(null), 3, null).invokeOnCompletion(new Function1() { // from class: fast.dic.dict.viewmodels.fragments.HomeViewModel$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HomeViewModel.getWordOfDayData$lambda$0((Throwable) obj);
            }
        });
    }

    static final Unit getWordOfDayData$lambda$0(Throwable th) {
        LoggerKt.getLogger().debug("FINISHED with " + th, new Object[0]);
        return Unit.INSTANCE;
    }
}
