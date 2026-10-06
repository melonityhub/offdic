package fast.dic.dict.models.database;

import com.ironsource.U3;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: FolderModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u001d\u0018\u00002\u00020\u0001Bc\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\u000eR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u0018\u0010\u0010\"\u0004\b\u0019\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R\u001e\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b\b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\n\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\u000b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010 \"\u0004\b#\u0010\"R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0015\"\u0004\b%\u0010\u0017¨\u0006&"}, d2 = {"Lfast/dic/dict/models/database/FolderModel;", "", "count", "", "name", "", U3.i.L, "documentId", "isCurrent", "", "isHistory", "isWordCategory", "wordDocumentId", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;ZZLjava/lang/String;)V", "getCount", "()Ljava/lang/Integer;", "setCount", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getPosition", "setPosition", "getDocumentId", "setDocumentId", "()Ljava/lang/Boolean;", "setCurrent", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "()Z", "setHistory", "(Z)V", "setWordCategory", "getWordDocumentId", "setWordDocumentId", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FolderModel {
    private Integer count;
    private String documentId;
    private Boolean isCurrent;
    private boolean isHistory;
    private boolean isWordCategory;
    private String name;
    private Integer position;
    private String wordDocumentId;

    public FolderModel() {
        this(null, null, null, null, null, false, false, null, 255, null);
    }

    public FolderModel(Integer num, String str, Integer num2, String str2, Boolean bool, boolean z, boolean z2, String str3) {
        this.count = num;
        this.name = str;
        this.position = num2;
        this.documentId = str2;
        this.isCurrent = bool;
        this.isHistory = z;
        this.isWordCategory = z2;
        this.wordDocumentId = str3;
    }

    public /* synthetic */ FolderModel(Integer num, String str, Integer num2, String str2, Boolean bool, boolean z, boolean z2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : num2, (i & 8) != 0 ? null : str2, (i & 16) != 0 ? null : bool, (i & 32) != 0 ? false : z, (i & 64) != 0 ? false : z2, (i & 128) != 0 ? null : str3);
    }

    public final Integer getCount() {
        return this.count;
    }

    public final void setCount(Integer num) {
        this.count = num;
    }

    public final String getName() {
        return this.name;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final Integer getPosition() {
        return this.position;
    }

    public final void setPosition(Integer num) {
        this.position = num;
    }

    public final String getDocumentId() {
        return this.documentId;
    }

    public final void setDocumentId(String str) {
        this.documentId = str;
    }

    /* JADX INFO: renamed from: isCurrent, reason: from getter */
    public final Boolean getIsCurrent() {
        return this.isCurrent;
    }

    public final void setCurrent(Boolean bool) {
        this.isCurrent = bool;
    }

    /* JADX INFO: renamed from: isHistory, reason: from getter */
    public final boolean getIsHistory() {
        return this.isHistory;
    }

    public final void setHistory(boolean z) {
        this.isHistory = z;
    }

    /* JADX INFO: renamed from: isWordCategory, reason: from getter */
    public final boolean getIsWordCategory() {
        return this.isWordCategory;
    }

    public final void setWordCategory(boolean z) {
        this.isWordCategory = z;
    }

    public final String getWordDocumentId() {
        return this.wordDocumentId;
    }

    public final void setWordDocumentId(String str) {
        this.wordDocumentId = str;
    }
}
