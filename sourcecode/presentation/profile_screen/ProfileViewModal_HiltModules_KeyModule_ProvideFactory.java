package fast.dic.dict.presentation.profile_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class ProfileViewModal_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static ProfileViewModal_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return ProfileViewModal_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final ProfileViewModal_HiltModules_KeyModule_ProvideFactory INSTANCE = new ProfileViewModal_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
