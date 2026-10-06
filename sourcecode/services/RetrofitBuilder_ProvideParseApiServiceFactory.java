package fast.dic.dict.services;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes11.dex */
public final class RetrofitBuilder_ProvideParseApiServiceFactory implements Factory<ParseApiService> {
    private final Provider<Retrofit> retrofitProvider;

    private RetrofitBuilder_ProvideParseApiServiceFactory(Provider<Retrofit> provider) {
        this.retrofitProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public ParseApiService get() {
        return provideParseApiService(this.retrofitProvider.get());
    }

    public static RetrofitBuilder_ProvideParseApiServiceFactory create(Provider<Retrofit> provider) {
        return new RetrofitBuilder_ProvideParseApiServiceFactory(provider);
    }

    public static ParseApiService provideParseApiService(Retrofit retrofit) {
        return (ParseApiService) Preconditions.checkNotNullFromProvides(RetrofitBuilder.INSTANCE.provideParseApiService(retrofit));
    }
}
