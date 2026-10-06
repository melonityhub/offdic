package fast.dic.dict.presentation.favorite_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.helpers.FDWordCategory;
import fast.dic.dict.helpers.database.couchbase.FDFavourite;
import fast.dic.dict.helpers.database.couchbase.FDFavouriteFolder;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class FavoritesViewModel_Factory implements Factory<FavoritesViewModel> {
    private final Provider<FDFavourite> favoriteProvider;
    private final Provider<FDFavouriteFolder> favouriteFolderProvider;
    private final Provider<FDHistory> historyProvider;
    private final Provider<FDWordCategory> wordCategoryProvider;

    private FavoritesViewModel_Factory(Provider<FDHistory> provider, Provider<FDFavourite> provider2, Provider<FDFavouriteFolder> provider3, Provider<FDWordCategory> provider4) {
        this.historyProvider = provider;
        this.favoriteProvider = provider2;
        this.favouriteFolderProvider = provider3;
        this.wordCategoryProvider = provider4;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FavoritesViewModel get() {
        return newInstance(this.historyProvider.get(), this.favoriteProvider.get(), this.favouriteFolderProvider.get(), this.wordCategoryProvider.get());
    }

    public static FavoritesViewModel_Factory create(Provider<FDHistory> provider, Provider<FDFavourite> provider2, Provider<FDFavouriteFolder> provider3, Provider<FDWordCategory> provider4) {
        return new FavoritesViewModel_Factory(provider, provider2, provider3, provider4);
    }

    public static FavoritesViewModel newInstance(FDHistory fDHistory, FDFavourite fDFavourite, FDFavouriteFolder fDFavouriteFolder, FDWordCategory fDWordCategory) {
        return new FavoritesViewModel(fDHistory, fDFavourite, fDFavouriteFolder, fDWordCategory);
    }
}
