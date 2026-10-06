package fast.dic.dict.presentation.favorite_folders_screen;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.ironsource.U3;
import com.vungle.ads.internal.protos.Sdk;
import fast.dic.dict.domain.entity.WordSortEnum;
import fast.dic.dict.helpers.database.couchbase.FDFavourite;
import fast.dic.dict.models.database.ListModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: DirectoryWordsViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001:\u00013B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u001e\u001a\u00020\u001f2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!H\u0002J\u0018\u0010#\u001a\u00020\u001f2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010$\u001a\u00020\u0018J\u0006\u0010%\u001a\u00020\u001fJ\u0006\u0010&\u001a\u00020\u001fJ\u0006\u0010'\u001a\u00020\u001fJ\u000e\u0010(\u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\"J\u000e\u0010*\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u0018J \u0010,\u001a\u00020\u001f2\u0018\u0010-\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"0!\u0012\u0004\u0012\u00020\u001f0.J\u000e\u0010/\u001a\u00020\u001f2\u0006\u00100\u001a\u00020\"J\u0016\u00101\u001a\u00020\u001f2\u0006\u00100\u001a\u00020\"2\u0006\u00102\u001a\u00020\u001aR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000Ê\u0001\u0002\b5¨\u00064"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;", "Landroidx/lifecycle/ViewModel;", "favorite", "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;", "<init>", "(Lfast/dic/dict/helpers/database/couchbase/FDFavourite;)V", "Ljavax/inject/Inject;", "_uiState", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;", "uiState", "Lkotlinx/coroutines/flow/StateFlow;", "getUiState", "()Lkotlinx/coroutines/flow/StateFlow;", "_events", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent;", "events", "Lkotlinx/coroutines/flow/SharedFlow;", "getEvents", "()Lkotlinx/coroutines/flow/SharedFlow;", "folderId", "", "sortBy", "Lfast/dic/dict/domain/entity/WordSortEnum;", "offset", "", "limit", "isLoadingMore", "", "postItems", "", "list", "", "Lfast/dic/dict/models/database/ListModel;", "init", "initialSort", "loadInitial", "loadMore", "refreshAfterSync", "deleteItem", "document", "changeSort", "newSort", "fetchAllFavoritesForShare", "callback", "Lkotlin/Function1;", "onItemSelected", "item", "onItemDeleteRequested", U3.i.L, "DirectoryEvent", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class DirectoryWordsViewModel extends ViewModel {
    private final MutableSharedFlow<DirectoryEvent> _events;
    private final MutableStateFlow<DirectoryWordsUiState> _uiState;
    private final SharedFlow<DirectoryEvent> events;
    private final FDFavourite favorite;
    private String folderId;
    private boolean isLoadingMore;
    private int limit;
    private int offset;
    private WordSortEnum sortBy;
    private final StateFlow<DirectoryWordsUiState> uiState;

    @Inject
    public DirectoryWordsViewModel(FDFavourite favorite) {
        Intrinsics.checkNotNullParameter(favorite, "favorite");
        this.favorite = favorite;
        MutableStateFlow<DirectoryWordsUiState> MutableStateFlow = StateFlowKt.MutableStateFlow(new DirectoryWordsUiState(null, false, 3, 0 == true ? 1 : 0));
        this._uiState = MutableStateFlow;
        this.uiState = FlowKt.asStateFlow(MutableStateFlow);
        MutableSharedFlow<DirectoryEvent> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 4, null, 5, null);
        this._events = mutableSharedFlowMutableSharedFlow$default;
        this.events = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
        this.sortBy = WordSortEnum.NEWEST;
        this.limit = 50;
    }

    public final StateFlow<DirectoryWordsUiState> getUiState() {
        return this.uiState;
    }

    public final SharedFlow<DirectoryEvent> getEvents() {
        return this.events;
    }

    /* JADX INFO: compiled from: DirectoryWordsViewModel.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent;", "", "<init>", "()V", "OpenWordResult", "OpenAi", "ConfirmDelete", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$ConfirmDelete;", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$OpenAi;", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$OpenWordResult;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static abstract class DirectoryEvent {
        public /* synthetic */ DirectoryEvent(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: DirectoryWordsViewModel.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$OpenWordResult;", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent;", "item", "Lfast/dic/dict/models/database/ListModel;", "<init>", "(Lfast/dic/dict/models/database/ListModel;)V", "getItem", "()Lfast/dic/dict/models/database/ListModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class OpenWordResult extends DirectoryEvent {
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

        private DirectoryEvent() {
        }

        /* JADX INFO: compiled from: DirectoryWordsViewModel.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$OpenAi;", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent;", "documentId", "", "<init>", "(Ljava/lang/String;)V", "getDocumentId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class OpenAi extends DirectoryEvent {
            private final String documentId;

            public static /* synthetic */ OpenAi copy$default(OpenAi openAi, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = openAi.documentId;
                }
                return openAi.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getDocumentId() {
                return this.documentId;
            }

            public final OpenAi copy(String documentId) {
                Intrinsics.checkNotNullParameter(documentId, "documentId");
                return new OpenAi(documentId);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof OpenAi) && Intrinsics.areEqual(this.documentId, ((OpenAi) other).documentId);
            }

            public int hashCode() {
                return this.documentId.hashCode();
            }

            public String toString() {
                return "OpenAi(documentId=" + this.documentId + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public OpenAi(String documentId) {
                super(null);
                Intrinsics.checkNotNullParameter(documentId, "documentId");
                this.documentId = documentId;
            }

            public final String getDocumentId() {
                return this.documentId;
            }
        }

        /* JADX INFO: compiled from: DirectoryWordsViewModel.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0005HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent$ConfirmDelete;", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent;", "item", "Lfast/dic/dict/models/database/ListModel;", U3.i.L, "", "<init>", "(Lfast/dic/dict/models/database/ListModel;I)V", "getItem", "()Lfast/dic/dict/models/database/ListModel;", "getPosition", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class ConfirmDelete extends DirectoryEvent {
            private final ListModel item;
            private final int position;

            public static /* synthetic */ ConfirmDelete copy$default(ConfirmDelete confirmDelete, ListModel listModel, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    listModel = confirmDelete.item;
                }
                if ((i2 & 2) != 0) {
                    i = confirmDelete.position;
                }
                return confirmDelete.copy(listModel, i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final ListModel getItem() {
                return this.item;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final int getPosition() {
                return this.position;
            }

            public final ConfirmDelete copy(ListModel item, int position) {
                Intrinsics.checkNotNullParameter(item, "item");
                return new ConfirmDelete(item, position);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof ConfirmDelete)) {
                    return false;
                }
                ConfirmDelete confirmDelete = (ConfirmDelete) other;
                return Intrinsics.areEqual(this.item, confirmDelete.item) && this.position == confirmDelete.position;
            }

            public int hashCode() {
                return (this.item.hashCode() * 31) + Integer.hashCode(this.position);
            }

            public String toString() {
                return "ConfirmDelete(item=" + this.item + ", position=" + this.position + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ConfirmDelete(ListModel item, int i) {
                super(null);
                Intrinsics.checkNotNullParameter(item, "item");
                this.item = item;
                this.position = i;
            }

            public final ListModel getItem() {
                return this.item;
            }

            public final int getPosition() {
                return this.position;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void postItems(List<ListModel> list) {
        this._uiState.setValue(new DirectoryWordsUiState(new ArrayList(list), this._uiState.getValue().isLoading()));
    }

    public final void init(String folderId, WordSortEnum initialSort) {
        Intrinsics.checkNotNullParameter(initialSort, "initialSort");
        this.folderId = folderId;
        this.sortBy = initialSort;
        loadInitial();
    }

    public final void loadInitial() {
        MutableStateFlow<DirectoryWordsUiState> mutableStateFlow = this._uiState;
        mutableStateFlow.setValue(DirectoryWordsUiState.copy$default(mutableStateFlow.getValue(), null, true, 1, null));
        String str = this.folderId;
        if (str == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45181(str, null), 2, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$loadInitial$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DirectoryWordsViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$loadInitial$1", f = "DirectoryWordsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45181 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45181(String str, Continuation<? super C45181> continuation) {
            super(2, continuation);
            this.$id = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DirectoryWordsViewModel.this.new C45181(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45181) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                DirectoryWordsViewModel.this.offset = 0;
                DirectoryWordsViewModel.this.limit = 50;
                ArrayList arrayList = FDFavourite.get$default(DirectoryWordsViewModel.this.favorite, null, this.$id, DirectoryWordsViewModel.this.limit, DirectoryWordsViewModel.this.offset, false, DirectoryWordsViewModel.this.sortBy, 16, null);
                DirectoryWordsViewModel.this.offset = arrayList.size();
                DirectoryWordsViewModel.this.postItems(arrayList);
                DirectoryWordsViewModel.this._uiState.setValue(DirectoryWordsUiState.copy$default((DirectoryWordsUiState) DirectoryWordsViewModel.this._uiState.getValue(), null, false, 1, null));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void loadMore() {
        String str = this.folderId;
        if (str == null || this.isLoadingMore) {
            return;
        }
        List<ListModel> items = this._uiState.getValue().getItems();
        if (items.size() >= this.favorite.count(str)) {
            return;
        }
        this.isLoadingMore = true;
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45191(str, items, null), 2, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$loadMore$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DirectoryWordsViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$loadMore$1", f = "DirectoryWordsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<ListModel> $current;
        final /* synthetic */ String $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45191(String str, List<ListModel> list, Continuation<? super C45191> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$current = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DirectoryWordsViewModel.this.new C45191(this.$id, this.$current, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45191) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                ArrayList arrayList = FDFavourite.get$default(DirectoryWordsViewModel.this.favorite, null, this.$id, 50, DirectoryWordsViewModel.this.offset, false, DirectoryWordsViewModel.this.sortBy, 16, null);
                ArrayList arrayList2 = new ArrayList(this.$current);
                arrayList2.addAll(arrayList);
                DirectoryWordsViewModel.this.offset = arrayList2.size();
                DirectoryWordsViewModel.this.postItems(arrayList2);
                DirectoryWordsViewModel.this.isLoadingMore = false;
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$refreshAfterSync$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DirectoryWordsViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$refreshAfterSync$1", f = "DirectoryWordsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45201 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45201(String str, Continuation<? super C45201> continuation) {
            super(2, continuation);
            this.$id = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DirectoryWordsViewModel.this.new C45201(this.$id, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45201) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                int size = ((DirectoryWordsUiState) DirectoryWordsViewModel.this._uiState.getValue()).getItems().size();
                if (size == 0) {
                    size = 50;
                }
                ArrayList arrayList = FDFavourite.get$default(DirectoryWordsViewModel.this.favorite, null, this.$id, size, 0, false, DirectoryWordsViewModel.this.sortBy, 16, null);
                DirectoryWordsViewModel.this.offset = arrayList.size();
                DirectoryWordsViewModel.this.postItems(arrayList);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void refreshAfterSync() {
        String str = this.folderId;
        if (str == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45201(str, null), 2, null);
    }

    public final void deleteItem(ListModel document) {
        Intrinsics.checkNotNullParameter(document, "document");
        String documentId = document.getDocumentId();
        if (documentId == null) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new AnonymousClass1(documentId, null), 2, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$deleteItem$1, reason: invalid class name */
    /* JADX INFO: compiled from: DirectoryWordsViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$deleteItem$1", f = "DirectoryWordsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $documentId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$documentId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DirectoryWordsViewModel.this.new AnonymousClass1(this.$documentId, continuation);
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
                DirectoryWordsViewModel.this.favorite.delete(this.$documentId);
                List mutableList = CollectionsKt.toMutableList((Collection) ((DirectoryWordsUiState) DirectoryWordsViewModel.this._uiState.getValue()).getItems());
                final String str = this.$documentId;
                if (CollectionsKt.removeAll(mutableList, new Function1() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$deleteItem$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return Boolean.valueOf(Intrinsics.areEqual(((ListModel) obj2).getDocumentId(), str));
                    }
                })) {
                    DirectoryWordsViewModel.this.offset = mutableList.size();
                    DirectoryWordsViewModel.this.postItems(mutableList);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void changeSort(WordSortEnum newSort) {
        Intrinsics.checkNotNullParameter(newSort, "newSort");
        this.sortBy = newSort;
        loadInitial();
    }

    public final void fetchAllFavoritesForShare(Function1<? super List<ListModel>, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        String str = this.folderId;
        if (str != null) {
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45171(str, callback, null), 2, null);
        } else {
            callback.invoke(CollectionsKt.emptyList());
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$fetchAllFavoritesForShare$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DirectoryWordsViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$fetchAllFavoritesForShare$1", f = "DirectoryWordsViewModel.kt", i = {0}, l = {Sdk.SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE}, m = "invokeSuspend", n = {"list"}, nl = {136}, s = {"L$0"}, v = 2)
    static final class C45171 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<List<ListModel>, Unit> $callback;
        final /* synthetic */ String $id;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C45171(String str, Function1<? super List<ListModel>, Unit> function1, Continuation<? super C45171> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$callback = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DirectoryWordsViewModel.this.new C45171(this.$id, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45171) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ArrayList arrayList = FDFavourite.get$default(DirectoryWordsViewModel.this.favorite, null, this.$id, 0, 0, true, DirectoryWordsViewModel.this.sortBy, 12, null);
                this.L$0 = SpillingKt.nullOutSpilledVariable(arrayList);
                this.label = 1;
                if (BuildersKt.withContext(Dispatchers.getMain(), new C14171(this.$callback, arrayList, null), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$fetchAllFavoritesForShare$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: DirectoryWordsViewModel.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsViewModel$fetchAllFavoritesForShare$1$1", f = "DirectoryWordsViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
        static final class C14171 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Function1<List<ListModel>, Unit> $callback;
            final /* synthetic */ ArrayList<ListModel> $list;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C14171(Function1<? super List<ListModel>, Unit> function1, ArrayList<ListModel> arrayList, Continuation<? super C14171> continuation) {
                super(2, continuation);
                this.$callback = function1;
                this.$list = arrayList;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C14171(this.$callback, this.$list, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C14171) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                this.$callback.invoke(this.$list);
                return Unit.INSTANCE;
            }
        }
    }

    public final void onItemSelected(ListModel item) {
        String wordHtml;
        Intrinsics.checkNotNullParameter(item, "item");
        if (Intrinsics.areEqual((Object) item.isTranslator(), (Object) true) && (wordHtml = item.getWordHtml()) != null && wordHtml.length() != 0) {
            String documentId = item.getDocumentId();
            if (documentId != null) {
                this._events.tryEmit(new DirectoryEvent.OpenAi(documentId));
                return;
            }
            return;
        }
        this._events.tryEmit(new DirectoryEvent.OpenWordResult(item));
    }

    public final void onItemDeleteRequested(ListModel item, int position) {
        Intrinsics.checkNotNullParameter(item, "item");
        this._events.tryEmit(new DirectoryEvent.ConfirmDelete(item, position));
    }
}
