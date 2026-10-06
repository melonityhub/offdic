package fast.dic.dict.presentation.sort_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class SortDialogViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static SortDialogViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return SortDialogViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final SortDialogViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new SortDialogViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
