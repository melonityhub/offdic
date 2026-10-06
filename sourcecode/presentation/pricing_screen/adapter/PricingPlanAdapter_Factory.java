package fast.dic.dict.presentation.pricing_screen.adapter;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class PricingPlanAdapter_Factory implements Factory<PricingPlanAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public PricingPlanAdapter get() {
        return newInstance();
    }

    public static PricingPlanAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static PricingPlanAdapter newInstance() {
        return new PricingPlanAdapter();
    }

    private static final class InstanceHolder {
        static final PricingPlanAdapter_Factory INSTANCE = new PricingPlanAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
