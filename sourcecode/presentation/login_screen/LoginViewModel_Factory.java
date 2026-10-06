package fast.dic.dict.presentation.login_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.helpers.FDConnectivityHelper;

/* JADX INFO: loaded from: classes11.dex */
public final class LoginViewModel_Factory implements Factory<LoginViewModel> {
    private final Provider<FDConnectivityHelper> connectivityHelperProvider;

    private LoginViewModel_Factory(Provider<FDConnectivityHelper> provider) {
        this.connectivityHelperProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public LoginViewModel get() {
        return newInstance(this.connectivityHelperProvider.get());
    }

    public static LoginViewModel_Factory create(Provider<FDConnectivityHelper> provider) {
        return new LoginViewModel_Factory(provider);
    }

    public static LoginViewModel newInstance(FDConnectivityHelper fDConnectivityHelper) {
        return new LoginViewModel(fDConnectivityHelper);
    }
}
