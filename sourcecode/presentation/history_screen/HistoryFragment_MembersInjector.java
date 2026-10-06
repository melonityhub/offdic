package fast.dic.dict.presentation.history_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class HistoryFragment_MembersInjector implements MembersInjector<HistoryFragment> {
    private final Provider<HistoryAdapter> adapterProvider;
    private final Provider<FDHistory> historyProvider;

    private HistoryFragment_MembersInjector(Provider<FDHistory> provider, Provider<HistoryAdapter> provider2) {
        this.historyProvider = provider;
        this.adapterProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(HistoryFragment historyFragment) {
        BaseFragment_MembersInjector.injectHistory(historyFragment, this.historyProvider.get());
        injectAdapter(historyFragment, this.adapterProvider.get());
    }

    public static MembersInjector<HistoryFragment> create(Provider<FDHistory> provider, Provider<HistoryAdapter> provider2) {
        return new HistoryFragment_MembersInjector(provider, provider2);
    }

    public static void injectAdapter(HistoryFragment historyFragment, HistoryAdapter historyAdapter) {
        historyFragment.adapter = historyAdapter;
    }
}
