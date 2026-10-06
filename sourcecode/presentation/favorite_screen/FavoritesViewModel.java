package fast.dic.dict.presentation.favorite_screen;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vungle.ads.internal.protos.Sdk;
import fast.dic.dict.helpers.FDWordCategory;
import fast.dic.dict.helpers.database.couchbase.FDFavourite;
import fast.dic.dict.helpers.database.couchbase.FDFavouriteFolder;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.models.database.FolderModel;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: compiled from: FavoritesViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001.B-\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u001a\u0002\b\f¢\u0006\u0004\b\n\u0010\u000bJ\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001e\u001a\u00020\u001cJ\u0014\u0010\u001f\u001a\u00020\u001c2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!J\u001c\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\"2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001c0&J\u0016\u0010'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020)J\u000e\u0010+\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\"J\u000e\u0010,\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\"J\u000e\u0010-\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\"R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aÊ\u0001\u0002\b0¨\u0006/"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;", "Landroidx/lifecycle/ViewModel;", "history", "Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "favorite", "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;", "favouriteFolder", "Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;", "wordCategory", "Lfast/dic/dict/helpers/FDWordCategory;", "<init>", "(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;Lfast/dic/dict/helpers/FDWordCategory;)V", "Ljavax/inject/Inject;", "_state", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState;", "state", "Landroidx/lifecycle/LiveData;", "getState", "()Landroidx/lifecycle/LiveData;", "_events", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;", "events", "Lkotlinx/coroutines/flow/SharedFlow;", "getEvents", "()Lkotlinx/coroutines/flow/SharedFlow;", "getFolders", "", "getOnlyFavoriteFolders", "getFoldersNoLoading", "updateFolderOrder", "list", "", "Lfast/dic/dict/models/database/FolderModel;", "deleteFolder", "folder", "complete", "Lkotlin/Function0;", "updateFolder", "wordId", "", "folderId", "onFolderClicked", "onEditRequested", "onDeleteRequested", "FavoritesEvent", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FavoritesViewModel extends ViewModel {
    private final MutableSharedFlow<FavoritesEvent> _events;
    private MutableLiveData<FavoritesUIState> _state;
    private final SharedFlow<FavoritesEvent> events;
    private final FDFavourite favorite;
    private final FDFavouriteFolder favouriteFolder;
    private final FDHistory history;
    private final LiveData<FavoritesUIState> state;
    private final FDWordCategory wordCategory;

    @Inject
    public FavoritesViewModel(FDHistory history, FDFavourite favorite, FDFavouriteFolder favouriteFolder, FDWordCategory wordCategory) {
        Intrinsics.checkNotNullParameter(history, "history");
        Intrinsics.checkNotNullParameter(favorite, "favorite");
        Intrinsics.checkNotNullParameter(favouriteFolder, "favouriteFolder");
        Intrinsics.checkNotNullParameter(wordCategory, "wordCategory");
        this.history = history;
        this.favorite = favorite;
        this.favouriteFolder = favouriteFolder;
        this.wordCategory = wordCategory;
        MutableLiveData<FavoritesUIState> mutableLiveData = new MutableLiveData<>(FavoritesUIState.Loading.INSTANCE);
        this._state = mutableLiveData;
        this.state = mutableLiveData;
        MutableSharedFlow<FavoritesEvent> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 4, null, 5, null);
        this._events = mutableSharedFlowMutableSharedFlow$default;
        this.events = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
    }

    public final LiveData<FavoritesUIState> getState() {
        return this.state;
    }

    public final SharedFlow<FavoritesEvent> getEvents() {
        return this.events;
    }

    /* JADX INFO: compiled from: FavoritesViewModel.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;", "", "<init>", "()V", "OpenFolder", "EditFolder", "ConfirmDelete", "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$ConfirmDelete;", "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;", "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$OpenFolder;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static abstract class FavoritesEvent {
        public /* synthetic */ FavoritesEvent(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: FavoritesViewModel.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$OpenFolder;", "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;", "folder", "Lfast/dic/dict/models/database/FolderModel;", "<init>", "(Lfast/dic/dict/models/database/FolderModel;)V", "getFolder", "()Lfast/dic/dict/models/database/FolderModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class OpenFolder extends FavoritesEvent {
            private final FolderModel folder;

            public static /* synthetic */ OpenFolder copy$default(OpenFolder openFolder, FolderModel folderModel, int i, Object obj) {
                if ((i & 1) != 0) {
                    folderModel = openFolder.folder;
                }
                return openFolder.copy(folderModel);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final FolderModel getFolder() {
                return this.folder;
            }

            public final OpenFolder copy(FolderModel folder) {
                Intrinsics.checkNotNullParameter(folder, "folder");
                return new OpenFolder(folder);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof OpenFolder) && Intrinsics.areEqual(this.folder, ((OpenFolder) other).folder);
            }

            public int hashCode() {
                return this.folder.hashCode();
            }

            public String toString() {
                return "OpenFolder(folder=" + this.folder + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public OpenFolder(FolderModel folder) {
                super(null);
                Intrinsics.checkNotNullParameter(folder, "folder");
                this.folder = folder;
            }

            public final FolderModel getFolder() {
                return this.folder;
            }
        }

        private FavoritesEvent() {
        }

        /* JADX INFO: compiled from: FavoritesViewModel.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;", "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;", "folder", "Lfast/dic/dict/models/database/FolderModel;", "<init>", "(Lfast/dic/dict/models/database/FolderModel;)V", "getFolder", "()Lfast/dic/dict/models/database/FolderModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class EditFolder extends FavoritesEvent {
            private final FolderModel folder;

            public static /* synthetic */ EditFolder copy$default(EditFolder editFolder, FolderModel folderModel, int i, Object obj) {
                if ((i & 1) != 0) {
                    folderModel = editFolder.folder;
                }
                return editFolder.copy(folderModel);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final FolderModel getFolder() {
                return this.folder;
            }

            public final EditFolder copy(FolderModel folder) {
                Intrinsics.checkNotNullParameter(folder, "folder");
                return new EditFolder(folder);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof EditFolder) && Intrinsics.areEqual(this.folder, ((EditFolder) other).folder);
            }

            public int hashCode() {
                return this.folder.hashCode();
            }

            public String toString() {
                return "EditFolder(folder=" + this.folder + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public EditFolder(FolderModel folder) {
                super(null);
                Intrinsics.checkNotNullParameter(folder, "folder");
                this.folder = folder;
            }

            public final FolderModel getFolder() {
                return this.folder;
            }
        }

        /* JADX INFO: compiled from: FavoritesViewModel.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$ConfirmDelete;", "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;", "folder", "Lfast/dic/dict/models/database/FolderModel;", "<init>", "(Lfast/dic/dict/models/database/FolderModel;)V", "getFolder", "()Lfast/dic/dict/models/database/FolderModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final /* data */ class ConfirmDelete extends FavoritesEvent {
            private final FolderModel folder;

            public static /* synthetic */ ConfirmDelete copy$default(ConfirmDelete confirmDelete, FolderModel folderModel, int i, Object obj) {
                if ((i & 1) != 0) {
                    folderModel = confirmDelete.folder;
                }
                return confirmDelete.copy(folderModel);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final FolderModel getFolder() {
                return this.folder;
            }

            public final ConfirmDelete copy(FolderModel folder) {
                Intrinsics.checkNotNullParameter(folder, "folder");
                return new ConfirmDelete(folder);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof ConfirmDelete) && Intrinsics.areEqual(this.folder, ((ConfirmDelete) other).folder);
            }

            public int hashCode() {
                return this.folder.hashCode();
            }

            public String toString() {
                return "ConfirmDelete(folder=" + this.folder + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ConfirmDelete(FolderModel folder) {
                super(null);
                Intrinsics.checkNotNullParameter(folder, "folder");
                this.folder = folder;
            }

            public final FolderModel getFolder() {
                return this.folder;
            }
        }
    }

    public final void getFolders() {
        this._state.setValue(FavoritesUIState.Loading.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45211(null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$getFolders$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FavoritesViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$getFolders$1", f = "FavoritesViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45211 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C45211(Continuation<? super C45211> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FavoritesViewModel.this.new C45211(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45211) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new FolderModel(Boxing.boxInt(FavoritesViewModel.this.wordCategory.getCategoryCount()), "", null, null, null, false, true, null, 188, null));
            arrayList.add(new FolderModel(Boxing.boxInt(FavoritesViewModel.this.history.count(null)), "", null, null, null, true, false, null, Sdk.SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, null));
            arrayList.addAll(FavoritesViewModel.this.favouriteFolder.get());
            FavoritesViewModel.this._state.postValue(new FavoritesUIState.Data(arrayList));
            return Unit.INSTANCE;
        }
    }

    public final void getOnlyFavoriteFolders() {
        this._state.setValue(FavoritesUIState.Loading.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45231(null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$getOnlyFavoriteFolders$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FavoritesViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$getOnlyFavoriteFolders$1", f = "FavoritesViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45231 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C45231(Continuation<? super C45231> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FavoritesViewModel.this.new C45231(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45231) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            FavoritesViewModel.this._state.postValue(new FavoritesUIState.Data(FavoritesViewModel.this.favouriteFolder.get()));
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$getFoldersNoLoading$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FavoritesViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$getFoldersNoLoading$1", f = "FavoritesViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45221 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C45221(Continuation<? super C45221> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FavoritesViewModel.this.new C45221(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45221) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new FolderModel(Boxing.boxInt(FavoritesViewModel.this.wordCategory.getCategoryCount()), "", null, null, null, false, true, null, 188, null));
            arrayList.add(new FolderModel(Boxing.boxInt(FavoritesViewModel.this.history.count(null)), "", null, null, null, true, false, null, Sdk.SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, null));
            arrayList.addAll(FavoritesViewModel.this.favouriteFolder.get());
            FavoritesViewModel.this._state.postValue(new FavoritesUIState.Data(arrayList));
            return Unit.INSTANCE;
        }
    }

    public final void getFoldersNoLoading() {
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45221(null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$updateFolderOrder$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FavoritesViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$updateFolderOrder$1", f = "FavoritesViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45241 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<FolderModel> $list;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45241(List<FolderModel> list, Continuation<? super C45241> continuation) {
            super(2, continuation);
            this.$list = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FavoritesViewModel.this.new C45241(this.$list, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45241) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                FavoritesViewModel.this.favouriteFolder.refreshPosition(this.$list);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void updateFolderOrder(List<FolderModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new C45241(list, null), 3, null);
    }

    public final void deleteFolder(FolderModel folder, final Function0<Unit> complete) {
        Intrinsics.checkNotNullParameter(folder, "folder");
        Intrinsics.checkNotNullParameter(complete, "complete");
        this._state.setValue(FavoritesUIState.Loading.INSTANCE);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(folder, null), 3, null).invokeOnCompletion(new Function1() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FavoritesViewModel.deleteFolder$lambda$0(complete, (Throwable) obj);
            }
        });
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$deleteFolder$1, reason: invalid class name */
    /* JADX INFO: compiled from: FavoritesViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_screen.FavoritesViewModel$deleteFolder$1", f = "FavoritesViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ FolderModel $folder;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(FolderModel folderModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$folder = folderModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FavoritesViewModel.this.new AnonymousClass1(this.$folder, continuation);
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
                FDFavourite fDFavourite = FavoritesViewModel.this.favorite;
                String documentId = this.$folder.getDocumentId();
                Intrinsics.checkNotNull(documentId);
                fDFavourite.deleteAll(documentId);
                FDFavouriteFolder fDFavouriteFolder = FavoritesViewModel.this.favouriteFolder;
                String documentId2 = this.$folder.getDocumentId();
                Intrinsics.checkNotNull(documentId2);
                fDFavouriteFolder.delete(documentId2);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static final Unit deleteFolder$lambda$0(Function0 function0, Throwable th) {
        function0.invoke();
        return Unit.INSTANCE;
    }

    public final void updateFolder(String wordId, String folderId) {
        Intrinsics.checkNotNullParameter(wordId, "wordId");
        Intrinsics.checkNotNullParameter(folderId, "folderId");
        this.favouriteFolder.setCurrentFolder(folderId);
        this.favorite.updateFolder(folderId, wordId);
    }

    public final void onFolderClicked(FolderModel folder) {
        Intrinsics.checkNotNullParameter(folder, "folder");
        this._events.tryEmit(new FavoritesEvent.OpenFolder(folder));
    }

    public final void onEditRequested(FolderModel folder) {
        Intrinsics.checkNotNullParameter(folder, "folder");
        this._events.tryEmit(new FavoritesEvent.EditFolder(folder));
    }

    public final void onDeleteRequested(FolderModel folder) {
        Intrinsics.checkNotNullParameter(folder, "folder");
        this._events.tryEmit(new FavoritesEvent.ConfirmDelete(folder));
    }
}
