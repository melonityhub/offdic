package fast.dic.dict.helpers;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.database.LocalStorage;

/* JADX INFO: loaded from: classes11.dex */
public final class FDWordCategory_Factory implements Factory<FDWordCategory> {
    private final Provider<FDMainDatabaseHelper> databaseHelperProvider;
    private final Provider<FDDatabaseManager> databaseManagerProvider;
    private final Provider<LocalStorage> localStorageProvider;

    private FDWordCategory_Factory(Provider<FDMainDatabaseHelper> provider, Provider<FDDatabaseManager> provider2, Provider<LocalStorage> provider3) {
        this.databaseHelperProvider = provider;
        this.databaseManagerProvider = provider2;
        this.localStorageProvider = provider3;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDWordCategory get() {
        return newInstance(this.databaseHelperProvider.get(), this.databaseManagerProvider.get(), this.localStorageProvider.get());
    }

    public static FDWordCategory_Factory create(Provider<FDMainDatabaseHelper> provider, Provider<FDDatabaseManager> provider2, Provider<LocalStorage> provider3) {
        return new FDWordCategory_Factory(provider, provider2, provider3);
    }

    public static FDWordCategory newInstance(FDMainDatabaseHelper fDMainDatabaseHelper, FDDatabaseManager fDDatabaseManager, LocalStorage localStorage) {
        return new FDWordCategory(fDMainDatabaseHelper, fDDatabaseManager, localStorage);
    }
}
