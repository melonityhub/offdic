package fast.dic.dict.di;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class CustomViewModule_ProvideFDHistoryFactory implements Factory<FDHistory> {
    private final Provider<FDDatabaseManager> databaseManagerProvider;

    private CustomViewModule_ProvideFDHistoryFactory(Provider<FDDatabaseManager> provider) {
        this.databaseManagerProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDHistory get() {
        return provideFDHistory(this.databaseManagerProvider.get());
    }

    public static CustomViewModule_ProvideFDHistoryFactory create(Provider<FDDatabaseManager> provider) {
        return new CustomViewModule_ProvideFDHistoryFactory(provider);
    }

    public static FDHistory provideFDHistory(FDDatabaseManager fDDatabaseManager) {
        return (FDHistory) Preconditions.checkNotNullFromProvides(CustomViewModule.INSTANCE.provideFDHistory(fDDatabaseManager));
    }
}
