package fast.dic.dict.presentation.word_category_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.helpers.FDWordCategory;

/* JADX INFO: loaded from: classes11.dex */
public final class WordCategoryViewModel_Factory implements Factory<WordCategoryViewModel> {
    private final Provider<FDWordCategory> categoryProvider;

    private WordCategoryViewModel_Factory(Provider<FDWordCategory> provider) {
        this.categoryProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public WordCategoryViewModel get() {
        return newInstance(this.categoryProvider.get());
    }

    public static WordCategoryViewModel_Factory create(Provider<FDWordCategory> provider) {
        return new WordCategoryViewModel_Factory(provider);
    }

    public static WordCategoryViewModel newInstance(FDWordCategory fDWordCategory) {
        return new WordCategoryViewModel(fDWordCategory);
    }
}
