package fast.dic.dict.presentation.logout_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class LogoutViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static LogoutViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return LogoutViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final LogoutViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new LogoutViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
