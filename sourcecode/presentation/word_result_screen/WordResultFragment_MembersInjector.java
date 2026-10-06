package fast.dic.dict.presentation.word_result_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.FDOfflinePlayer;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class WordResultFragment_MembersInjector implements MembersInjector<WordResultFragment> {
    private final Provider<FDHistory> historyProvider;
    private final Provider<FDOfflinePlayer> offlinePlayerProvider;

    private WordResultFragment_MembersInjector(Provider<FDHistory> provider, Provider<FDOfflinePlayer> provider2) {
        this.historyProvider = provider;
        this.offlinePlayerProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(WordResultFragment wordResultFragment) {
        BaseFragment_MembersInjector.injectHistory(wordResultFragment, this.historyProvider.get());
        injectOfflinePlayer(wordResultFragment, this.offlinePlayerProvider.get());
    }

    public static MembersInjector<WordResultFragment> create(Provider<FDHistory> provider, Provider<FDOfflinePlayer> provider2) {
        return new WordResultFragment_MembersInjector(provider, provider2);
    }

    public static void injectOfflinePlayer(WordResultFragment wordResultFragment, FDOfflinePlayer fDOfflinePlayer) {
        wordResultFragment.offlinePlayer = fDOfflinePlayer;
    }
}
