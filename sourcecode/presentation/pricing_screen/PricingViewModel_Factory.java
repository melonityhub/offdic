package fast.dic.dict.presentation.pricing_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.services.WebService;

/* JADX INFO: loaded from: classes11.dex */
public final class PricingViewModel_Factory implements Factory<PricingViewModel> {
    private final Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;
    private final Provider<LocalStorage> localStorageProvider;
    private final Provider<WebService> webServiceProvider;

    private PricingViewModel_Factory(Provider<WebService> provider, Provider<FirebaseUserPropertiesManager> provider2, Provider<LocalStorage> provider3) {
        this.webServiceProvider = provider;
        this.firebaseUserPropertiesManagerProvider = provider2;
        this.localStorageProvider = provider3;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public PricingViewModel get() {
        return newInstance(this.webServiceProvider.get(), this.firebaseUserPropertiesManagerProvider.get(), this.localStorageProvider.get());
    }

    public static PricingViewModel_Factory create(Provider<WebService> provider, Provider<FirebaseUserPropertiesManager> provider2, Provider<LocalStorage> provider3) {
        return new PricingViewModel_Factory(provider, provider2, provider3);
    }

    public static PricingViewModel newInstance(WebService webService, FirebaseUserPropertiesManager firebaseUserPropertiesManager, LocalStorage localStorage) {
        return new PricingViewModel(webService, firebaseUserPropertiesManager, localStorage);
    }
}
