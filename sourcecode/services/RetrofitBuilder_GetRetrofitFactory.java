package fast.dic.dict.services;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes11.dex */
public final class RetrofitBuilder_GetRetrofitFactory implements Factory<Retrofit> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Retrofit get() {
        return getRetrofit();
    }

    public static RetrofitBuilder_GetRetrofitFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Retrofit getRetrofit() {
        return (Retrofit) Preconditions.checkNotNullFromProvides(RetrofitBuilder.INSTANCE.getRetrofit());
    }

    private static final class InstanceHolder {
        static final RetrofitBuilder_GetRetrofitFactory INSTANCE = new RetrofitBuilder_GetRetrofitFactory();

        private InstanceHolder() {
        }
    }
}
