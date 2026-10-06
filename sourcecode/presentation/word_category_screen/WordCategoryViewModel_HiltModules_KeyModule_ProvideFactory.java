package fast.dic.dict.presentation.word_category_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class WordCategoryViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static WordCategoryViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return WordCategoryViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final WordCategoryViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new WordCategoryViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
