package fast.dic.dict.services;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.database.LocalStorage;

/* JADX INFO: loaded from: classes11.dex */
public final class FDAds_Factory implements Factory<FDAds> {
    private final Provider<Context> appContextProvider;
    private final Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;
    private final Provider<LocalStorage> localStorageProvider;

    private FDAds_Factory(Provider<LocalStorage> provider, Provider<Context> provider2, Provider<FirebaseUserPropertiesManager> provider3) {
        this.localStorageProvider = provider;
        this.appContextProvider = provider2;
        this.firebaseUserPropertiesManagerProvider = provider3;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDAds get() {
        return newInstance(this.localStorageProvider.get(), this.appContextProvider.get(), this.firebaseUserPropertiesManagerProvider.get());
    }

    public static FDAds_Factory create(Provider<LocalStorage> provider, Provider<Context> provider2, Provider<FirebaseUserPropertiesManager> provider3) {
        return new FDAds_Factory(provider, provider2, provider3);
    }

    public static FDAds newInstance(LocalStorage localStorage, Context context, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        return new FDAds(localStorage, context, firebaseUserPropertiesManager);
    }
}
