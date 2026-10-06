package fast.dic.dict.fragments;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.adapters.WordSuggestionAdapter;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class SearchFragment_MembersInjector implements MembersInjector<SearchFragment> {
    private final Provider<FDDatabaseManager> databaseHelperProvider;
    private final Provider<FDHistory> historyProvider;
    private final Provider<WordSuggestionAdapter> suggestionAdapterProvider;

    private SearchFragment_MembersInjector(Provider<FDHistory> provider, Provider<FDDatabaseManager> provider2, Provider<WordSuggestionAdapter> provider3) {
        this.historyProvider = provider;
        this.databaseHelperProvider = provider2;
        this.suggestionAdapterProvider = provider3;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(SearchFragment searchFragment) {
        injectHistory(searchFragment, this.historyProvider.get());
        injectDatabaseHelper(searchFragment, this.databaseHelperProvider.get());
        injectSuggestionAdapter(searchFragment, this.suggestionAdapterProvider.get());
    }

    public static MembersInjector<SearchFragment> create(Provider<FDHistory> provider, Provider<FDDatabaseManager> provider2, Provider<WordSuggestionAdapter> provider3) {
        return new SearchFragment_MembersInjector(provider, provider2, provider3);
    }

    public static void injectHistory(SearchFragment searchFragment, FDHistory fDHistory) {
        searchFragment.history = fDHistory;
    }

    public static void injectDatabaseHelper(SearchFragment searchFragment, FDDatabaseManager fDDatabaseManager) {
        searchFragment.databaseHelper = fDDatabaseManager;
    }

    public static void injectSuggestionAdapter(SearchFragment searchFragment, WordSuggestionAdapter wordSuggestionAdapter) {
        searchFragment.suggestionAdapter = wordSuggestionAdapter;
    }
}
