package fast.dic.dict.presentation.ai_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.FDOfflinePlayer;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class AIFragment_MembersInjector implements MembersInjector<AIFragment> {
    private final Provider<FDHistory> historyProvider;
    private final Provider<FDOfflinePlayer> offlinePlayerProvider;

    private AIFragment_MembersInjector(Provider<FDHistory> provider, Provider<FDOfflinePlayer> provider2) {
        this.historyProvider = provider;
        this.offlinePlayerProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(AIFragment aIFragment) {
        BaseFragment_MembersInjector.injectHistory(aIFragment, this.historyProvider.get());
        injectOfflinePlayer(aIFragment, this.offlinePlayerProvider.get());
    }

    public static MembersInjector<AIFragment> create(Provider<FDHistory> provider, Provider<FDOfflinePlayer> provider2) {
        return new AIFragment_MembersInjector(provider, provider2);
    }

    public static void injectOfflinePlayer(AIFragment aIFragment, FDOfflinePlayer fDOfflinePlayer) {
        aIFragment.offlinePlayer = fDOfflinePlayer;
    }
}
