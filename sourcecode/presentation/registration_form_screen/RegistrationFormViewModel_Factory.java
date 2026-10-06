package fast.dic.dict.presentation.registration_form_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDConnectivityHelper;

/* JADX INFO: loaded from: classes11.dex */
public final class RegistrationFormViewModel_Factory implements Factory<RegistrationFormViewModel> {
    private final Provider<FDConnectivityHelper> connectivityHelperProvider;
    private final Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;
    private final Provider<LocalStorage> localStorageProvider;

    private RegistrationFormViewModel_Factory(Provider<FDConnectivityHelper> provider, Provider<LocalStorage> provider2, Provider<FirebaseUserPropertiesManager> provider3) {
        this.connectivityHelperProvider = provider;
        this.localStorageProvider = provider2;
        this.firebaseUserPropertiesManagerProvider = provider3;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public RegistrationFormViewModel get() {
        return newInstance(this.connectivityHelperProvider.get(), this.localStorageProvider.get(), this.firebaseUserPropertiesManagerProvider.get());
    }

    public static RegistrationFormViewModel_Factory create(Provider<FDConnectivityHelper> provider, Provider<LocalStorage> provider2, Provider<FirebaseUserPropertiesManager> provider3) {
        return new RegistrationFormViewModel_Factory(provider, provider2, provider3);
    }

    public static RegistrationFormViewModel newInstance(FDConnectivityHelper fDConnectivityHelper, LocalStorage localStorage, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        return new RegistrationFormViewModel(fDConnectivityHelper, localStorage, firebaseUserPropertiesManager);
    }
}
