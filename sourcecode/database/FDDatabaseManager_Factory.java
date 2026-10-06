package fast.dic.dict.database;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.helpers.FDMainDatabaseHelper;

/* JADX INFO: loaded from: classes11.dex */
public final class FDDatabaseManager_Factory implements Factory<FDDatabaseManager> {
    private final Provider<Context> contextProvider;
    private final Provider<FDMainDatabaseHelper> databaseHelperProvider;

    private FDDatabaseManager_Factory(Provider<FDMainDatabaseHelper> provider, Provider<Context> provider2) {
        this.databaseHelperProvider = provider;
        this.contextProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDDatabaseManager get() {
        return newInstance(this.databaseHelperProvider.get(), this.contextProvider.get());
    }

    public static FDDatabaseManager_Factory create(Provider<FDMainDatabaseHelper> provider, Provider<Context> provider2) {
        return new FDDatabaseManager_Factory(provider, provider2);
    }

    public static FDDatabaseManager newInstance(FDMainDatabaseHelper fDMainDatabaseHelper, Context context) {
        return new FDDatabaseManager(fDMainDatabaseHelper, context);
    }
}
