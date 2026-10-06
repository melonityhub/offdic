package fast.dic.dict.services;

import dagger.internal.Factory;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes11.dex */
public final class WebService_Factory implements Factory<WebService> {
    private final Provider<ApiService> apiServiceProvider;

    private WebService_Factory(Provider<ApiService> provider) {
        this.apiServiceProvider = provider;
    }

    @Override // javax.inject.Provider, jakarta.inject.Provider
    public WebService get() {
        return newInstance(this.apiServiceProvider.get());
    }

    public static WebService_Factory create(Provider<ApiService> provider) {
        return new WebService_Factory(provider);
    }

    public static WebService newInstance(ApiService apiService) {
        return new WebService(apiService);
    }
}
