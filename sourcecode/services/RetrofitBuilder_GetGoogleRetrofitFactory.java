package fast.dic.dict.services;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes11.dex */
public final class RetrofitBuilder_GetGoogleRetrofitFactory implements Factory<Retrofit> {
    @Override // javax.inject.Provider, jakarta.inject.Provider
    public Retrofit get() {
        return getGoogleRetrofit();
    }

    public static RetrofitBuilder_GetGoogleRetrofitFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Retrofit getGoogleRetrofit() {
        return (Retrofit) Preconditions.checkNotNullFromProvides(RetrofitBuilder.INSTANCE.getGoogleRetrofit());
    }

    private static final class InstanceHolder {
        static final RetrofitBuilder_GetGoogleRetrofitFactory INSTANCE = new RetrofitBuilder_GetGoogleRetrofitFactory();

        private InstanceHolder() {
        }
    }
}
