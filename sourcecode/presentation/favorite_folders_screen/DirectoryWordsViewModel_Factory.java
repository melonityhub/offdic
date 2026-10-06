package fast.dic.dict.presentation.favorite_folders_screen;

import dagger.internal.Factory;
import dagger.internal.Provider;
import fast.dic.dict.helpers.database.couchbase.FDFavourite;

/* JADX INFO: loaded from: classes11.dex */
public final class DirectoryWordsViewModel_Factory implements Factory<DirectoryWordsViewModel> {
    private final Provider<FDFavourite> favoriteProvider;

    private DirectoryWordsViewModel_Factory(Provider<FDFavourite> provider) {
        this.favoriteProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public DirectoryWordsViewModel get() {
        return newInstance(this.favoriteProvider.get());
    }

    public static DirectoryWordsViewModel_Factory create(Provider<FDFavourite> provider) {
        return new DirectoryWordsViewModel_Factory(provider);
    }

    public static DirectoryWordsViewModel newInstance(FDFavourite fDFavourite) {
        return new DirectoryWordsViewModel(fDFavourite);
    }
}
