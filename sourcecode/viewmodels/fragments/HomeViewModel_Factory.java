package fast.dic.dict.viewmodels.fragments;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.services.WebService;

/* JADX INFO: loaded from: classes11.dex */
public final class HomeViewModel_Factory implements Factory<HomeViewModel> {
    private final Provider<LocalStorage> localStorageProvider;
    private final Provider<WebService> webServiceProvider;

    private HomeViewModel_Factory(Provider<WebService> provider, Provider<LocalStorage> provider2) {
        this.webServiceProvider = provider;
        this.localStorageProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public HomeViewModel get() {
        return newInstance(this.webServiceProvider.get(), this.localStorageProvider.get());
    }

    public static HomeViewModel_Factory create(Provider<WebService> provider, Provider<LocalStorage> provider2) {
        return new HomeViewModel_Factory(provider, provider2);
    }

    public static HomeViewModel newInstance(WebService webService, LocalStorage localStorage) {
        return new HomeViewModel(webService, localStorage);
    }
}
