package fast.dic.dict.presentation.result_order_modal;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class ResultOrderModalViewModel_Factory implements Factory<ResultOrderModalViewModel> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public ResultOrderModalViewModel get() {
        return newInstance();
    }

    public static ResultOrderModalViewModel_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static ResultOrderModalViewModel newInstance() {
        return new ResultOrderModalViewModel();
    }

    private static final class InstanceHolder {
        static final ResultOrderModalViewModel_Factory INSTANCE = new ResultOrderModalViewModel_Factory();

        private InstanceHolder() {
        }
    }
}
