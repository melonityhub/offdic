package fast.dic.dict;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;

/* JADX INFO: loaded from: classes11.dex */
public final class PaymentMethodFragment_MembersInjector implements MembersInjector<PaymentMethodFragment> {
    private final Provider<FirebaseUserPropertiesManager> firebaseUserPropertiesManagerProvider;

    private PaymentMethodFragment_MembersInjector(Provider<FirebaseUserPropertiesManager> provider) {
        this.firebaseUserPropertiesManagerProvider = provider;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(PaymentMethodFragment paymentMethodFragment) {
        injectFirebaseUserPropertiesManager(paymentMethodFragment, this.firebaseUserPropertiesManagerProvider.get());
    }

    public static MembersInjector<PaymentMethodFragment> create(Provider<FirebaseUserPropertiesManager> provider) {
        return new PaymentMethodFragment_MembersInjector(provider);
    }

    public static void injectFirebaseUserPropertiesManager(PaymentMethodFragment paymentMethodFragment, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        paymentMethodFragment.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
    }
}
