package fast.dic.dict.presentation.categories_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.helpers.FDWordCategory;

/* JADX INFO: loaded from: classes11.dex */
public final class CategoriesViewModel_Factory implements Factory<CategoriesViewModel> {
    private final Provider<FDWordCategory> categoryProvider;
    private final Provider<LocalStorage> localStorageProvider;

    private CategoriesViewModel_Factory(Provider<FDWordCategory> provider, Provider<LocalStorage> provider2) {
        this.categoryProvider = provider;
        this.localStorageProvider = provider2;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public CategoriesViewModel get() {
        return newInstance(this.categoryProvider.get(), this.localStorageProvider.get());
    }

    public static CategoriesViewModel_Factory create(Provider<FDWordCategory> provider, Provider<LocalStorage> provider2) {
        return new CategoriesViewModel_Factory(provider, provider2);
    }

    public static CategoriesViewModel newInstance(FDWordCategory fDWordCategory, LocalStorage localStorage) {
        return new CategoriesViewModel(fDWordCategory, localStorage);
    }
}
