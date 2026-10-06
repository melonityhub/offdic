package fast.dic.dict.presentation.wod_history_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.services.WebService;

/* JADX INFO: loaded from: classes11.dex */
public final class WodHistoryViewModel_Factory implements Factory<WodHistoryViewModel> {
    private final Provider<LocalStorage> localStorageProvider;
    private final Provider<WebService> webServiceProvider;

    private WodHistoryViewModel_Factory(Provider<LocalStorage> provider, Provider<WebService> provider2) {
        this.localStorageProvider = provider;
        this.webServiceProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public WodHistoryViewModel get() {
        return newInstance(this.localStorageProvider.get(), this.webServiceProvider.get());
    }

    public static WodHistoryViewModel_Factory create(Provider<LocalStorage> provider, Provider<WebService> provider2) {
        return new WodHistoryViewModel_Factory(provider, provider2);
    }

    public static WodHistoryViewModel newInstance(LocalStorage localStorage, WebService webService) {
        return new WodHistoryViewModel(localStorage, webService);
    }
}
