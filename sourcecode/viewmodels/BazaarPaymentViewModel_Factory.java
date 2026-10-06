package fast.dic.dict.viewmodels;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class BazaarPaymentViewModel_Factory implements Factory<BazaarPaymentViewModel> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public BazaarPaymentViewModel get() {
        return newInstance();
    }

    public static BazaarPaymentViewModel_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static BazaarPaymentViewModel newInstance() {
        return new BazaarPaymentViewModel();
    }

    private static final class InstanceHolder {
        static final BazaarPaymentViewModel_Factory INSTANCE = new BazaarPaymentViewModel_Factory();

        private InstanceHolder() {
        }
    }
}
