package fast.dic.dict.fragments;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class VoiceRecognitionViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static VoiceRecognitionViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return VoiceRecognitionViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final VoiceRecognitionViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new VoiceRecognitionViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
