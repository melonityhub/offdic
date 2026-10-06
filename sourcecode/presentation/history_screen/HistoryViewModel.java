package fast.dic.dict.presentation.history_screen;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.ironsource.U3;
import com.yandex.div.core.timer.TimerController;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.domain.entity.WordSortEnum;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.models.database.PagingListModel;
import fast.dic.dict.utils.Category;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: HistoryViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001=B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\b\b¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0018J\u000e\u0010'\u001a\u00020%2\u0006\u0010(\u001a\u00020\u001dJ\u0006\u0010)\u001a\u00020%J\u0010\u0010*\u001a\u00020%2\u0006\u0010+\u001a\u00020,H\u0002J\u000e\u0010-\u001a\u00020%2\u0006\u0010.\u001a\u00020 J\u000e\u0010/\u001a\u00020%2\u0006\u00100\u001a\u00020\u001dJ\u000e\u00101\u001a\u00020%2\u0006\u00102\u001a\u000203J\u000e\u00104\u001a\u00020%2\u0006\u00105\u001a\u00020\u001dJ\u000e\u00106\u001a\u00020%2\u0006\u00105\u001a\u00020\u001dJ\u000e\u00107\u001a\u00020%2\u0006\u00108\u001a\u000209J\u0006\u0010:\u001a\u00020%J\u0006\u0010;\u001a\u00020%J\u0006\u0010<\u001a\u00020%R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0014¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001eR\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010!\u001a\u00020 8F¢\u0006\u0006\u001a\u0004\b\"\u0010#Ê\u0001\u0002\b?¨\u0006>"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryViewModel;", "Landroidx/lifecycle/ViewModel;", "history", "Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "<init>", "(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/database/LocalStorage;)V", "Ljavax/inject/Inject;", "_uiState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lfast/dic/dict/presentation/history_screen/HistoryUiState;", "uiState", "Lkotlinx/coroutines/flow/StateFlow;", "getUiState", "()Lkotlinx/coroutines/flow/StateFlow;", "_events", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;", "events", "Lkotlinx/coroutines/flow/SharedFlow;", "getEvents", "()Lkotlinx/coroutines/flow/SharedFlow;", "value", "Lfast/dic/dict/models/database/PagingListModel;", "currentPaging", "getCurrentPaging", "()Lfast/dic/dict/models/database/PagingListModel;", "currentCategory", "", "Ljava/lang/Integer;", "_currentSort", "Lfast/dic/dict/domain/entity/WordSortEnum;", "currentSort", "getCurrentSort", "()Lfast/dic/dict/domain/entity/WordSortEnum;", "restorePaging", "", "paging", "loadInitial", "categoryIndex", "loadMore", "loadPage", TimerController.RESET_COMMAND, "", "updateSort", "sort", "updateCategory", "index", "onItemSelected", "item", "Lfast/dic/dict/models/database/ListModel;", "onItemDeleteRequested", U3.i.L, "deleteItemAt", "deleteByDocumentId", "documentId", "", "restoreCurrentList", "clear", "onSynced", "HistoryEvent", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class HistoryViewModel extends ViewModel {
    private WordSortEnum _currentSort;
    private final MutableSharedFlow<HistoryEvent> _events;
    private final MutableStateFlow<HistoryUiState> _uiState;
    private Integer currentCategory;
    private PagingListModel currentPaging;
    private final SharedFlow<HistoryEvent> events;
    private final FDHistory history;
    private final LocalStorage localStorage;
    private final StateFlow<HistoryUiState> uiState;

    @Inject
    public HistoryViewModel(FDHistory history, LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(history, "history");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        this.history = history;
        this.localStorage = localStorage;
        MutableStateFlow<HistoryUiState> MutableStateFlow = StateFlowKt.MutableStateFlow(new HistoryUiState(CollectionsKt.emptyList()));
        this._uiState = MutableStateFlow;
        this.uiState = MutableStateFlow;
        MutableSharedFlow<HistoryEvent> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 4, null, 5, null);
        this._events = mutableSharedFlowMutableSharedFlow$default;
        this.events = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
        this._currentSort = localStorage.getSelectedSort();
        PagingListModel pagingListModel = new PagingListModel(0, 0, null, null, 15, null);
        pagingListModel.setLimit(50);
        pagingListModel.setOffset(0);
        pagingListModel.setListModel(null);
        pagingListModel.setCategory(this.currentCategory);
        this.currentPaging = pagingListModel;
    }

    public final StateFlow<HistoryUiState> getUiState() {
        return this.uiState;
    }

    public final SharedFlow<HistoryEvent> getEvents() {
        return this.events;
    }

    /* JADX INFO: compiled from: HistoryViewModel.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;", "", "<init>", "()V", "OpenWordResult", "ConfirmDelete", "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;", "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$OpenWordResult;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static abstract class HistoryEvent {
        public /* synthetic */ HistoryEvent(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: HistoryViewModel.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$OpenWordResult;", "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;", "item", "Lfast/dic/dict/models/database/ListModel;", "<init>", "(Lfast/dic/dict/models/database/ListModel;)V", "getItem", "()Lfast/dic/dict/models/database/ListModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class OpenWordResult extends HistoryEvent {
            private final ListModel item;

            public static /* synthetic */ OpenWordResult copy$default(OpenWordResult openWordResult, ListModel listModel, int i, Object obj) {
                if ((i & 1) != 0) {
                    listModel = openWordResult.item;
                }
                return openWordResult.copy(listModel);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final ListModel getItem() {
                return this.item;
            }

            public final OpenWordResult copy(ListModel item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return new OpenWordResult(item);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof OpenWordResult) && Intrinsics.areEqual(this.item, ((OpenWordResult) other).item);
            }

            public int hashCode() {
                return this.item.hashCode();
            }

            public String toString() {
                return "OpenWordResult(item=" + this.item + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public OpenWordResult(ListModel item) {
                super(null);
                Intrinsics.checkNotNullParameter(item, "item");
                this.item = item;
            }

            public final ListModel getItem() {
                return this.item;
            }
        }

        private HistoryEvent() {
        }

        /* JADX INFO: compiled from: HistoryViewModel.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0007HÆ\u0003J)\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0083\u0004J\n\u0010\u0018\u001a\u00020\u0007HÖ\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0005HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;", "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;", "item", "Lfast/dic/dict/models/database/ListModel;", "documentId", "", U3.i.L, "", "<init>", "(Lfast/dic/dict/models/database/ListModel;Ljava/lang/String;I)V", "getItem", "()Lfast/dic/dict/models/database/ListModel;", "getDocumentId", "()Ljava/lang/String;", "getPosition", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class ConfirmDelete extends HistoryEvent {
            private final String documentId;
            private final ListModel item;
            private final int position;

            public static /* synthetic */ ConfirmDelete copy$default(ConfirmDelete confirmDelete, ListModel listModel, String str, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    listModel = confirmDelete.item;
                }
                if ((i2 & 2) != 0) {
                    str = confirmDelete.documentId;
                }
                if ((i2 & 4) != 0) {
                    i = confirmDelete.position;
                }
                return confirmDelete.copy(listModel, str, i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final ListModel getItem() {
                return this.item;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getDocumentId() {
                return this.documentId;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final int getPosition() {
                return this.position;
            }

            public final ConfirmDelete copy(ListModel item, String documentId, int position) {
                Intrinsics.checkNotNullParameter(item, "item");
                return new ConfirmDelete(item, documentId, position);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ConfirmDelete)) {
                    return false;
                }
                ConfirmDelete confirmDelete = (ConfirmDelete) other;
                return Intrinsics.areEqual(this.item, confirmDelete.item) && Intrinsics.areEqual(this.documentId, confirmDelete.documentId) && this.position == confirmDelete.position;
            }

            public int hashCode() {
                int iHashCode = this.item.hashCode() * 31;
                String str = this.documentId;
                return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.position);
            }

            public String toString() {
                return "ConfirmDelete(item=" + this.item + ", documentId=" + this.documentId + ", position=" + this.position + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ConfirmDelete(ListModel item, String str, int i) {
                super(null);
                Intrinsics.checkNotNullParameter(item, "item");
                this.item = item;
                this.documentId = str;
                this.position = i;
            }

            public final String getDocumentId() {
                return this.documentId;
            }

            public final ListModel getItem() {
                return this.item;
            }

            public final int getPosition() {
                return this.position;
            }
        }
    }

    public final PagingListModel getCurrentPaging() {
        return this.currentPaging;
    }

    /* JADX INFO: renamed from: getCurrentSort, reason: from getter */
    public final WordSortEnum get_currentSort() {
        return this._currentSort;
    }

    public final void restorePaging(PagingListModel paging) {
        Intrinsics.checkNotNullParameter(paging, "paging");
        this.currentPaging = paging;
        MutableStateFlow<HistoryUiState> mutableStateFlow = this._uiState;
        Collection listModel = paging.getListModel();
        if (listModel == null) {
            listModel = CollectionsKt.emptyList();
        }
        mutableStateFlow.setValue(new HistoryUiState(new ArrayList(listModel)));
        this.currentCategory = paging.getCategory();
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0004  */
    public final void loadInitial(int categoryIndex) {
        Integer numValueOf;
        if (categoryIndex == 0) {
            numValueOf = null;
        } else if (categoryIndex == 1) {
            numValueOf = Integer.valueOf(Category.Persian.getRawValue());
        } else if (categoryIndex != 2) {
            numValueOf = null;
        } else {
            numValueOf = Integer.valueOf(Category.English.getRawValue());
        }
        this.currentCategory = numValueOf;
        PagingListModel pagingListModel = new PagingListModel(0, 0, null, null, 15, null);
        pagingListModel.setLimit(50);
        pagingListModel.setOffset(0);
        pagingListModel.setListModel(null);
        pagingListModel.setCategory(this.currentCategory);
        this.currentPaging = pagingListModel;
        loadPage(true);
    }

    public final void loadMore() {
        loadPage(false);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.history_screen.HistoryViewModel$loadPage$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: HistoryViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.history_screen.HistoryViewModel$loadPage$1", f = "HistoryViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45271 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $reset;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45271(boolean z, Continuation<? super C45271> continuation) {
            super(2, continuation);
            this.$reset = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HistoryViewModel.this.new C45271(this.$reset, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45271) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ArrayList arrayList;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            PagingListModel currentPaging = HistoryViewModel.this.getCurrentPaging();
            if (currentPaging == null) {
                PagingListModel pagingListModel = new PagingListModel(0, 0, null, null, 15, null);
                HistoryViewModel.this.currentPaging = pagingListModel;
                currentPaging = pagingListModel;
            }
            List list = FDHistory.get$default(HistoryViewModel.this.history, HistoryViewModel.this.currentCategory, currentPaging.getLimit(), this.$reset ? 0 : currentPaging.getOffset(), false, false, HistoryViewModel.this.get_currentSort(), 24, null);
            if (this.$reset) {
                List mutableList = CollectionsKt.toMutableList((Collection) list);
                List list2 = mutableList;
                if (!list2.isEmpty()) {
                    ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
                    if (!((ListModel) CollectionsKt.first(mutableList)).isLast()) {
                        listModel.setLast(true);
                        mutableList.add(0, listModel);
                    }
                }
                currentPaging.setListModel(new ArrayList<>(list2));
                ArrayList<ListModel> listModel2 = currentPaging.getListModel();
                currentPaging.setOffset(listModel2 != null ? listModel2.size() : 0);
                MutableStateFlow mutableStateFlow = HistoryViewModel.this._uiState;
                Collection listModel3 = currentPaging.getListModel();
                if (listModel3 == null) {
                    listModel3 = CollectionsKt.emptyList();
                }
                mutableStateFlow.setValue(new HistoryUiState(new ArrayList(listModel3)));
            } else {
                ArrayList<ListModel> listModel4 = currentPaging.getListModel();
                if (listModel4 == null || (arrayList = CollectionsKt.toMutableList((Collection) listModel4)) == null) {
                    arrayList = new ArrayList();
                }
                arrayList.addAll(list);
                currentPaging.setListModel(new ArrayList<>(arrayList));
                ArrayList<ListModel> listModel5 = currentPaging.getListModel();
                currentPaging.setOffset(listModel5 != null ? listModel5.size() : 0);
                MutableStateFlow mutableStateFlow2 = HistoryViewModel.this._uiState;
                Collection listModel6 = currentPaging.getListModel();
                if (listModel6 == null) {
                    listModel6 = CollectionsKt.emptyList();
                }
                mutableStateFlow2.setValue(new HistoryUiState(new ArrayList(listModel6)));
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadPage(boolean reset) {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45271(reset, null), 3, null);
    }

    public final void updateSort(WordSortEnum sort) {
        Intrinsics.checkNotNullParameter(sort, "sort");
        this._currentSort = sort;
        PagingListModel pagingListModel = new PagingListModel(0, 0, null, null, 15, null);
        pagingListModel.setLimit(50);
        pagingListModel.setOffset(0);
        pagingListModel.setListModel(null);
        pagingListModel.setCategory(this.currentCategory);
        this.currentPaging = pagingListModel;
        loadPage(true);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0004  */
    public final void updateCategory(int index) {
        Integer numValueOf;
        if (index == 0) {
            numValueOf = null;
        } else if (index == 1) {
            numValueOf = Integer.valueOf(Category.Persian.getRawValue());
        } else if (index != 2) {
            numValueOf = null;
        } else {
            numValueOf = Integer.valueOf(Category.English.getRawValue());
        }
        this.currentCategory = numValueOf;
        PagingListModel pagingListModel = new PagingListModel(0, 0, null, null, 15, null);
        pagingListModel.setLimit(50);
        pagingListModel.setOffset(0);
        pagingListModel.setListModel(null);
        pagingListModel.setCategory(this.currentCategory);
        this.currentPaging = pagingListModel;
        loadPage(true);
    }

    public final void onItemSelected(ListModel item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this._events.tryEmit(new HistoryEvent.OpenWordResult(item));
    }

    public final void onItemDeleteRequested(int position) {
        ArrayList<ListModel> listModel;
        ListModel listModel2;
        PagingListModel pagingListModel = this.currentPaging;
        if (pagingListModel == null || (listModel = pagingListModel.getListModel()) == null || (listModel2 = (ListModel) CollectionsKt.getOrNull(listModel, position)) == null) {
            return;
        }
        this._events.tryEmit(new HistoryEvent.ConfirmDelete(listModel2, listModel2.getDocumentId(), position));
    }

    public final void deleteItemAt(int position) {
        ArrayList<ListModel> listModel;
        PagingListModel pagingListModel = this.currentPaging;
        if (pagingListModel != null && (listModel = pagingListModel.getListModel()) != null && position >= 0 && position < listModel.size()) {
            ListModel listModel2 = listModel.get(position);
            Intrinsics.checkNotNullExpressionValue(listModel2, "get(...)");
            ListModel listModel3 = listModel2;
            listModel.remove(position);
            pagingListModel.setListModel(new ArrayList<>(listModel));
            ArrayList<ListModel> listModel4 = pagingListModel.getListModel();
            pagingListModel.setOffset(listModel4 != null ? listModel4.size() : 0);
            MutableStateFlow<HistoryUiState> mutableStateFlow = this._uiState;
            Collection listModel5 = pagingListModel.getListModel();
            if (listModel5 == null) {
                listModel5 = CollectionsKt.emptyList();
            }
            mutableStateFlow.setValue(new HistoryUiState(new ArrayList(listModel5)));
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45261(listModel3, this, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.history_screen.HistoryViewModel$deleteItemAt$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: HistoryViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.history_screen.HistoryViewModel$deleteItemAt$1", f = "HistoryViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45261 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ ListModel $item;
        int label;
        final /* synthetic */ HistoryViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45261(ListModel listModel, HistoryViewModel historyViewModel, Continuation<? super C45261> continuation) {
            super(2, continuation);
            this.$item = listModel;
            this.this$0 = historyViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C45261(this.$item, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45261) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String documentId = this.$item.getDocumentId();
            if (documentId != null) {
                this.this$0.history.delete(documentId);
            }
            this.this$0.loadPage(true);
            return Unit.INSTANCE;
        }
    }

    public final void deleteByDocumentId(String documentId) {
        ArrayList<ListModel> listModel;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        PagingListModel pagingListModel = this.currentPaging;
        if (pagingListModel == null || (listModel = pagingListModel.getListModel()) == null) {
            return;
        }
        Iterator<ListModel> it = listModel.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(it.next().getDocumentId(), documentId)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(listModel.get(i), "get(...)");
        listModel.remove(i);
        pagingListModel.setListModel(new ArrayList<>(listModel));
        ArrayList<ListModel> listModel2 = pagingListModel.getListModel();
        pagingListModel.setOffset(listModel2 != null ? listModel2.size() : 0);
        MutableStateFlow<HistoryUiState> mutableStateFlow = this._uiState;
        Collection listModel3 = pagingListModel.getListModel();
        if (listModel3 == null) {
            listModel3 = CollectionsKt.emptyList();
        }
        mutableStateFlow.setValue(new HistoryUiState(new ArrayList(listModel3)));
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45251(documentId, null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.history_screen.HistoryViewModel$deleteByDocumentId$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: HistoryViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.history_screen.HistoryViewModel$deleteByDocumentId$1", f = "HistoryViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45251 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $documentId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45251(String str, Continuation<? super C45251> continuation) {
            super(2, continuation);
            this.$documentId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HistoryViewModel.this.new C45251(this.$documentId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45251) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                HistoryViewModel.this.history.delete(this.$documentId);
                HistoryViewModel.this.loadPage(true);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void restoreCurrentList() {
        Collection collectionEmptyList;
        MutableStateFlow<HistoryUiState> mutableStateFlow = this._uiState;
        PagingListModel pagingListModel = this.currentPaging;
        if (pagingListModel == null || (collectionEmptyList = pagingListModel.getListModel()) == null) {
            collectionEmptyList = CollectionsKt.emptyList();
        }
        mutableStateFlow.setValue(new HistoryUiState(new ArrayList(collectionEmptyList)));
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.history_screen.HistoryViewModel$clear$1, reason: invalid class name */
    /* JADX INFO: compiled from: HistoryViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.history_screen.HistoryViewModel$clear$1", f = "HistoryViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HistoryViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Collection collectionEmptyList;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            HistoryViewModel historyViewModel = HistoryViewModel.this;
            PagingListModel pagingListModel = new PagingListModel(0, 0, null, null, 15, null);
            HistoryViewModel historyViewModel2 = HistoryViewModel.this;
            pagingListModel.setLimit(50);
            pagingListModel.setOffset(0);
            pagingListModel.setListModel(null);
            pagingListModel.setCategory(historyViewModel2.currentCategory);
            historyViewModel.currentPaging = pagingListModel;
            MutableStateFlow mutableStateFlow = HistoryViewModel.this._uiState;
            PagingListModel currentPaging = HistoryViewModel.this.getCurrentPaging();
            if (currentPaging == null || (collectionEmptyList = currentPaging.getListModel()) == null) {
                collectionEmptyList = CollectionsKt.emptyList();
            }
            mutableStateFlow.setValue(new HistoryUiState(new ArrayList(collectionEmptyList)));
            return Unit.INSTANCE;
        }
    }

    public final void clear() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(null), 3, null);
    }

    public final void onSynced() {
        PagingListModel pagingListModel = new PagingListModel(0, 0, null, null, 15, null);
        pagingListModel.setLimit(50);
        pagingListModel.setOffset(0);
        pagingListModel.setListModel(null);
        pagingListModel.setCategory(this.currentCategory);
        this.currentPaging = pagingListModel;
        loadPage(true);
    }
}
