package fast.dic.dict.analytics;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;

/* JADX INFO: loaded from: classes11.dex */
public final class FirebaseUserPropertiesManager_Factory implements Factory<FirebaseUserPropertiesManager> {
    private final Provider<Context> contextProvider;
    private final Provider<LocalStorage> localStorageProvider;

    private FirebaseUserPropertiesManager_Factory(Provider<Context> provider, Provider<LocalStorage> provider2) {
        this.contextProvider = provider;
        this.localStorageProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FirebaseUserPropertiesManager get() {
        return newInstance(this.contextProvider.get(), this.localStorageProvider.get());
    }

    public static FirebaseUserPropertiesManager_Factory create(Provider<Context> provider, Provider<LocalStorage> provider2) {
        return new FirebaseUserPropertiesManager_Factory(provider, provider2);
    }

    public static FirebaseUserPropertiesManager newInstance(Context context, LocalStorage localStorage) {
        return new FirebaseUserPropertiesManager(context, localStorage);
    }
}
