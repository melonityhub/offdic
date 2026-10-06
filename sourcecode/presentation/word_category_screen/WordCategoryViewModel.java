package fast.dic.dict.presentation.word_category_screen;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.couchbase.lite.internal.core.C4Replicator;
import fast.dic.dict.helpers.FDWordCategory;
import fast.dic.dict.utils.LoggerKt;
import java.util.List;
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
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: WordCategoryViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u000f2\b\b\u0002\u0010\u0017\u001a\u00020\u0011J\u001c\u0010\u0018\u001a\u00020\u00152\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0017\u001a\u00020\u0011J\b\u0010\u001a\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u0013J\u000e\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0011J\u0006\u0010\u001e\u001a\u00020\u0015J\u0006\u0010\u001f\u001a\u00020\u0011J\u0006\u0010 \u001a\u00020!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000Ê\u0001\u0002\b#¨\u0006\""}, d2 = {"Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;", "Landroidx/lifecycle/ViewModel;", "category", "Lfast/dic/dict/helpers/FDWordCategory;", "<init>", "(Lfast/dic/dict/helpers/FDWordCategory;)V", "Ljavax/inject/Inject;", "_state", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState;", "state", "Landroidx/lifecycle/LiveData;", "getState", "()Landroidx/lifecycle/LiveData;", "_currentCategoryId", "", "_filter", "Lfast/dic/dict/helpers/FDWordCategory$Filter;", "_cefr", "", "getCategory", "", "categoryId", C4Replicator.REPLICATOR_OPTION_FILTER, "getCefrWords", "cefr", "getCurrentQuery", "filterAdapter", "query", "applyFilterAdapter", "clearFilter", "retrieveSelectedFilter", "hasAnyFilter", "", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class WordCategoryViewModel extends ViewModel {
    private String _cefr;
    private int _currentCategoryId;
    private FDWordCategory.Filter _filter;
    private MutableLiveData<WordCategoryUIState> _state;
    private final FDWordCategory category;
    private final LiveData<WordCategoryUIState> state;

    @Inject
    public WordCategoryViewModel(FDWordCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        this.category = category;
        MutableLiveData<WordCategoryUIState> mutableLiveData = new MutableLiveData<>(WordCategoryUIState.Loading.INSTANCE);
        this._state = mutableLiveData;
        this.state = mutableLiveData;
        this._currentCategoryId = -1;
        this._filter = new FDWordCategory.Filter(null, null, null, null, 15, null);
    }

    public final LiveData<WordCategoryUIState> getState() {
        return this.state;
    }

    public static /* synthetic */ void getCategory$default(WordCategoryViewModel wordCategoryViewModel, int i, FDWordCategory.Filter filter, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = wordCategoryViewModel._currentCategoryId;
        }
        if ((i2 & 2) != 0) {
            filter = wordCategoryViewModel._filter;
        }
        wordCategoryViewModel.getCategory(i, filter);
    }

    public final void getCategory(int categoryId, FDWordCategory.Filter filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        if (categoryId == -1) {
            LoggerKt.getLogger().debug("ignore getCategory cause categoryId == -1", new Object[0]);
            return;
        }
        this._currentCategoryId = categoryId;
        this._state.setValue(WordCategoryUIState.Loading.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new AnonymousClass1(categoryId, filter, null), 2, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.word_category_screen.WordCategoryViewModel$getCategory$1, reason: invalid class name */
    /* JADX INFO: compiled from: WordCategoryViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.word_category_screen.WordCategoryViewModel$getCategory$1", f = "WordCategoryViewModel.kt", i = {}, l = {36}, m = "invokeSuspend", n = {}, nl = {38}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $categoryId;
        final /* synthetic */ FDWordCategory.Filter $filter;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i, FDWordCategory.Filter filter, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$categoryId = i;
            this.$filter = filter;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WordCategoryViewModel.this.new AnonymousClass1(this.$categoryId, this.$filter, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = WordCategoryViewModel.this.category.getWords(this.$categoryId, this.$filter, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            WordCategoryViewModel.this._state.postValue(new WordCategoryUIState.Data((List) obj));
            return Unit.INSTANCE;
        }
    }

    public static /* synthetic */ void getCefrWords$default(WordCategoryViewModel wordCategoryViewModel, String str, FDWordCategory.Filter filter, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wordCategoryViewModel._cefr;
        }
        if ((i & 2) != 0) {
            filter = wordCategoryViewModel._filter;
        }
        wordCategoryViewModel.getCefrWords(str, filter);
    }

    public final void getCefrWords(String cefr, FDWordCategory.Filter filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        String str = cefr;
        if (str == null || str.length() == 0) {
            return;
        }
        this._state.setValue(WordCategoryUIState.Loading.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45321(cefr, filter, null), 2, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.word_category_screen.WordCategoryViewModel$getCefrWords$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: WordCategoryViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.word_category_screen.WordCategoryViewModel$getCefrWords$1", f = "WordCategoryViewModel.kt", i = {}, l = {52}, m = "invokeSuspend", n = {}, nl = {54}, s = {}, v = 2)
    static final class C45321 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $cefr;
        final /* synthetic */ FDWordCategory.Filter $filter;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45321(String str, FDWordCategory.Filter filter, Continuation<? super C45321> continuation) {
            super(2, continuation);
            this.$cefr = str;
            this.$filter = filter;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WordCategoryViewModel.this.new C45321(this.$cefr, this.$filter, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45321) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = WordCategoryViewModel.this.category.getWords(this.$cefr, this.$filter, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            WordCategoryViewModel.this._state.postValue(new WordCategoryUIState.Data((List) obj));
            return Unit.INSTANCE;
        }
    }

    public final String getCurrentQuery() {
        return this._filter.getSearch();
    }

    public final void filterAdapter(String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        this._filter = FDWordCategory.Filter.copy$default(this._filter, query, null, null, null, 14, null);
        String str = this._cefr;
        if (str == null || str.length() == 0) {
            getCategory(this._currentCategoryId, this._filter);
        } else {
            getCefrWords(this._cefr, this._filter);
        }
    }

    public final void applyFilterAdapter(FDWordCategory.Filter filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        this._filter = filter;
        String str = this._cefr;
        if (str == null || str.length() == 0) {
            getCategory(this._currentCategoryId, this._filter);
        } else {
            getCefrWords(this._cefr, this._filter);
        }
    }

    public final void clearFilter() {
        this._filter = new FDWordCategory.Filter(null, null, null, null, 15, null);
        String str = this._cefr;
        if (str == null || str.length() == 0) {
            getCategory(this._currentCategoryId, this._filter);
        } else {
            getCefrWords(this._cefr, this._filter);
        }
    }

    /* JADX INFO: renamed from: retrieveSelectedFilter, reason: from getter */
    public final FDWordCategory.Filter get_filter() {
        return this._filter;
    }

    public final boolean hasAnyFilter() {
        String search = this._filter.getSearch();
        if ((search != null && search.length() != 0) || this._filter.getCerf() != null) {
            return true;
        }
        String subCategory = this._filter.getSubCategory();
        return ((subCategory == null || subCategory.length() == 0) && this._filter.getMostCommon() == null) ? false : true;
    }
}
