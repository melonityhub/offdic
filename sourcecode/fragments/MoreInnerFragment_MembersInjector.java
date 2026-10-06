package fast.dic.dict.fragments;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.adapters.MoreAdapter;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class MoreInnerFragment_MembersInjector implements MembersInjector<MoreInnerFragment> {
    private final Provider<MoreAdapter> adapterProvider;
    private final Provider<FDHistory> historyProvider;

    private MoreInnerFragment_MembersInjector(Provider<FDHistory> provider, Provider<MoreAdapter> provider2) {
        this.historyProvider = provider;
        this.adapterProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(MoreInnerFragment moreInnerFragment) {
        BaseFragment_MembersInjector.injectHistory(moreInnerFragment, this.historyProvider.get());
        injectAdapter(moreInnerFragment, this.adapterProvider.get());
    }

    public static MembersInjector<MoreInnerFragment> create(Provider<FDHistory> provider, Provider<MoreAdapter> provider2) {
        return new MoreInnerFragment_MembersInjector(provider, provider2);
    }

    public static void injectAdapter(MoreInnerFragment moreInnerFragment, MoreAdapter moreAdapter) {
        moreInnerFragment.adapter = moreAdapter;
    }
}
