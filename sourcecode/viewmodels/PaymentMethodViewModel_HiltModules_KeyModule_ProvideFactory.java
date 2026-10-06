package fast.dic.dict.viewmodels;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class PaymentMethodViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static PaymentMethodViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return PaymentMethodViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final PaymentMethodViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new PaymentMethodViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
