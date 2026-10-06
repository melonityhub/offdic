package fast.dic.dict.services;

import fast.dic.dict.models.PricingResponse;
import fast.dic.dict.models.WodHistoryMonthDto;
import fast.dic.dict.models.api.BaseApiResponseModel;
import fast.dic.dict.models.api.ValidateModel;
import fast.dic.dict.models.api.WodApiModel;
import fast.dic.dict.models.database.TranslateModel;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.HeaderMap;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.Path;

/* JADX INFO: compiled from: ApiService.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H'b\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007JH\u0010\b\u001a\u001c\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b0\t\u0018\u00010\u00032\u0016\b\u0001\u0010\r\u001a\u00020\n:\f\b\u000e\u0012\b\b\u0006\u0012\u0004\b\b(\rH'b\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000fJ>\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00112\u0016\b\u0001\u0010\u0013\u001a\u00020\n:\f\b\u000e\u0012\b\b\u0006\u0012\u0004\b\b(\u0013H§@b\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0015¢\u0006\u0002\u0010\u0014J>\u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u00112\u0016\b\u0001\u0010\u0013\u001a\u00020\n:\f\b\u000e\u0012\b\b\u0006\u0012\u0004\b\b(\u0013H§@b\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0018¢\u0006\u0002\u0010\u0014J$\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011H§@b\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007¢\u0006\u0002\u0010\u001aJ>\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00032\u001e\b\u0001\u0010\u001d\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t:\u0002\b\u001eH'b\f\b\u001f\u0012\b\b\u0006\u0012\u0004\b\b( J^\u0010!\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\"\u0018\u00010\u00032\u001e\b\u0001\u0010\u001d\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t:\u0002\b\u001e2\u0018\b\u0001\u0010#\u001a\u0004\u0018\u00010$:\f\b%\u0012\b\b\u0006\u0012\u0004\b\b(#H'b\u0002\b&b\f\b\u001f\u0012\b\b\u0006\u0012\u0004\b\b('J^\u0010(\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\"\u0018\u00010\u00032\u001e\b\u0001\u0010\u001d\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t:\u0002\b\u001e2\u0018\b\u0001\u0010#\u001a\u0004\u0018\u00010$:\f\b%\u0012\b\b\u0006\u0012\u0004\b\b(#H'b\u0002\b&b\f\b\u001f\u0012\b\b\u0006\u0012\u0004\b\b()J^\u0010*\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010+\u0018\u00010\u00032\u001e\b\u0001\u0010\u001d\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t:\u0002\b\u001e2\u0018\b\u0001\u0010,\u001a\u0004\u0018\u00010$:\f\b%\u0012\b\b\u0006\u0012\u0004\b\b(,H'b\u0002\b&b\f\b\u001f\u0012\b\b\u0006\u0012\u0004\b\b(-¨\u0006.À\u0006\u0003"}, d2 = {"Lfast/dic/dict/services/ApiService;", "", "wodSync", "Lretrofit2/Call;", "Lfast/dic/dict/models/api/WodApiModel;", "Lretrofit2/http/GET;", "value", "v1/wod", "wodHistory", "", "", "", "Lfast/dic/dict/models/WodHistoryMonthDto;", "year", "Lretrofit2/http/Path;", "v1/wod/history/{year}", "getPricingList", "Lretrofit2/Response;", "Lfast/dic/dict/models/PricingResponse;", "language", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "v1/pricing/{language}", "getPricingListV2", "Lfast/dic/dict/domain/entity/pricing/PricingResponse;", "v2/pricing/{language}", "wod", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAccount", "Lfast/dic/dict/models/api/BaseApiResponseModel;", "headers", "Lretrofit2/http/HeaderMap;", "Lretrofit2/http/POST;", "v1/delete-account", "googleplay", "Lfast/dic/dict/models/api/ValidateModel;", "receipt", "Lokhttp3/RequestBody;", "Lretrofit2/http/Part;", "Lretrofit2/http/Multipart;", "v1/googleplay/validation", "cafebazaar", "v1/cafebazaar/validation", "translate", "Lfast/dic/dict/models/database/TranslateModel;", "sentence", "v1/translate", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface ApiService {
    @POST("v1/cafebazaar/validation")
    @Multipart
    Call<ValidateModel> cafebazaar(@HeaderMap Map<String, String> headers, @Part("receipt") RequestBody receipt);

    @POST("v1/delete-account")
    Call<BaseApiResponseModel> deleteAccount(@HeaderMap Map<String, String> headers);

    @GET("v1/pricing/{language}")
    Object getPricingList(@Path("language") String str, Continuation<? super Response<PricingResponse>> continuation);

    @GET("v2/pricing/{language}")
    Object getPricingListV2(@Path("language") String str, Continuation<? super Response<fast.dic.dict.domain.entity.pricing.PricingResponse>> continuation);

    @POST("v1/googleplay/validation")
    @Multipart
    Call<ValidateModel> googleplay(@HeaderMap Map<String, String> headers, @Part("receipt") RequestBody receipt);

    @POST("v1/translate")
    @Multipart
    Call<TranslateModel> translate(@HeaderMap Map<String, String> headers, @Part("sentence") RequestBody sentence);

    @GET("v1/wod")
    Object wod(Continuation<? super Response<WodApiModel>> continuation);

    @GET("v1/wod/history/{year}")
    Call<Map<String, List<WodHistoryMonthDto>>> wodHistory(@Path("year") String year);

    @GET("v1/wod")
    Call<WodApiModel> wodSync();
}
