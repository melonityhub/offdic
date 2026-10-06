package fast.dic.dict.presentation.common;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class SyncViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static SyncViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return SyncViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final SyncViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new SyncViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
