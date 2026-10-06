package fast.dic.dict.presentation.categories_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class CategoriesFragment_MembersInjector implements MembersInjector<CategoriesFragment> {
    private final Provider<CategoriesAdapter> adapterProvider;

    private CategoriesFragment_MembersInjector(Provider<CategoriesAdapter> provider) {
        this.adapterProvider = provider;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(CategoriesFragment categoriesFragment) {
        injectAdapter(categoriesFragment, this.adapterProvider.get());
    }

    public static MembersInjector<CategoriesFragment> create(Provider<CategoriesAdapter> provider) {
        return new CategoriesFragment_MembersInjector(provider);
    }

    public static void injectAdapter(CategoriesFragment categoriesFragment, CategoriesAdapter categoriesAdapter) {
        categoriesFragment.adapter = categoriesAdapter;
    }
}
