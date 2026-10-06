package fast.dic.dict.fragments;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.utils.FDHtml;

/* JADX INFO: loaded from: classes11.dex */
public final class ChooseLanguageFragment_MembersInjector implements MembersInjector<ChooseLanguageFragment> {
    private final Provider<FDHtml> fdHtmlProvider;
    private final Provider<FDHistory> historyProvider;

    private ChooseLanguageFragment_MembersInjector(Provider<FDHistory> provider, Provider<FDHtml> provider2) {
        this.historyProvider = provider;
        this.fdHtmlProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ChooseLanguageFragment chooseLanguageFragment) {
        BaseFragment_MembersInjector.injectHistory(chooseLanguageFragment, this.historyProvider.get());
        injectFdHtml(chooseLanguageFragment, this.fdHtmlProvider.get());
    }

    public static MembersInjector<ChooseLanguageFragment> create(Provider<FDHistory> provider, Provider<FDHtml> provider2) {
        return new ChooseLanguageFragment_MembersInjector(provider, provider2);
    }

    public static void injectFdHtml(ChooseLanguageFragment chooseLanguageFragment, FDHtml fDHtml) {
        chooseLanguageFragment.fdHtml = fDHtml;
    }
}
