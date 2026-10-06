package fast.dic.dict.adapters;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class MoreAdapter_Factory implements Factory<MoreAdapter> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public MoreAdapter get() {
        return newInstance();
    }

    public static MoreAdapter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static MoreAdapter newInstance() {
        return new MoreAdapter();
    }

    private static final class InstanceHolder {
        static final MoreAdapter_Factory INSTANCE = new MoreAdapter_Factory();

        private InstanceHolder() {
        }
    }
}
