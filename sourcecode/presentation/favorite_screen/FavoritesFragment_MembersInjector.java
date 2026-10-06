package fast.dic.dict.presentation.favorite_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.FDConnectivityHelper;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class FavoritesFragment_MembersInjector implements MembersInjector<FavoritesFragment> {
    private final Provider<FavoriteFoldersAdapter> adapterProvider;
    private final Provider<FDConnectivityHelper> connectivityHelperProvider;
    private final Provider<FDHistory> historyProvider;

    private FavoritesFragment_MembersInjector(Provider<FDHistory> provider, Provider<FavoriteFoldersAdapter> provider2, Provider<FDConnectivityHelper> provider3) {
        this.historyProvider = provider;
        this.adapterProvider = provider2;
        this.connectivityHelperProvider = provider3;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(FavoritesFragment favoritesFragment) {
        BaseFragment_MembersInjector.injectHistory(favoritesFragment, this.historyProvider.get());
        injectAdapter(favoritesFragment, this.adapterProvider.get());
        injectConnectivityHelper(favoritesFragment, this.connectivityHelperProvider.get());
    }

    public static MembersInjector<FavoritesFragment> create(Provider<FDHistory> provider, Provider<FavoriteFoldersAdapter> provider2, Provider<FDConnectivityHelper> provider3) {
        return new FavoritesFragment_MembersInjector(provider, provider2, provider3);
    }

    public static void injectAdapter(FavoritesFragment favoritesFragment, FavoriteFoldersAdapter favoriteFoldersAdapter) {
        favoritesFragment.adapter = favoriteFoldersAdapter;
    }

    public static void injectConnectivityHelper(FavoritesFragment favoritesFragment, FDConnectivityHelper fDConnectivityHelper) {
        favoritesFragment.connectivityHelper = fDConnectivityHelper;
    }
}
