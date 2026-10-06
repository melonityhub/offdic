package fast.dic.dict.helpers.database.couchbase;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.FDDatabaseManager;

/* JADX INFO: loaded from: classes11.dex */
public final class FDHistory_Factory implements Factory<FDHistory> {
    private final Provider<FDDatabaseManager> databaseManagerProvider;

    private FDHistory_Factory(Provider<FDDatabaseManager> provider) {
        this.databaseManagerProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDHistory get() {
        return newInstance(this.databaseManagerProvider.get());
    }

    public static FDHistory_Factory create(Provider<FDDatabaseManager> provider) {
        return new FDHistory_Factory(provider);
    }

    public static FDHistory newInstance(FDDatabaseManager fDDatabaseManager) {
        return new FDHistory(fDDatabaseManager);
    }
}
