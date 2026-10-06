package fast.dic.dict.helpers.database.couchbase;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.FDDatabaseManager;

/* JADX INFO: loaded from: classes11.dex */
public final class FDFavourite_Factory implements Factory<FDFavourite> {
    private final Provider<FDDatabaseManager> databaseManagerProvider;

    private FDFavourite_Factory(Provider<FDDatabaseManager> provider) {
        this.databaseManagerProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDFavourite get() {
        return newInstance(this.databaseManagerProvider.get());
    }

    public static FDFavourite_Factory create(Provider<FDDatabaseManager> provider) {
        return new FDFavourite_Factory(provider);
    }

    public static FDFavourite newInstance(FDDatabaseManager fDDatabaseManager) {
        return new FDFavourite(fDDatabaseManager);
    }
}
