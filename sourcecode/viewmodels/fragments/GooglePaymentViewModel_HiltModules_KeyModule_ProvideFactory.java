package fast.dic.dict.viewmodels.fragments;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class GooglePaymentViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static GooglePaymentViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return GooglePaymentViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final GooglePaymentViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new GooglePaymentViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
