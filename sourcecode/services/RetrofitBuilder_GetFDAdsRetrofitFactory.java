package fast.dic.dict.services;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes11.dex */
public final class RetrofitBuilder_GetFDAdsRetrofitFactory implements Factory<Retrofit> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Retrofit get() {
        return getFDAdsRetrofit();
    }

    public static RetrofitBuilder_GetFDAdsRetrofitFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Retrofit getFDAdsRetrofit() {
        return (Retrofit) Preconditions.checkNotNullFromProvides(RetrofitBuilder.INSTANCE.getFDAdsRetrofit());
    }

    private static final class InstanceHolder {
        static final RetrofitBuilder_GetFDAdsRetrofitFactory INSTANCE = new RetrofitBuilder_GetFDAdsRetrofitFactory();

        private InstanceHolder() {
        }
    }
}
