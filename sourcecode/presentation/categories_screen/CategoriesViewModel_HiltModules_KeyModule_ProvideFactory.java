package fast.dic.dict.presentation.categories_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class CategoriesViewModel_HiltModules_KeyModule_ProvideFactory implements Factory<Boolean> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Boolean get() {
        return Boolean.valueOf(provide());
    }

    public static CategoriesViewModel_HiltModules_KeyModule_ProvideFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static boolean provide() {
        return CategoriesViewModel_HiltModules.KeyModule.provide();
    }

    private static final class InstanceHolder {
        static final CategoriesViewModel_HiltModules_KeyModule_ProvideFactory INSTANCE = new CategoriesViewModel_HiltModules_KeyModule_ProvideFactory();

        private InstanceHolder() {
        }
    }
}
