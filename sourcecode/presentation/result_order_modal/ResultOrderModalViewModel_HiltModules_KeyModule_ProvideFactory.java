package fast.dic.dict.presentation.result_order_modal;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class ResultOrderModalViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static ResultOrderModalViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return ResultOrderModalViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final ResultOrderModalViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new ResultOrderModalViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
