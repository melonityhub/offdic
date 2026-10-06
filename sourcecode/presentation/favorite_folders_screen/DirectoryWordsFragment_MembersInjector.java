package fast.dic.dict.presentation.favorite_folders_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class DirectoryWordsFragment_MembersInjector implements MembersInjector<DirectoryWordsFragment> {
    private final Provider<FavoriteWordAdapter> adapterProvider;
    private final Provider<FDHistory> historyProvider;

    private DirectoryWordsFragment_MembersInjector(Provider<FDHistory> provider, Provider<FavoriteWordAdapter> provider2) {
        this.historyProvider = provider;
        this.adapterProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(DirectoryWordsFragment directoryWordsFragment) {
        BaseFragment_MembersInjector.injectHistory(directoryWordsFragment, this.historyProvider.get());
        injectAdapter(directoryWordsFragment, this.adapterProvider.get());
    }

    public static MembersInjector<DirectoryWordsFragment> create(Provider<FDHistory> provider, Provider<FavoriteWordAdapter> provider2) {
        return new DirectoryWordsFragment_MembersInjector(provider, provider2);
    }

    public static void injectAdapter(DirectoryWordsFragment directoryWordsFragment, FavoriteWordAdapter favoriteWordAdapter) {
        directoryWordsFragment.adapter = favoriteWordAdapter;
    }
}
