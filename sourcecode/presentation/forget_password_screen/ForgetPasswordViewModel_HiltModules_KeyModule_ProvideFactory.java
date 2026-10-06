package fast.dic.dict.presentation.forget_password_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class ForgetPasswordViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static ForgetPasswordViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return ForgetPasswordViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final ForgetPasswordViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new ForgetPasswordViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
