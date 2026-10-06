package fast.dic.dict.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDCategory.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003¨\u0006\u0004"}, d2 = {"toCategory", "Lfast/dic/dict/utils/Category;", "", "", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class FDCategoryKt {
    public static final Category toCategory(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return Category.INSTANCE.convert(str);
    }

    public static final Category toCategory(int i) {
        Category categoryInvoke = Category.INSTANCE.invoke(i);
        Intrinsics.checkNotNull(categoryInvoke);
        return categoryInvoke;
    }
}
