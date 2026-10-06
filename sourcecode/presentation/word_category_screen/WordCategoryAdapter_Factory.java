package fast.dic.dict.presentation.word_category_screen;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class WordCategoryAdapter_Factory implements Factory<WordCategoryAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public WordCategoryAdapter get() {
        return newInstance();
    }

    public static WordCategoryAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static WordCategoryAdapter newInstance() {
        return new WordCategoryAdapter();
    }

    private static final class InstanceHolder {
        static final WordCategoryAdapter_Factory INSTANCE = new WordCategoryAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
