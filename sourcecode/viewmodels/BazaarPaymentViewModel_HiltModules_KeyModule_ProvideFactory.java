package fast.dic.dict.viewmodels;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class BazaarPaymentViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static BazaarPaymentViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return BazaarPaymentViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final BazaarPaymentViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new BazaarPaymentViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
