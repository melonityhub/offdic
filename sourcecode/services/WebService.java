package fast.dic.dict.services;

import androidx.webkit.internal.AssetHelper;
import com.ironsource.C4232z5;
import fast.dic.dict.models.PricingResponse;
import fast.dic.dict.models.WodHistoryMonthDto;
import fast.dic.dict.models.api.BaseApiResponseModel;
import fast.dic.dict.models.api.ValidateModel;
import fast.dic.dict.models.api.WodApiModel;
import fast.dic.dict.models.database.TranslateModel;
import fast.dic.dict.p000const.ConfigConstKt;
import fast.dic.dict.utils.FDLanguageWord;
import ir.cafebazaar.poolakey.constant.RawJson;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: WebServices.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bH\u0086@¢\u0006\u0002\u0010\nJ$\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011J \u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0086@¢\u0006\u0002\u0010\u0017J \u0010\u0018\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0086@¢\u0006\u0002\u0010\u0017J0\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010\u0011J \u0010\u001d\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011JF\u0010\u001e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010 \u0018\u00010\u0011H\u0007b\u0010\b!\u0012\f\b\"\u0012\b\b\fJ\u0004\b\b(#J2\u0010$\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010 \u0018\u00010\u0011J.\u0010%\u001a\u00020\f2\u0006\u0010&\u001a\u00020\u000e2\u001e\u0010\u0010\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020)0(0'0\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lfast/dic/dict/services/WebService;", "", "apiService", "Lfast/dic/dict/services/ApiService;", "<init>", "(Lfast/dic/dict/services/ApiService;)V", "Ljavax/inject/Inject;", "getWod", "Lretrofit2/Response;", "Lfast/dic/dict/models/api/WodApiModel;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteAccount", "", "email", "", "sessionToken", "response", "Lretrofit2/Callback;", "Lfast/dic/dict/models/api/BaseApiResponseModel;", "getPricingList", "Lfast/dic/dict/models/PricingResponse;", "language", "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;", "(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPricingListV2", "Lfast/dic/dict/domain/entity/pricing/PricingResponse;", "translateSentence", "sentence", "Lfast/dic/dict/models/database/TranslateModel;", "verificationEmailRequest", "validateBazaar", RawJson.ORDER_ID, "Lfast/dic/dict/models/api/ValidateModel;", "Landroid/annotation/SuppressLint;", "value", "SuspiciousIndentation", "validateGoogle", "getWodHistory", "year", "", "", "Lfast/dic/dict/models/WodHistoryMonthDto;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class WebService {
    private final ApiService apiService;

    @Inject
    public WebService(ApiService apiService) {
        Intrinsics.checkNotNullParameter(apiService, "apiService");
        this.apiService = apiService;
    }

    public final Object getWod(Continuation<? super Response<WodApiModel>> continuation) {
        return this.apiService.wod(continuation);
    }

    public final void deleteAccount(String email, String sessionToken, Callback<BaseApiResponseModel> response) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        Intrinsics.checkNotNullParameter(response, "response");
        HashMap map = new HashMap();
        map.put("email", email);
        map.put("sessionToken", sessionToken);
        Call<BaseApiResponseModel> callDeleteAccount = RetrofitBuilder.INSTANCE.getApiService().deleteAccount(map);
        if (callDeleteAccount != null) {
            callDeleteAccount.enqueue(response);
        }
    }

    public final Object getPricingList(FDLanguageWord.LanguageType languageType, Continuation<? super Response<PricingResponse>> continuation) {
        ApiService apiService = this.apiService;
        String lowerCase = languageType.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return apiService.getPricingList(lowerCase, continuation);
    }

    public final Object getPricingListV2(FDLanguageWord.LanguageType languageType, Continuation<? super Response<fast.dic.dict.domain.entity.pricing.PricingResponse>> continuation) {
        ApiService apiService = this.apiService;
        String lowerCase = languageType.name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return apiService.getPricingListV2(lowerCase, continuation);
    }

    public final void translateSentence(String sentence, String email, String sessionToken, Callback<TranslateModel> response) {
        Intrinsics.checkNotNullParameter(sentence, "sentence");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        HashMap map = new HashMap();
        map.put("email", email);
        map.put("sessionToken", sessionToken);
        map.put("multiline", "True");
        Call<TranslateModel> callTranslate = RetrofitBuilder.INSTANCE.getApiService().translate(map, RequestBody.INSTANCE.create(sentence, MediaType.INSTANCE.parse(AssetHelper.DEFAULT_MIME_TYPE)));
        if (response != null) {
            Intrinsics.checkNotNull(callTranslate);
            callTranslate.enqueue(response);
        }
    }

    public final void verificationEmailRequest(String email, Callback<BaseApiResponseModel> response) {
        Intrinsics.checkNotNullParameter(email, "email");
        HashMap map = new HashMap();
        map.put("X-Parse-Application-Id", ConfigConstKt.PARSE_APP_ID);
        map.put("Content-type", C4232z5.M);
        Call<BaseApiResponseModel> callVerificationEmailRequest = RetrofitBuilder.INSTANCE.getParseApiService().verificationEmailRequest(map, MapsKt.mapOf(TuplesKt.to("email", email)));
        if (response != null) {
            Intrinsics.checkNotNull(callVerificationEmailRequest);
            callVerificationEmailRequest.enqueue(response);
        }
    }

    public final void validateBazaar(String email, String sessionToken, String orderId, Callback<ValidateModel> response) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        HashMap map = new HashMap();
        map.put("email", email);
        map.put("sessionToken", sessionToken);
        Call<ValidateModel> callCafebazaar = RetrofitBuilder.INSTANCE.getApiService().cafebazaar(map, orderId != null ? RequestBody.INSTANCE.create(orderId, MediaType.INSTANCE.parse(AssetHelper.DEFAULT_MIME_TYPE)) : null);
        if (response != null) {
            Intrinsics.checkNotNull(callCafebazaar);
            callCafebazaar.enqueue(response);
        }
    }

    public final void validateGoogle(String email, String sessionToken, String orderId, Callback<ValidateModel> response) {
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        HashMap map = new HashMap();
        map.put("email", email);
        map.put("sessionToken", sessionToken);
        Call<ValidateModel> callGoogleplay = RetrofitBuilder.INSTANCE.getApiService().googleplay(map, orderId != null ? RequestBody.INSTANCE.create(orderId, MediaType.INSTANCE.parse(AssetHelper.DEFAULT_MIME_TYPE)) : null);
        if (response != null) {
            Intrinsics.checkNotNull(callGoogleplay);
            callGoogleplay.enqueue(response);
        }
    }

    public final void getWodHistory(String year, Callback<Map<String, List<WodHistoryMonthDto>>> response) {
        Intrinsics.checkNotNullParameter(year, "year");
        Intrinsics.checkNotNullParameter(response, "response");
        Call<Map<String, List<WodHistoryMonthDto>>> callWodHistory = RetrofitBuilder.INSTANCE.getApiService().wodHistory(year);
        if (callWodHistory != null) {
            callWodHistory.enqueue(response);
        }
    }
}
