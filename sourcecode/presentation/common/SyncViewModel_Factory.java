package fast.dic.dict.presentation.common;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.data.sync.repository.FDSyncSession;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDListPath;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class SyncViewModel_Factory implements Factory<SyncViewModel> {
    private final Provider<FDHistory> fdHistoryProvider;
    private final Provider<FDListPath> fdListPathProvider;
    private final Provider<FDSyncSession> fdSyncSessionProvider;
    private final Provider<LocalStorage> localStorageProvider;

    private SyncViewModel_Factory(Provider<FDHistory> provider, Provider<FDListPath> provider2, Provider<LocalStorage> provider3, Provider<FDSyncSession> provider4) {
        this.fdHistoryProvider = provider;
        this.fdListPathProvider = provider2;
        this.localStorageProvider = provider3;
        this.fdSyncSessionProvider = provider4;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public SyncViewModel get() {
        return newInstance(this.fdHistoryProvider.get(), this.fdListPathProvider.get(), this.localStorageProvider.get(), this.fdSyncSessionProvider.get());
    }

    public static SyncViewModel_Factory create(Provider<FDHistory> provider, Provider<FDListPath> provider2, Provider<LocalStorage> provider3, Provider<FDSyncSession> provider4) {
        return new SyncViewModel_Factory(provider, provider2, provider3, provider4);
    }

    public static SyncViewModel newInstance(FDHistory fDHistory, FDListPath fDListPath, LocalStorage localStorage, FDSyncSession fDSyncSession) {
        return new SyncViewModel(fDHistory, fDListPath, localStorage, fDSyncSession);
    }
}
