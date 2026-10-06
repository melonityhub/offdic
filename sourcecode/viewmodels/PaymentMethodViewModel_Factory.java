package fast.dic.dict.viewmodels;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.services.WebService;

/* JADX INFO: loaded from: classes11.dex */
public final class PaymentMethodViewModel_Factory implements Factory<PaymentMethodViewModel> {
    private final Provider<LocalStorage> localStorageProvider;
    private final Provider<WebService> webServiceProvider;

    private PaymentMethodViewModel_Factory(Provider<WebService> provider, Provider<LocalStorage> provider2) {
        this.webServiceProvider = provider;
        this.localStorageProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public PaymentMethodViewModel get() {
        return newInstance(this.webServiceProvider.get(), this.localStorageProvider.get());
    }

    public static PaymentMethodViewModel_Factory create(Provider<WebService> provider, Provider<LocalStorage> provider2) {
        return new PaymentMethodViewModel_Factory(provider, provider2);
    }

    public static PaymentMethodViewModel newInstance(WebService webService, LocalStorage localStorage) {
        return new PaymentMethodViewModel(webService, localStorage);
    }
}
