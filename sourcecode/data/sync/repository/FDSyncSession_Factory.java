package fast.dic.dict.data.sync.repository;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;

/* JADX INFO: loaded from: classes11.dex */
public final class FDSyncSession_Factory implements Factory<FDSyncSession> {
    private final Provider<LocalStorage> localStorageProvider;

    private FDSyncSession_Factory(Provider<LocalStorage> provider) {
        this.localStorageProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDSyncSession get() {
        return newInstance(this.localStorageProvider.get());
    }

    public static FDSyncSession_Factory create(Provider<LocalStorage> provider) {
        return new FDSyncSession_Factory(provider);
    }

    public static FDSyncSession newInstance(LocalStorage localStorage) {
        return new FDSyncSession(localStorage);
    }
}
