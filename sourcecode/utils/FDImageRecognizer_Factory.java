package fast.dic.dict.utils;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class FDImageRecognizer_Factory implements Factory<FDImageRecognizer> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDImageRecognizer get() {
        return newInstance();
    }

    public static FDImageRecognizer_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static FDImageRecognizer newInstance() {
        return new FDImageRecognizer();
    }

    private static final class InstanceHolder {
        static final FDImageRecognizer_Factory INSTANCE = new FDImageRecognizer_Factory();

        private InstanceHolder() {
        }
    }
}
