package fast.dic.dict.viewmodels.fragments;

import android.graphics.Bitmap;
import com.google.mlkit.vision.text.Text;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TextRecognitionTranslatorViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;", "", "<init>", "()V", "Clear", "Data", "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Clear;", "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class TextRecognitionTranslatorViewModelState {
    public /* synthetic */ TextRecognitionTranslatorViewModelState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: TextRecognitionTranslatorViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Clear;", "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;", "<init>", "()V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Clear extends TextRecognitionTranslatorViewModelState {
        public static final Clear INSTANCE = new Clear();

        private Clear() {
            super(null);
        }
    }

    private TextRecognitionTranslatorViewModelState() {
    }

    /* JADX INFO: compiled from: TextRecognitionTranslatorViewModel.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\bHÆ\u0003J3\u0010\u0013\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0083\u0004J\n\u0010\u0018\u001a\u00020\u0019HÖ\u0081\u0004J\n\u0010\u001a\u001a\u00020\u0004HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;", "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;", "translates", "", "", "blocks", "Lcom/google/mlkit/vision/text/Text$TextBlock;", "bitmap", "Landroid/graphics/Bitmap;", "<init>", "(Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;)V", "getTranslates", "()Ljava/util/List;", "getBlocks", "getBitmap", "()Landroid/graphics/Bitmap;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Data extends TextRecognitionTranslatorViewModelState {
        private final Bitmap bitmap;
        private final List<Text.TextBlock> blocks;
        private final List<String> translates;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Data copy$default(Data data, List list, List list2, Bitmap bitmap, int i, Object obj) {
            if ((i & 1) != 0) {
                list = data.translates;
            }
            if ((i & 2) != 0) {
                list2 = data.blocks;
            }
            if ((i & 4) != 0) {
                bitmap = data.bitmap;
            }
            return data.copy(list, list2, bitmap);
        }

        public final List<String> component1() {
            return this.translates;
        }

        public final List<Text.TextBlock> component2() {
            return this.blocks;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Bitmap getBitmap() {
            return this.bitmap;
        }

        public final Data copy(List<String> translates, List<? extends Text.TextBlock> blocks, Bitmap bitmap) {
            Intrinsics.checkNotNullParameter(translates, "translates");
            Intrinsics.checkNotNullParameter(blocks, "blocks");
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            return new Data(translates, blocks, bitmap);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Data)) {
                return false;
            }
            Data data = (Data) other;
            return Intrinsics.areEqual(this.translates, data.translates) && Intrinsics.areEqual(this.blocks, data.blocks) && Intrinsics.areEqual(this.bitmap, data.bitmap);
        }

        public int hashCode() {
            return (((this.translates.hashCode() * 31) + this.blocks.hashCode()) * 31) + this.bitmap.hashCode();
        }

        public String toString() {
            return "Data(translates=" + this.translates + ", blocks=" + this.blocks + ", bitmap=" + this.bitmap + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Data(List<String> translates, List<? extends Text.TextBlock> blocks, Bitmap bitmap) {
            super(null);
            Intrinsics.checkNotNullParameter(translates, "translates");
            Intrinsics.checkNotNullParameter(blocks, "blocks");
            Intrinsics.checkNotNullParameter(bitmap, "bitmap");
            this.translates = translates;
            this.blocks = blocks;
            this.bitmap = bitmap;
        }

        public final List<String> getTranslates() {
            return this.translates;
        }

        public final List<Text.TextBlock> getBlocks() {
            return this.blocks;
        }

        public final Bitmap getBitmap() {
            return this.bitmap;
        }
    }
}
