package fast.dic.dict.presentation.wod_year_history_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class WodYearHistoryFragment_MembersInjector implements MembersInjector<WodYearHistoryFragment> {
    private final Provider<WodYearHistoryAdapter> adapterProvider;

    private WodYearHistoryFragment_MembersInjector(Provider<WodYearHistoryAdapter> provider) {
        this.adapterProvider = provider;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(WodYearHistoryFragment wodYearHistoryFragment) {
        injectAdapter(wodYearHistoryFragment, this.adapterProvider.get());
    }

    public static MembersInjector<WodYearHistoryFragment> create(Provider<WodYearHistoryAdapter> provider) {
        return new WodYearHistoryFragment_MembersInjector(provider);
    }

    public static void injectAdapter(WodYearHistoryFragment wodYearHistoryFragment, WodYearHistoryAdapter wodYearHistoryAdapter) {
        wodYearHistoryFragment.adapter = wodYearHistoryAdapter;
    }
}
