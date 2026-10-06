package fast.dic.dict.bases;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.helpers.database.couchbase.FDHistory;

/* JADX INFO: loaded from: classes11.dex */
public final class BaseFragment_MembersInjector implements MembersInjector<BaseFragment> {
    private final Provider<FDHistory> historyProvider;

    private BaseFragment_MembersInjector(Provider<FDHistory> provider) {
        this.historyProvider = provider;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(BaseFragment baseFragment) {
        injectHistory(baseFragment, this.historyProvider.get());
    }

    public static MembersInjector<BaseFragment> create(Provider<FDHistory> provider) {
        return new BaseFragment_MembersInjector(provider);
    }

    public static void injectHistory(BaseFragment baseFragment, FDHistory fDHistory) {
        baseFragment.history = fDHistory;
    }
}
