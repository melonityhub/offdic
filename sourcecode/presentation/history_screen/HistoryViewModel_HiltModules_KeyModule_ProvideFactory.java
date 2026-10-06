package fast.dic.dict.presentation.history_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class HistoryViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static HistoryViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return HistoryViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final HistoryViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new HistoryViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
