package fast.dic.dict.viewmodels.fragments;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.data.billing.PlayBillingRepository;

/* JADX INFO: loaded from: classes11.dex */
public final class GooglePaymentViewModel_Factory implements Factory<GooglePaymentViewModel> {
    private final Provider<PlayBillingRepository> billingRepositoryProvider;

    private GooglePaymentViewModel_Factory(Provider<PlayBillingRepository> provider) {
        this.billingRepositoryProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public GooglePaymentViewModel get() {
        return newInstance(this.billingRepositoryProvider.get());
    }

    public static GooglePaymentViewModel_Factory create(Provider<PlayBillingRepository> provider) {
        return new GooglePaymentViewModel_Factory(provider);
    }

    public static GooglePaymentViewModel newInstance(PlayBillingRepository playBillingRepository) {
        return new GooglePaymentViewModel(playBillingRepository);
    }
}
