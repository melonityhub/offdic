package fast.dic.dict.presentation.pricing_screen;

import dagger.MembersInjector;
import dagger.internal.Provider;
import fast.dic.dict.bases.BaseFragment_MembersInjector;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.presentation.pricing_screen.adapter.PricingPlanAdapter;

/* JADX INFO: loaded from: classes11.dex */
public final class PricingFragment_MembersInjector implements MembersInjector<PricingFragment> {
    private final Provider<FDHistory> historyProvider;
    private final Provider<PricingPlanAdapter> planAdapterProvider;

    private PricingFragment_MembersInjector(Provider<FDHistory> provider, Provider<PricingPlanAdapter> provider2) {
        this.historyProvider = provider;
        this.planAdapterProvider = provider2;
    }

    @Override // dagger.MembersInjector
    public void injectMembers(PricingFragment pricingFragment) {
        BaseFragment_MembersInjector.injectHistory(pricingFragment, this.historyProvider.get());
        injectPlanAdapter(pricingFragment, this.planAdapterProvider.get());
    }

    public static MembersInjector<PricingFragment> create(Provider<FDHistory> provider, Provider<PricingPlanAdapter> provider2) {
        return new PricingFragment_MembersInjector(provider, provider2);
    }

    public static void injectPlanAdapter(PricingFragment pricingFragment, PricingPlanAdapter pricingPlanAdapter) {
        pricingFragment.planAdapter = pricingPlanAdapter;
    }
}
