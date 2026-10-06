package fast.dic.dict.fragments;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.services.parse.FDParseWrapper;

/* JADX INFO: loaded from: classes11.dex */
public final class UpdateProfileFragment_MembersInjector implements MembersInjector<UpdateProfileFragment> {
    private final Provider<FDParseWrapper> fdParseWrapperProvider;
    private final Provider<FDHistory> historyProvider;

    private UpdateProfileFragment_MembersInjector(Provider<FDHistory> provider, Provider<FDParseWrapper> provider2) {
        this.historyProvider = provider;
        this.fdParseWrapperProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(UpdateProfileFragment updateProfileFragment) {
        BaseFragment_MembersInjector.injectHistory(updateProfileFragment, this.historyProvider.get());
        injectFdParseWrapper(updateProfileFragment, this.fdParseWrapperProvider.get());
    }

    public static MembersInjector<UpdateProfileFragment> create(Provider<FDHistory> provider, Provider<FDParseWrapper> provider2) {
        return new UpdateProfileFragment_MembersInjector(provider, provider2);
    }

    public static void injectFdParseWrapper(UpdateProfileFragment updateProfileFragment, FDParseWrapper fDParseWrapper) {
        updateProfileFragment.fdParseWrapper = fDParseWrapper;
    }
}
