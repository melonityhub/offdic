package fast.dic.dict.services;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes11.dex */
public final class RetrofitBuilder_ProvideApiServiceFactory implements Factory<ApiService> {
    private final Provider<Retrofit> retrofitProvider;

    private RetrofitBuilder_ProvideApiServiceFactory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public ApiService get() {
        return provideApiService(this.retrofitProvider.get());
    }

    public static RetrofitBuilder_ProvideApiServiceFactory create(Provider<Retrofit> provider) {
        return new RetrofitBuilder_ProvideApiServiceFactory(provider);
    }

    public static ApiService provideApiService(Retrofit retrofit) {
        return (ApiService) Preconditions.checkNotNullFromProvides(RetrofitBuilder.INSTANCE.provideApiService(retrofit));
    }
}
