package fast.dic.dict.utils;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class Logger_Factory implements Factory<Logger> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Logger get() {
        return newInstance();
    }

    public static Logger_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Logger newInstance() {
        return new Logger();
    }

    private static final class InstanceHolder {
        static final Logger_Factory INSTANCE = new Logger_Factory();

        private InstanceHolder() {
        }
    }
}
