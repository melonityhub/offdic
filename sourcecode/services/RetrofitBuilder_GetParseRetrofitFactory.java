package fast.dic.dict.services;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes11.dex */
public final class RetrofitBuilder_GetParseRetrofitFactory implements Factory<Retrofit> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Retrofit get() {
        return getParseRetrofit();
    }

    public static RetrofitBuilder_GetParseRetrofitFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Retrofit getParseRetrofit() {
        return (Retrofit) Preconditions.checkNotNullFromProvides(RetrofitBuilder.INSTANCE.getParseRetrofit());
    }

    private static final class InstanceHolder {
        static final RetrofitBuilder_GetParseRetrofitFactory INSTANCE = new RetrofitBuilder_GetParseRetrofitFactory();

        private InstanceHolder() {
        }
    }
}
