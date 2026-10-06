package fast.dic.dict.services;

import android.util.Log;
import com.ironsource.U3;
import dagger.Module;
import dagger.Provides;
import fast.dic.dict.p000const.ConfigConstKt;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.TimeUnit;
import javax.inject.Qualifier;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: compiled from: RetrofitBuilder.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u0004 !\"#B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\fb\u0002\b\rJ\u0010\u0010\u000e\u001a\u00020\u000bH\u0007b\u0002\b\u000fb\u0002\b\rJ\u0010\u0010\u0010\u001a\u00020\u000bH\u0007b\u0002\b\u0011b\u0002\b\rJ\u0010\u0010\u0012\u001a\u00020\u000bH\u0007b\u0002\b\u0013b\u0002\b\rJ\u001e\u0010\u0014\u001a\u00020\u00152\f\b\u0001\u0010\u0016\u001a\u00020\u000b:\u0002\b\fH\u0007b\u0002\b\rb\u0002\b\u0017J\u001e\u0010\u0018\u001a\u00020\u00192\f\b\u0001\u0010\u0016\u001a\u00020\u000b:\u0002\b\u000fH\u0007b\u0002\b\rb\u0002\b\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\u001a\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u0019¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fÊ\u0001\u0002\b%Ê\u0001\u0010\b&\u0012\f\b'\u0012\b\b\fJ\u0004\b\t0(¨\u0006$"}, d2 = {"Lfast/dic/dict/services/RetrofitBuilder;", "", "<init>", "()V", "BASE_URL", "", "LOG_TAG", "buildLogger", "Lokhttp3/logging/HttpLoggingInterceptor;", "tag", "getRetrofit", "Lretrofit2/Retrofit;", "Lfast/dic/dict/services/RetrofitBuilder$Fastdic;", "Ldagger/Provides;", "getParseRetrofit", "Lfast/dic/dict/services/RetrofitBuilder$Parse;", "getGoogleRetrofit", "Lfast/dic/dict/services/RetrofitBuilder$Google;", "getFDAdsRetrofit", "Lfast/dic/dict/services/RetrofitBuilder$FDAds;", "provideApiService", "Lfast/dic/dict/services/ApiService;", "retrofit", "Ljavax/inject/Singleton;", "provideParseApiService", "Lfast/dic/dict/services/ParseApiService;", "apiService", "getApiService", "()Lfast/dic/dict/services/ApiService;", "parseApiService", "getParseApiService", "()Lfast/dic/dict/services/ParseApiService;", "Parse", "Fastdic", "Google", "FDAds", "app", "Ldagger/Module;", "Ldagger/hilt/InstallIn;", "value", "Ldagger/hilt/components/SingletonComponent;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@Module
public final class RetrofitBuilder {
    private static final String BASE_URL = "https://fastdic.com/api/";
    public static final RetrofitBuilder INSTANCE;
    private static final String LOG_TAG = "FD-HTTP";
    private static final ApiService apiService;
    private static final ParseApiService parseApiService;

    /* JADX INFO: compiled from: RetrofitBuilder.kt */
    @Qualifier
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000Ê\u0001\u0002\b\u0003Ê\u0001\u000e\b\u0004\u0012\n\b\u0005\u0012\u0006\b\n0\u00068\u0007¨\u0006\u0002"}, d2 = {"Lfast/dic/dict/services/RetrofitBuilder$FDAds;", "", "app", "Ljavax/inject/Qualifier;", "Lkotlin/annotation/Retention;", "value", "Lkotlin/annotation/AnnotationRetention;", "BINARY"}, k = 1, mv = {2, 4, 0}, xi = 48)
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention(AnnotationRetention.BINARY)
    public @interface FDAds {
    }

    /* JADX INFO: compiled from: RetrofitBuilder.kt */
    @Qualifier
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000Ê\u0001\u0002\b\u0003Ê\u0001\u000e\b\u0004\u0012\n\b\u0005\u0012\u0006\b\n0\u00068\u0007¨\u0006\u0002"}, d2 = {"Lfast/dic/dict/services/RetrofitBuilder$Fastdic;", "", "app", "Ljavax/inject/Qualifier;", "Lkotlin/annotation/Retention;", "value", "Lkotlin/annotation/AnnotationRetention;", "BINARY"}, k = 1, mv = {2, 4, 0}, xi = 48)
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention(AnnotationRetention.BINARY)
    public @interface Fastdic {
    }

    /* JADX INFO: compiled from: RetrofitBuilder.kt */
    @Qualifier
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000Ê\u0001\u0002\b\u0003Ê\u0001\u000e\b\u0004\u0012\n\b\u0005\u0012\u0006\b\n0\u00068\u0007¨\u0006\u0002"}, d2 = {"Lfast/dic/dict/services/RetrofitBuilder$Google;", "", "app", "Ljavax/inject/Qualifier;", "Lkotlin/annotation/Retention;", "value", "Lkotlin/annotation/AnnotationRetention;", "BINARY"}, k = 1, mv = {2, 4, 0}, xi = 48)
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention(AnnotationRetention.BINARY)
    public @interface Google {
    }

    /* JADX INFO: compiled from: RetrofitBuilder.kt */
    @Qualifier
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000Ê\u0001\u0002\b\u0003Ê\u0001\u000e\b\u0004\u0012\n\b\u0005\u0012\u0006\b\n0\u00068\u0007¨\u0006\u0002"}, d2 = {"Lfast/dic/dict/services/RetrofitBuilder$Parse;", "", "app", "Ljavax/inject/Qualifier;", "Lkotlin/annotation/Retention;", "value", "Lkotlin/annotation/AnnotationRetention;", "BINARY"}, k = 1, mv = {2, 4, 0}, xi = 48)
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention(AnnotationRetention.BINARY)
    public @interface Parse {
    }

    private RetrofitBuilder() {
    }

    private final HttpLoggingInterceptor buildLogger(final String tag) {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: fast.dic.dict.services.RetrofitBuilder$$ExternalSyntheticLambda0
            @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
            public final void log(String str) {
                RetrofitBuilder.buildLogger$lambda$0(tag, str);
            }
        });
        httpLoggingInterceptor.level(HttpLoggingInterceptor.Level.BODY);
        return httpLoggingInterceptor;
    }

    static final void buildLogger$lambda$0(String str, String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.d(LOG_TAG, U3.j.d + str + "] " + msg);
    }

    @Provides
    public final Retrofit getRetrofit() {
        Retrofit retrofitBuild = new Retrofit.Builder().baseUrl(BASE_URL).client(new OkHttpClient().newBuilder().addInterceptor(buildLogger("Fastdic")).connectTimeout(30L, TimeUnit.SECONDS).readTimeout(30L, TimeUnit.SECONDS).writeTimeout(30L, TimeUnit.SECONDS).build()).addConverterFactory(GsonConverterFactory.create()).build();
        Intrinsics.checkNotNullExpressionValue(retrofitBuild, "build(...)");
        return retrofitBuild;
    }

    @Provides
    public final Retrofit getParseRetrofit() {
        Retrofit retrofitBuild = new Retrofit.Builder().baseUrl(ConfigConstKt.PARSE_SERVER_URL).client(new OkHttpClient().newBuilder().addInterceptor(buildLogger("Parse")).connectTimeout(30L, TimeUnit.SECONDS).readTimeout(30L, TimeUnit.SECONDS).writeTimeout(30L, TimeUnit.SECONDS).build()).addConverterFactory(GsonConverterFactory.create()).build();
        Intrinsics.checkNotNullExpressionValue(retrofitBuild, "build(...)");
        return retrofitBuild;
    }

    @Provides
    public final Retrofit getGoogleRetrofit() {
        Retrofit retrofitBuild = new Retrofit.Builder().baseUrl(ConfigConstKt.GOOGLE_SERVER_URL).client(new OkHttpClient().newBuilder().addInterceptor(buildLogger("Google")).connectTimeout(30L, TimeUnit.SECONDS).readTimeout(30L, TimeUnit.SECONDS).writeTimeout(30L, TimeUnit.SECONDS).build()).addConverterFactory(GsonConverterFactory.create()).build();
        Intrinsics.checkNotNullExpressionValue(retrofitBuild, "build(...)");
        return retrofitBuild;
    }

    @Provides
    public final Retrofit getFDAdsRetrofit() {
        Retrofit retrofitBuild = new Retrofit.Builder().baseUrl(ConfigConstKt.FD_AD_URL).client(new OkHttpClient().newBuilder().addInterceptor(buildLogger("FDAds")).connectTimeout(30L, TimeUnit.SECONDS).readTimeout(30L, TimeUnit.SECONDS).writeTimeout(30L, TimeUnit.SECONDS).build()).addConverterFactory(GsonConverterFactory.create()).build();
        Intrinsics.checkNotNullExpressionValue(retrofitBuild, "build(...)");
        return retrofitBuild;
    }

    @Provides
    @Singleton
    public final ApiService provideApiService(Retrofit retrofit) {
        Intrinsics.checkNotNullParameter(retrofit, "retrofit");
        Object objCreate = retrofit.create(ApiService.class);
        Intrinsics.checkNotNullExpressionValue(objCreate, "create(...)");
        return (ApiService) objCreate;
    }

    @Provides
    @Singleton
    public final ParseApiService provideParseApiService(Retrofit retrofit) {
        Intrinsics.checkNotNullParameter(retrofit, "retrofit");
        Object objCreate = retrofit.create(ParseApiService.class);
        Intrinsics.checkNotNullExpressionValue(objCreate, "create(...)");
        return (ParseApiService) objCreate;
    }

    static {
        RetrofitBuilder retrofitBuilder = new RetrofitBuilder();
        INSTANCE = retrofitBuilder;
        Object objCreate = retrofitBuilder.getRetrofit().create(ApiService.class);
        Intrinsics.checkNotNullExpressionValue(objCreate, "create(...)");
        apiService = (ApiService) objCreate;
        Object objCreate2 = retrofitBuilder.getParseRetrofit().create(ParseApiService.class);
        Intrinsics.checkNotNullExpressionValue(objCreate2, "create(...)");
        parseApiService = (ParseApiService) objCreate2;
    }

    public final ApiService getApiService() {
        return apiService;
    }

    public final ParseApiService getParseApiService() {
        return parseApiService;
    }
}
