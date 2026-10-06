package fast.dic.dict.presentation.categories_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class CategoriesAdapter_Factory implements Factory<CategoriesAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public CategoriesAdapter get() {
        return newInstance();
    }

    public static CategoriesAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CategoriesAdapter newInstance() {
        return new CategoriesAdapter();
    }

    private static final class InstanceHolder {
        static final CategoriesAdapter_Factory INSTANCE = new CategoriesAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
