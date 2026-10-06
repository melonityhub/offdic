package fast.dic.dict.presentation.word_category_screen;

import fast.dic.dict.models.database.CategorizedWordDto;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WordCategoryViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState;", "", "<init>", "()V", "Loading", "Data", "Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Data;", "Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Loading;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class WordCategoryUIState {
    public /* synthetic */ WordCategoryUIState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: WordCategoryViewModel.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0083\u0004J\n\u0010\b\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\n\u001a\u00020\u000bHÖ\u0081\u0004¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Loading;", "Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Loading extends WordCategoryUIState {
        public static final Loading INSTANCE = new Loading();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Loading)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1849286837;
        }

        public String toString() {
            return "Loading";
        }

        private Loading() {
            super(null);
        }
    }

    private WordCategoryUIState() {
    }

    /* JADX INFO: compiled from: WordCategoryViewModel.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState$Data;", "Lfast/dic/dict/presentation/word_category_screen/WordCategoryUIState;", "models", "", "Lfast/dic/dict/models/database/CategorizedWordDto;", "<init>", "(Ljava/util/List;)V", "getModels", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Data extends WordCategoryUIState {
        private final List<CategorizedWordDto> models;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Data copy$default(Data data, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = data.models;
            }
            return data.copy(list);
        }

        public final List<CategorizedWordDto> component1() {
            return this.models;
        }

        public final Data copy(List<CategorizedWordDto> models) {
            Intrinsics.checkNotNullParameter(models, "models");
            return new Data(models);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Data) && Intrinsics.areEqual(this.models, ((Data) other).models);
        }

        public int hashCode() {
            return this.models.hashCode();
        }

        public String toString() {
            return "Data(models=" + this.models + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Data(List<CategorizedWordDto> models) {
            super(null);
            Intrinsics.checkNotNullParameter(models, "models");
            this.models = models;
        }

        public final List<CategorizedWordDto> getModels() {
            return this.models;
        }
    }
}
