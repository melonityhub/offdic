package fast.dic.dict.presentation.logout_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.database.LocalStorage;

/* JADX INFO: loaded from: classes11.dex */
public final class LogoutViewModel_Factory implements Factory<LogoutViewModel> {
    private final Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;
    private final Provider<LocalStorage> localStorageProvider;

    private LogoutViewModel_Factory(Provider<LocalStorage> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        this.localStorageProvider = provider;
        this.firebaseUserPropertiesManagerProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public LogoutViewModel get() {
        return newInstance(this.localStorageProvider.get(), this.firebaseUserPropertiesManagerProvider.get());
    }

    public static LogoutViewModel_Factory create(Provider<LocalStorage> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        return new LogoutViewModel_Factory(provider, provider2);
    }

    public static LogoutViewModel newInstance(LocalStorage localStorage, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        return new LogoutViewModel(localStorage, firebaseUserPropertiesManager);
    }
}
