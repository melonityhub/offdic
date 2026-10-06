package fast.dic.dict.presentation.result_order_modal;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class ResultOrderAdapter_Factory implements Factory<ResultOrderAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public ResultOrderAdapter get() {
        return newInstance();
    }

    public static ResultOrderAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static ResultOrderAdapter newInstance() {
        return new ResultOrderAdapter();
    }

    private static final class InstanceHolder {
        static final ResultOrderAdapter_Factory INSTANCE = new ResultOrderAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
