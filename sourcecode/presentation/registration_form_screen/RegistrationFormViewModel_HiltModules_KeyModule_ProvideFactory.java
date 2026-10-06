package fast.dic.dict.presentation.registration_form_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class RegistrationFormViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static RegistrationFormViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return RegistrationFormViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final RegistrationFormViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new RegistrationFormViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
