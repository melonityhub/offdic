package fast.dic.dict.models.api;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;

/* JADX INFO: compiled from: BaseApiResponseModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R-\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u0092\u0002\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0004¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR/\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u0092\u0002\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/models/api/BaseApiResponseModel;", "", "<init>", "()V", "successful", "", "getSuccessful", "()Z", "setSuccessful", "(Z)V", "Lcom/google/gson/annotations/SerializedName;", "value", "result", "", "getResult", "()Ljava/lang/String;", "setResult", "(Ljava/lang/String;)V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public class BaseApiResponseModel {

    @SerializedName("result")
    private String result;

    @SerializedName("successful")
    private boolean successful;

    public final boolean getSuccessful() {
        return this.successful;
    }

    public final void setSuccessful(boolean z) {
        this.successful = z;
    }

    public final String getResult() {
        return this.result;
    }

    public final void setResult(String str) {
        this.result = str;
    }
}
