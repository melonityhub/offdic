package fast.dic.dict.presentation.result_order_modal;

import dagger.MembersInjector;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class ResultOrderModalFragment_MembersInjector implements MembersInjector<ResultOrderModalFragment> {
    private final Provider<ResultOrderAdapter> adapterProvider;

    private ResultOrderModalFragment_MembersInjector(Provider<ResultOrderAdapter> provider) {
        this.adapterProvider = provider;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(ResultOrderModalFragment resultOrderModalFragment) {
        injectAdapter(resultOrderModalFragment, this.adapterProvider.get());
    }

    public static MembersInjector<ResultOrderModalFragment> create(Provider<ResultOrderAdapter> provider) {
        return new ResultOrderModalFragment_MembersInjector(provider);
    }

    public static void injectAdapter(ResultOrderModalFragment resultOrderModalFragment, ResultOrderAdapter resultOrderAdapter) {
        resultOrderModalFragment.adapter = resultOrderAdapter;
    }
}
