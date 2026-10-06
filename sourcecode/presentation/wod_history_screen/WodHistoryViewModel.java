package fast.dic.dict.presentation.wod_history_screen;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.fastdic.android.modules.fdnumberstowords.utils.FDStringExtKt;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.models.WodHistoryMonthDto;
import fast.dic.dict.services.WebService;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.IntExtKt;
import fast.dic.dict.utils.PersianDate;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: WodHistoryViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\b\b¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0013J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00130\u0016J\u0018\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00162\b\b\u0002\u0010\u0019\u001a\u00020\u0018H\u0002J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fÊ\u0001\u0002\b\u001e¨\u0006\u001d"}, d2 = {"Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;", "Landroidx/lifecycle/ViewModel;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "webService", "Lfast/dic/dict/services/WebService;", "<init>", "(Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/WebService;)V", "Ljavax/inject/Inject;", "_state", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState;", "state", "Landroidx/lifecycle/LiveData;", "getState", "()Landroidx/lifecycle/LiveData;", "isCurrentLanguagePersian", "", "convertToJalaliYear", "", "gregorianYear", "getYears", "", "getJalaliYears", "", "startYear", "getWodHistory", "", "year", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class WodHistoryViewModel extends ViewModel {
    private MutableLiveData<WodHistoryUIState> _state;
    private final LocalStorage localStorage;
    private final LiveData<WodHistoryUIState> state;
    private final WebService webService;

    @Inject
    public WodHistoryViewModel(LocalStorage localStorage, WebService webService) {
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        Intrinsics.checkNotNullParameter(webService, "webService");
        this.localStorage = localStorage;
        this.webService = webService;
        MutableLiveData<WodHistoryUIState> mutableLiveData = new MutableLiveData<>(WodHistoryUIState.Loading.INSTANCE);
        this._state = mutableLiveData;
        this.state = mutableLiveData;
    }

    public final LiveData<WodHistoryUIState> getState() {
        return this.state;
    }

    public final boolean isCurrentLanguagePersian() {
        return this.localStorage.currentLanguageIsPersian();
    }

    public final String convertToJalaliYear(String gregorianYear) {
        Intrinsics.checkNotNullParameter(gregorianYear, "gregorianYear");
        String englishNumber = FDStringExtKt.toEnglishNumber(gregorianYear);
        if (englishNumber != null && StringsKt.startsWith$default(englishNumber, "1", false, 2, (Object) null)) {
            return null;
        }
        try {
            return String.valueOf(Integer.parseInt(gregorianYear) - 621);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public final List<String> getYears() {
        if (isCurrentLanguagePersian()) {
            List jalaliYears$default = getJalaliYears$default(this, 0, 1, null);
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(jalaliYears$default, 10));
            Iterator it = jalaliYears$default.iterator();
            while (it.hasNext()) {
                arrayList.add(FDLanguageWord.INSTANCE.replaceNumbersToFarsi(String.valueOf(((Number) it.next()).intValue())));
            }
            return CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: fast.dic.dict.presentation.wod_history_screen.WodHistoryViewModel$getYears$$inlined$sortedByDescending$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    return ComparisonsKt.compareValues(Integer.valueOf(Integer.parseInt((String) t2)), Integer.valueOf(Integer.parseInt((String) t)));
                }
            });
        }
        List jalaliYears$default2 = getJalaliYears$default(this, 0, 1, null);
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(jalaliYears$default2, 10));
        Iterator it2 = jalaliYears$default2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(String.valueOf(((Number) it2.next()).intValue()));
        }
        return CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: fast.dic.dict.presentation.wod_history_screen.WodHistoryViewModel$getYears$$inlined$sortedByDescending$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(Integer.parseInt((String) t2)), Integer.valueOf(Integer.parseInt((String) t)));
            }
        });
    }

    static /* synthetic */ List getJalaliYears$default(WodHistoryViewModel wodHistoryViewModel, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 1399;
        }
        return wodHistoryViewModel.getJalaliYears(i);
    }

    private final List<Integer> getJalaliYears(int startYear) {
        return CollectionsKt.toList(new IntRange(startYear, new PersianDate().getShYear()));
    }

    public final void getWodHistory(String year) {
        Intrinsics.checkNotNullParameter(year, "year");
        this._state.setValue(WodHistoryUIState.Loading.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new AnonymousClass1(year, null), 2, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.wod_history_screen.WodHistoryViewModel$getWodHistory$1, reason: invalid class name */
    /* JADX INFO: compiled from: WodHistoryViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.wod_history_screen.WodHistoryViewModel$getWodHistory$1", f = "WodHistoryViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $year;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$year = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WodHistoryViewModel.this.new AnonymousClass1(this.$year, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                WebService webService = WodHistoryViewModel.this.webService;
                String str = this.$year;
                final WodHistoryViewModel wodHistoryViewModel = WodHistoryViewModel.this;
                webService.getWodHistory(str, (Callback) new Callback<Map<String, ? extends List<? extends WodHistoryMonthDto>>>() { // from class: fast.dic.dict.presentation.wod_history_screen.WodHistoryViewModel.getWodHistory.1.1
                    @Override // retrofit2.Callback
                    public void onResponse(Call<Map<String, ? extends List<? extends WodHistoryMonthDto>>> p0, Response<Map<String, ? extends List<? extends WodHistoryMonthDto>>> p1) {
                        Intrinsics.checkNotNullParameter(p0, "p0");
                        Intrinsics.checkNotNullParameter(p1, "p1");
                        if (!p1.isSuccessful() || p1.body() == null) {
                            wodHistoryViewModel._state.setValue(new WodHistoryUIState.Error("Fail to load history."));
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        boolean zIsCurrentLanguagePersian = wodHistoryViewModel.isCurrentLanguagePersian();
                        Map<String, ? extends List<? extends WodHistoryMonthDto>> mapBody = p1.body();
                        if (mapBody != null) {
                            for (Map.Entry<String, ? extends List<? extends WodHistoryMonthDto>> entry : mapBody.entrySet()) {
                                arrayList.add(new WodHistoryMonthDto("", "", "", IntExtKt.getMonthName(Integer.parseInt(entry.getKey()), zIsCurrentLanguagePersian)));
                                arrayList.addAll(entry.getValue());
                            }
                        }
                        wodHistoryViewModel._state.setValue(new WodHistoryUIState.Data(arrayList));
                    }

                    @Override // retrofit2.Callback
                    public void onFailure(Call<Map<String, ? extends List<? extends WodHistoryMonthDto>>> p0, Throwable p1) {
                        Intrinsics.checkNotNullParameter(p0, "p0");
                        Intrinsics.checkNotNullParameter(p1, "p1");
                        MutableLiveData mutableLiveData = wodHistoryViewModel._state;
                        String localizedMessage = p1.getLocalizedMessage();
                        if (localizedMessage == null) {
                            localizedMessage = "Unknown error.";
                        }
                        mutableLiveData.setValue(new WodHistoryUIState.Error(localizedMessage));
                    }
                });
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
