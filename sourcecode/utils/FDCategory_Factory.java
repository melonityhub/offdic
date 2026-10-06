package fast.dic.dict.utils;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class FDCategory_Factory implements Factory<FDCategory> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDCategory get() {
        return newInstance();
    }

    public static FDCategory_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static FDCategory newInstance() {
        return new FDCategory();
    }

    private static final class InstanceHolder {
        static final FDCategory_Factory INSTANCE = new FDCategory_Factory();

        private InstanceHolder() {
        }
    }
}
