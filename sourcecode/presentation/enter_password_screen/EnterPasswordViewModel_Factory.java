package fast.dic.dict.presentation.enter_password_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.helpers.FDConnectivityHelper;

/* JADX INFO: loaded from: classes11.dex */
public final class EnterPasswordViewModel_Factory implements Factory<EnterPasswordViewModel> {
    private final Provider<FDConnectivityHelper> connectivityHelperProvider;
    private final Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;

    private EnterPasswordViewModel_Factory(Provider<FDConnectivityHelper> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        this.connectivityHelperProvider = provider;
        this.firebaseUserPropertiesManagerProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public EnterPasswordViewModel get() {
        return newInstance(this.connectivityHelperProvider.get(), this.firebaseUserPropertiesManagerProvider.get());
    }

    public static EnterPasswordViewModel_Factory create(Provider<FDConnectivityHelper> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        return new EnterPasswordViewModel_Factory(provider, provider2);
    }

    public static EnterPasswordViewModel newInstance(FDConnectivityHelper fDConnectivityHelper, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        return new EnterPasswordViewModel(fDConnectivityHelper, firebaseUserPropertiesManager);
    }
}
