package fast.dic.dict.presentation.wod_history_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class WodHistoryFragment_MembersInjector implements MembersInjector<WodHistoryFragment> {
    private final Provider<WodMonthHistoryAdapter> adapterProvider;
    private final Provider<FDHistory> historyProvider;

    private WodHistoryFragment_MembersInjector(Provider<FDHistory> provider, Provider<WodMonthHistoryAdapter> provider2) {
        this.historyProvider = provider;
        this.adapterProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(WodHistoryFragment wodHistoryFragment) {
        BaseFragment_MembersInjector.injectHistory(wodHistoryFragment, this.historyProvider.get());
        injectAdapter(wodHistoryFragment, this.adapterProvider.get());
    }

    public static MembersInjector<WodHistoryFragment> create(Provider<FDHistory> provider, Provider<WodMonthHistoryAdapter> provider2) {
        return new WodHistoryFragment_MembersInjector(provider, provider2);
    }

    public static void injectAdapter(WodHistoryFragment wodHistoryFragment, WodMonthHistoryAdapter wodMonthHistoryAdapter) {
        wodHistoryFragment.adapter = wodMonthHistoryAdapter;
    }
}
