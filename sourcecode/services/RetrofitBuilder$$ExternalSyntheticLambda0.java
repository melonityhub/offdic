package fast.dic.dict.services;

import okhttp3.logging.HttpLoggingInterceptor;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class RetrofitBuilder$$ExternalSyntheticLambda0 implements HttpLoggingInterceptor.Logger {
    public final /* synthetic */ String f$0;

    public /* synthetic */ RetrofitBuilder$$ExternalSyntheticLambda0() {
        tag = str;
    }

    @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
    public final void log(String str) {
        RetrofitBuilder.buildLogger$lambda$0(tag, str);
    }
}
