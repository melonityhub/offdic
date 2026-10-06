package fast.dic.dict.fragments;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.adapters.MoreAdapter;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class MoreFragment_MembersInjector implements MembersInjector<MoreFragment> {
    private final Provider<MoreAdapter> adapterProvider;
    private final Provider<FDHistory> historyProvider;

    private MoreFragment_MembersInjector(Provider<FDHistory> provider, Provider<MoreAdapter> provider2) {
        this.historyProvider = provider;
        this.adapterProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(MoreFragment moreFragment) {
        BaseFragment_MembersInjector.injectHistory(moreFragment, this.historyProvider.get());
        injectAdapter(moreFragment, this.adapterProvider.get());
    }

    public static MembersInjector<MoreFragment> create(Provider<FDHistory> provider, Provider<MoreAdapter> provider2) {
        return new MoreFragment_MembersInjector(provider, provider2);
    }

    public static void injectAdapter(MoreFragment moreFragment, MoreAdapter moreAdapter) {
        moreFragment.adapter = moreAdapter;
    }
}
