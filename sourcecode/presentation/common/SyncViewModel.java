package fast.dic.dict.presentation.common;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.ListenerToken;
import com.couchbase.lite.Replicator;
import com.couchbase.lite.ReplicatorActivityLevel;
import com.couchbase.lite.ReplicatorChange;
import com.couchbase.lite.ReplicatorChangeListener;
import com.couchbase.lite.ReplicatorStatus;
import com.parse.ParseException;
import com.parse.ParseUser;
import fast.dic.dict.data.sync.model.SyncSessionModel;
import fast.dic.dict.data.sync.repository.FDSyncSession;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.domain.entity.WordSortEnum;
import fast.dic.dict.helpers.FDListPath;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.LoggerKt;
import java.util.Date;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: SyncViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B-\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u001a\u0002\b\f¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001bJ\u0006\u0010!\u001a\u00020\u001fJ\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020#J\b\u0010%\u001a\u0004\u0018\u00010&J\u0014\u0010'\u001a\u00020\u001f2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001f0)J\u0006\u0010*\u001a\u00020\u001fJ\u0006\u0010+\u001a\u00020\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u001a\u001a\u00020\u001b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dÊ\u0001\u0002\b-¨\u0006,"}, d2 = {"Lfast/dic/dict/presentation/common/SyncViewModel;", "Landroidx/lifecycle/ViewModel;", "fdHistory", "Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "fdListPath", "Lfast/dic/dict/helpers/FDListPath;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "fdSyncSession", "Lfast/dic/dict/data/sync/repository/FDSyncSession;", "<init>", "(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/data/sync/repository/FDSyncSession;)V", "Ljavax/inject/Inject;", "_syncState", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/presentation/common/SyncUIState;", "syncState", "Landroidx/lifecycle/LiveData;", "getSyncState", "()Landroidx/lifecycle/LiveData;", "setSyncState", "(Landroidx/lifecycle/LiveData;)V", "replicator", "Lcom/couchbase/lite/Replicator;", "listenerToken", "Lcom/couchbase/lite/ListenerToken;", "selectedSort", "Lfast/dic/dict/domain/entity/WordSortEnum;", "getSelectedSort", "()Lfast/dic/dict/domain/entity/WordSortEnum;", "updateSelectedSort", "", "sort", "disableSync", "isSyncEnabled", "", "isAppLanguageIsPersian", "getLastTimeSynced", "Ljava/util/Date;", "logout", "onFinish", "Lkotlin/Function0;", "sync", "onDestroy", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SyncViewModel extends ViewModel {
    private final MutableLiveData<SyncUIState> _syncState;
    private final FDHistory fdHistory;
    private FDListPath fdListPath;
    private final FDSyncSession fdSyncSession;
    private ListenerToken listenerToken;
    private final LocalStorage localStorage;
    private Replicator replicator;
    private final WordSortEnum selectedSort;
    private LiveData<SyncUIState> syncState;

    @Inject
    public SyncViewModel(FDHistory fdHistory, FDListPath fdListPath, LocalStorage localStorage, FDSyncSession fdSyncSession) {
        Intrinsics.checkNotNullParameter(fdHistory, "fdHistory");
        Intrinsics.checkNotNullParameter(fdListPath, "fdListPath");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        Intrinsics.checkNotNullParameter(fdSyncSession, "fdSyncSession");
        this.fdHistory = fdHistory;
        this.fdListPath = fdListPath;
        this.localStorage = localStorage;
        this.fdSyncSession = fdSyncSession;
        MutableLiveData<SyncUIState> mutableLiveData = new MutableLiveData<>(new SyncUIState(false, false, null, null, null, 31, null));
        this._syncState = mutableLiveData;
        this.syncState = mutableLiveData;
        this.selectedSort = localStorage.getSelectedSort();
    }

    public final LiveData<SyncUIState> getSyncState() {
        return this.syncState;
    }

    public final void setSyncState(LiveData<SyncUIState> liveData) {
        Intrinsics.checkNotNullParameter(liveData, "<set-?>");
        this.syncState = liveData;
    }

    public final WordSortEnum getSelectedSort() {
        return this.selectedSort;
    }

    public final void updateSelectedSort(WordSortEnum sort) {
        Intrinsics.checkNotNullParameter(sort, "sort");
        this.localStorage.setSelectedSort(sort);
    }

    public final void disableSync() {
        this.localStorage.setEnableSync(false);
    }

    public final boolean isSyncEnabled() {
        return this.localStorage.getEnableSync();
    }

    public final boolean isAppLanguageIsPersian() {
        return this.localStorage.currentLanguageIsPersian();
    }

    public final Date getLastTimeSynced() {
        return this.localStorage.getDefaultsLastSyncDate();
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.common.SyncViewModel$logout$1, reason: invalid class name */
    /* JADX INFO: compiled from: SyncViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.common.SyncViewModel$logout$1", f = "SyncViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<Unit> $onFinish;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Function0<Unit> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$onFinish = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SyncViewModel.this.new AnonymousClass1(this.$onFinish, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws ParseException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ParseUser currentUser = ParseUser.getCurrentUser();
            FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
            if (SyncViewModel.this.localStorage.getDefaultsLastSyncDate() != null && fDParseUser != null && fDParseUser.hasPlan2Or3()) {
                Replicator replicator = SyncViewModel.this.replicator;
                if (replicator != null) {
                    replicator.stop();
                }
                Replicator replicator2 = SyncViewModel.this.replicator;
                if (replicator2 != null) {
                    replicator2.close();
                }
                FDListPath fDListPath = SyncViewModel.this.fdListPath;
                final SyncViewModel syncViewModel = SyncViewModel.this;
                final Function0<Unit> function0 = this.$onFinish;
                fDListPath.deleteDB(new Function1() { // from class: fast.dic.dict.presentation.common.SyncViewModel$logout$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return SyncViewModel.AnonymousClass1.invokeSuspend$lambda$0(syncViewModel, function0, ((Boolean) obj2).booleanValue());
                    }
                });
            } else {
                this.$onFinish.invoke();
            }
            return Unit.INSTANCE;
        }

        static final Unit invokeSuspend$lambda$0(SyncViewModel syncViewModel, Function0 function0, boolean z) {
            System.out.print((Object) "Database deleted");
            if (z) {
                syncViewModel.localStorage.setEnableSync(false);
                syncViewModel.localStorage.setDefaultsLastSyncDate(null);
                syncViewModel.localStorage.setOfflineTranslator(false);
                syncViewModel.localStorage.setCbSession(new SyncSessionModel(null, null, false, 0, 15, null));
            }
            function0.invoke();
            return Unit.INSTANCE;
        }
    }

    public final void logout(Function0<Unit> onFinish) {
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(onFinish, null), 3, null);
    }

    public final void sync() {
        if (!isSyncEnabled()) {
            LoggerKt.getLogger().warn("Sync is not enabled by the user!", new Object[0]);
        } else {
            this._syncState.setValue(new SyncUIState(true, false, null, null, null, 30, null));
            BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), Dispatchers.getIO(), null, new C45151(null), 2, null);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.common.SyncViewModel$sync$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SyncViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.common.SyncViewModel$sync$1", f = "SyncViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class C45151 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C45151(Continuation<? super C45151> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return SyncViewModel.this.new C45151(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45151) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                FDSyncSession fDSyncSession = SyncViewModel.this.fdSyncSession;
                final SyncViewModel syncViewModel = SyncViewModel.this;
                fDSyncSession.getSession(new Function1() { // from class: fast.dic.dict.presentation.common.SyncViewModel$sync$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return SyncViewModel.C45151.invokeSuspend$lambda$0(syncViewModel, (SyncSessionModel) obj2);
                    }
                });
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        static final Unit invokeSuspend$lambda$0(final SyncViewModel syncViewModel, SyncSessionModel syncSessionModel) {
            if (!syncSessionModel.getError()) {
                syncViewModel.fdListPath.updateDocuments();
                FDListPath fDListPath = syncViewModel.fdListPath;
                String session_id = syncSessionModel.getSession_id();
                if (session_id == null) {
                    session_id = "";
                }
                syncViewModel.replicator = new Replicator(fDListPath.replicatorConfiguration(session_id));
                Replicator replicator = syncViewModel.replicator;
                syncViewModel.listenerToken = replicator != null ? replicator.addChangeListener(new ReplicatorChangeListener() { // from class: fast.dic.dict.presentation.common.SyncViewModel$sync$1$$ExternalSyntheticLambda1
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.couchbase.lite.ReplicatorChangeListener, com.couchbase.lite.ChangeListener
                    public final void changed(ReplicatorChange replicatorChange) {
                        SyncViewModel.C45151.invokeSuspend$lambda$0$0(syncViewModel, replicatorChange);
                    }
                }) : null;
                Replicator replicator2 = syncViewModel.replicator;
                if (replicator2 != null) {
                    replicator2.start();
                }
                return Unit.INSTANCE;
            }
            if (syncSessionModel.getErrorCode() == 400) {
                syncViewModel.localStorage.setDefaultsLastSyncDate(null);
            }
            syncViewModel._syncState.postValue(new SyncUIState(false, false, "Unknown error!", Integer.valueOf(syncSessionModel.getErrorCode()), null, 19, null));
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void invokeSuspend$lambda$0$0(SyncViewModel syncViewModel, ReplicatorChange replicatorChange) {
            String localizedMessage;
            CouchbaseLiteException error = replicatorChange.getStatus().getError();
            if (replicatorChange.getStatus().getError() != null) {
                System.out.println((Object) ("Error code :: " + (error != null ? Integer.valueOf(error.getCode()) : "")));
            }
            ReplicatorStatus status = replicatorChange.getStatus();
            Intrinsics.checkNotNullExpressionValue(status, "getStatus(...)");
            if (status.getProgress().getCompleted() == status.getProgress().getTotal() && status.getActivityLevel() == ReplicatorActivityLevel.IDLE) {
                System.out.println((Object) ("PushPull Replicator: " + status.getProgress().getCompleted() + "/" + status.getProgress().getTotal() + ", error: " + status.getError() + ", activity = " + status.getActivityLevel()));
                syncViewModel.fdHistory.deleteOldHistory();
                syncViewModel.fdListPath.checkAndDeDuplicateDocuments();
                Date date = new Date();
                syncViewModel.localStorage.setDefaultsLastSyncDate(date);
                syncViewModel._syncState.postValue(new SyncUIState(false, true, null, null, date, 13, null));
                return;
            }
            if (replicatorChange.getStatus().getError() != null && status.getActivityLevel() == ReplicatorActivityLevel.STOPPED) {
                syncViewModel._syncState.postValue(new SyncUIState(false, false, "Stopped with Error!", null, null, 27, null));
                return;
            }
            if (replicatorChange.getStatus().getError() != null) {
                MutableLiveData mutableLiveData = syncViewModel._syncState;
                CouchbaseLiteException error2 = replicatorChange.getStatus().getError();
                if (error2 == null || (localizedMessage = error2.getLocalizedMessage()) == null) {
                    localizedMessage = "Unknown error";
                }
                String str = localizedMessage;
                CouchbaseLiteException error3 = replicatorChange.getStatus().getError();
                mutableLiveData.postValue(new SyncUIState(false, false, str, error3 != null ? Integer.valueOf(error3.getCode()) : null, null, 19, null));
            }
        }
    }

    public final void onDestroy() {
        Replicator replicator = this.replicator;
        if (replicator != null) {
            replicator.stop();
        }
        ListenerToken listenerToken = this.listenerToken;
        if (listenerToken != null) {
            listenerToken.remove();
        }
    }
}
