package fast.dic.dict.services;

import fast.dic.dict.models.api.BaseApiResponseModel;
import java.util.Map;
import kotlin.Metadata;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.HeaderMap;
import retrofit2.http.POST;

/* JADX INFO: compiled from: ApiService.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\\\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\u001e\b\u0001\u0010\u0005\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0006:\u0002\b\b2\u001a\b\u0001\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006:\u0002\b\nH'b\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lfast/dic/dict/services/ParseApiService;", "", "verificationEmailRequest", "Lretrofit2/Call;", "Lfast/dic/dict/models/api/BaseApiResponseModel;", "headers", "", "", "Lretrofit2/http/HeaderMap;", "email", "Lretrofit2/http/Body;", "Lretrofit2/http/POST;", "value", "v1/verificationEmailRequest", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface ParseApiService {
    @POST("v1/verificationEmailRequest")
    Call<BaseApiResponseModel> verificationEmailRequest(@HeaderMap Map<String, String> headers, @Body Map<String, String> email);
}
