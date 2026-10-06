package fast.dic.dict.presentation.forget_password_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.helpers.FDConnectivityHelper;

/* JADX INFO: loaded from: classes11.dex */
public final class ForgetPasswordViewModel_Factory implements Factory<ForgetPasswordViewModel> {
    private final Provider<FDConnectivityHelper> connectivityHelperProvider;
    private final Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;

    private ForgetPasswordViewModel_Factory(Provider<FDConnectivityHelper> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        this.connectivityHelperProvider = provider;
        this.firebaseUserPropertiesManagerProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public ForgetPasswordViewModel get() {
        return newInstance(this.connectivityHelperProvider.get(), this.firebaseUserPropertiesManagerProvider.get());
    }

    public static ForgetPasswordViewModel_Factory create(Provider<FDConnectivityHelper> provider, Provider<FirebaseUserPropertiesManager> provider2) {
        return new ForgetPasswordViewModel_Factory(provider, provider2);
    }

    public static ForgetPasswordViewModel newInstance(FDConnectivityHelper fDConnectivityHelper, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        return new ForgetPasswordViewModel(fDConnectivityHelper, firebaseUserPropertiesManager);
    }
}
