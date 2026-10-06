package fast.dic.dict.services.parse;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes11.dex */
public final class FDParseUser_Factory implements Factory<FDParseUser> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public FDParseUser get() {
        return newInstance();
    }

    public static FDParseUser_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static FDParseUser newInstance() {
        return new FDParseUser();
    }

    private static final class InstanceHolder {
        static final FDParseUser_Factory INSTANCE = new FDParseUser_Factory();

        private InstanceHolder() {
        }
    }
}
