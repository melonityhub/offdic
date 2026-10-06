package fast.dic.dict.adapters;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MoreAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lfast/dic/dict/adapters/MoreRowModel;", "", "title", "", "type", "Lfast/dic/dict/adapters/MoreRowEnum;", "<init>", "(Ljava/lang/String;Lfast/dic/dict/adapters/MoreRowEnum;)V", "getTitle", "()Ljava/lang/String;", "getType", "()Lfast/dic/dict/adapters/MoreRowEnum;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public class MoreRowModel {
    private final String title;
    private final MoreRowEnum type;

    public MoreRowModel(String title, MoreRowEnum type) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(type, "type");
        this.title = title;
        this.type = type;
    }

    public /* synthetic */ MoreRowModel(String str, MoreRowEnum moreRowEnum, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? MoreRowEnum.INNER_ROW : moreRowEnum);
    }

    public final String getTitle() {
        return this.title;
    }

    public final MoreRowEnum getType() {
        return this.type;
    }
}
