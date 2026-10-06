package fast.dic.dict.models.api;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;

/* JADX INFO: compiled from: ValidateModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R-\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u0092\u0002\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u0004¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lfast/dic/dict/models/api/ValidateModel;", "Lfast/dic/dict/models/api/BaseApiResponseModel;", "<init>", "()V", "addToTransaction", "", "getAddToTransaction", "()Z", "setAddToTransaction", "(Z)V", "Lcom/google/gson/annotations/SerializedName;", "value", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class ValidateModel extends BaseApiResponseModel {

    @SerializedName("addToTransaction")
    private boolean addToTransaction;

    public final boolean getAddToTransaction() {
        return this.addToTransaction;
    }

    public final void setAddToTransaction(boolean z) {
        this.addToTransaction = z;
    }
}
