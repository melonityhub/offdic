package fast.dic.dict.models.parse;

import java.util.Date;
import kotlin.Metadata;

/* JADX INFO: compiled from: TransactionModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016¨\u0006\u001a"}, d2 = {"Lfast/dic/dict/models/parse/TransactionModel;", "", "<init>", "()V", "amount", "", "getAmount", "()Ljava/lang/Integer;", "setAmount", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "purchasedAt", "Ljava/util/Date;", "getPurchasedAt", "()Ljava/util/Date;", "setPurchasedAt", "(Ljava/util/Date;)V", "referenceId", "", "getReferenceId", "()Ljava/lang/String;", "setReferenceId", "(Ljava/lang/String;)V", "description", "getDescription", "setDescription", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class TransactionModel {
    private Integer amount;
    private String description;
    private Date purchasedAt;
    private String referenceId;

    public final Integer getAmount() {
        return this.amount;
    }

    public final void setAmount(Integer num) {
        this.amount = num;
    }

    public final Date getPurchasedAt() {
        return this.purchasedAt;
    }

    public final void setPurchasedAt(Date date) {
        this.purchasedAt = date;
    }

    public final String getReferenceId() {
        return this.referenceId;
    }

    public final void setReferenceId(String str) {
        this.referenceId = str;
    }

    public final String getDescription() {
        return this.description;
    }

    public final void setDescription(String str) {
        this.description = str;
    }
}
