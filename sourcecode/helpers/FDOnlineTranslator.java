package fast.dic.dict.helpers;

import fast.dic.dict.models.database.TranslateModel;
import fast.dic.dict.services.RetrofitBuilder;
import fast.dic.dict.services.WebService;
import fast.dic.dict.services.parse.FDParseUser;
import io.sentry.SentryBaseEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: FDOnlineTranslator.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J8\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2 \u0010\n\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u000eJ:\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2 \u0010\n\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u000eH\u0002¨\u0006\u0010"}, d2 = {"Lfast/dic/dict/helpers/FDOnlineTranslator;", "", "<init>", "()V", "translate", "", "sentence", "", SentryBaseEvent.JsonKeys.USER, "Lfast/dic/dict/services/parse/FDParseUser;", "callback", "Lkotlin/Function2;", "Lfast/dic/dict/models/database/TranslateModel;", "", "Lfast/dic/dict/helpers/FDOnlineTranslatorCallback;", "fastdicApi", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDOnlineTranslator {
    public static final FDOnlineTranslator INSTANCE = new FDOnlineTranslator();

    private FDOnlineTranslator() {
    }

    public final void translate(String sentence, FDParseUser user, Function2<? super TranslateModel, ? super Throwable, Unit> callback) {
        Intrinsics.checkNotNullParameter(sentence, "sentence");
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(callback, "callback");
        fastdicApi(sentence, user, callback);
    }

    private final void fastdicApi(final String sentence, FDParseUser user, final Function2<? super TranslateModel, ? super Throwable, Unit> callback) {
        WebService webService = new WebService(RetrofitBuilder.INSTANCE.getApiService());
        String email = user.getEmail();
        Intrinsics.checkNotNullExpressionValue(email, "getEmail(...)");
        String sessionToken = user.getSessionToken();
        Intrinsics.checkNotNullExpressionValue(sessionToken, "getSessionToken(...)");
        webService.translateSentence(sentence, email, sessionToken, new Callback<TranslateModel>() { // from class: fast.dic.dict.helpers.FDOnlineTranslator.fastdicApi.1
            @Override // retrofit2.Callback
            public void onResponse(Call<TranslateModel> call, Response<TranslateModel> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                TranslateModel translateModelBody = response.body();
                if (translateModelBody != null) {
                    translateModelBody.setSentence(sentence);
                }
                callback.invoke(translateModelBody, null);
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<TranslateModel> call, Throwable error) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(error, "error");
                callback.invoke(null, error);
            }
        });
    }
}
