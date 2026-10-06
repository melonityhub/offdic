package fast.dic.dict.presentation.categories_screen;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDWordCategory;
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

/* JADX INFO: compiled from: CategoriesViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\b\b¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fÊ\u0001\u0002\b\u0015¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;", "Landroidx/lifecycle/ViewModel;", "category", "Lfast/dic/dict/helpers/FDWordCategory;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "<init>", "(Lfast/dic/dict/helpers/FDWordCategory;Lfast/dic/dict/database/LocalStorage;)V", "Ljavax/inject/Inject;", "_state", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/categories_screen/CategoriesUIState;", "state", "Landroidx/lifecycle/LiveData;", "getState", "()Landroidx/lifecycle/LiveData;", "isCurrentLanguagePersian", "", "getCategories", "", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class CategoriesViewModel extends ViewModel {
    private MutableLiveData<CategoriesUIState> _state;
    private final FDWordCategory category;
    private final LocalStorage localStorage;
    private final LiveData<CategoriesUIState> state;

    @Inject
    public CategoriesViewModel(FDWordCategory category, LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        this.category = category;
        this.localStorage = localStorage;
        MutableLiveData<CategoriesUIState> mutableLiveData = new MutableLiveData<>(CategoriesUIState.Loading.INSTANCE);
        this._state = mutableLiveData;
        this.state = mutableLiveData;
    }

    public final LiveData<CategoriesUIState> getState() {
        return this.state;
    }

    public final boolean isCurrentLanguagePersian() {
        return this.localStorage.currentLanguageIsPersian();
    }

    public final void getCategories() {
        this._state.setValue(CategoriesUIState.Loading.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new AnonymousClass1(null), 2, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.categories_screen.CategoriesViewModel$getCategories$1, reason: invalid class name */
    /* JADX INFO: compiled from: CategoriesViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.categories_screen.CategoriesViewModel$getCategories$1", f = "CategoriesViewModel.kt", i = {0, 1}, l = {37, 45}, m = "invokeSuspend", n = {"$this$launch", "$this$launch"}, nl = {45, 46}, s = {"L$0", "L$0"}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = CategoriesViewModel.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: fast.dic.dict.presentation.categories_screen.CategoriesViewModel$getCategories$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: CategoriesViewModel.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.presentation.categories_screen.CategoriesViewModel$getCategories$1$1", f = "CategoriesViewModel.kt", i = {}, l = {34}, m = "invokeSuspend", n = {}, nl = {33}, s = {}, v = 2)
        static final class C14121 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            Object L$0;
            int label;
            final /* synthetic */ CategoriesViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14121(CategoriesViewModel categoriesViewModel, Continuation<? super C14121> continuation) {
                super(2, continuation);
                this.this$0 = categoriesViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C14121(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C14121) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                MutableLiveData mutableLiveData;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    MutableLiveData mutableLiveData2 = this.this$0._state;
                    this.L$0 = mutableLiveData2;
                    this.label = 1;
                    Object emptyCategories = this.this$0.category.getEmptyCategories(this);
                    if (emptyCategories == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj = emptyCategories;
                    mutableLiveData = mutableLiveData2;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutableLiveData = (MutableLiveData) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                mutableLiveData.postValue(new CategoriesUIState.Data((List) obj));
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0068, code lost:
        
            if (kotlinx.coroutines.BuildersKt__Builders_commonKt.async$default(r1, null, null, new fast.dic.dict.presentation.categories_screen.CategoriesViewModel.AnonymousClass1.AnonymousClass2(r10.this$0, null), 3, null).await(r10) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = r10.L$0
                r1 = r0
                kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r10.label
                r7 = 0
                r8 = 2
                r9 = 1
                if (r2 == 0) goto L24
                if (r2 == r9) goto L20
                if (r2 != r8) goto L18
                kotlin.ResultKt.throwOnFailure(r11)
                goto L6b
            L18:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r11)
                throw r10
            L20:
                kotlin.ResultKt.throwOnFailure(r11)
                goto L47
            L24:
                kotlin.ResultKt.throwOnFailure(r11)
                fast.dic.dict.presentation.categories_screen.CategoriesViewModel$getCategories$1$1 r11 = new fast.dic.dict.presentation.categories_screen.CategoriesViewModel$getCategories$1$1
                fast.dic.dict.presentation.categories_screen.CategoriesViewModel r2 = fast.dic.dict.presentation.categories_screen.CategoriesViewModel.this
                r11.<init>(r2, r7)
                r4 = r11
                kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4
                r5 = 3
                r6 = 0
                r2 = 0
                r3 = 0
                kotlinx.coroutines.Deferred r11 = kotlinx.coroutines.BuildersKt.async$default(r1, r2, r3, r4, r5, r6)
                r2 = r10
                kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                r10.L$0 = r1
                r10.label = r9
                java.lang.Object r11 = r11.await(r2)
                if (r11 != r0) goto L47
                goto L6a
            L47:
                fast.dic.dict.presentation.categories_screen.CategoriesViewModel$getCategories$1$2 r11 = new fast.dic.dict.presentation.categories_screen.CategoriesViewModel$getCategories$1$2
                fast.dic.dict.presentation.categories_screen.CategoriesViewModel r2 = fast.dic.dict.presentation.categories_screen.CategoriesViewModel.this
                r11.<init>(r2, r7)
                r4 = r11
                kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4
                r5 = 3
                r6 = 0
                r2 = 0
                r3 = 0
                kotlinx.coroutines.Deferred r11 = kotlinx.coroutines.BuildersKt.async$default(r1, r2, r3, r4, r5, r6)
                r2 = r10
                kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                java.lang.Object r1 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r1)
                r10.L$0 = r1
                r10.label = r8
                java.lang.Object r10 = r11.await(r2)
                if (r10 != r0) goto L6b
            L6a:
                return r0
            L6b:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: fast.dic.dict.presentation.categories_screen.CategoriesViewModel.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        /* JADX INFO: renamed from: fast.dic.dict.presentation.categories_screen.CategoriesViewModel$getCategories$1$2, reason: invalid class name */
        /* JADX INFO: compiled from: CategoriesViewModel.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.presentation.categories_screen.CategoriesViewModel$getCategories$1$2", f = "CategoriesViewModel.kt", i = {}, l = {40}, m = "invokeSuspend", n = {}, nl = {42}, s = {}, v = 2)
        static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ CategoriesViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(CategoriesViewModel categoriesViewModel, Continuation<? super AnonymousClass2> continuation) {
                super(2, continuation);
                this.this$0 = categoriesViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass2(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = this.this$0.category.getCategories(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.this$0._state.postValue(new CategoriesUIState.Data((List) obj));
                return Unit.INSTANCE;
            }
        }
    }
}
