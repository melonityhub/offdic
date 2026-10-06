package fast.dic.dict.models;

import com.ironsource.U3;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CloudWordModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/models/CloudWordModel;", "", "word", "", "fontSize", "", U3.i.L, "Lfast/dic/dict/models/PositionModel;", "<init>", "(Ljava/lang/String;FLfast/dic/dict/models/PositionModel;)V", "getWord", "()Ljava/lang/String;", "setWord", "(Ljava/lang/String;)V", "getFontSize", "()F", "setFontSize", "(F)V", "getPosition", "()Lfast/dic/dict/models/PositionModel;", "setPosition", "(Lfast/dic/dict/models/PositionModel;)V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class CloudWordModel {
    private float fontSize;
    private PositionModel position;
    private String word;

    public CloudWordModel(String word, float f, PositionModel position) {
        Intrinsics.checkNotNullParameter(word, "word");
        Intrinsics.checkNotNullParameter(position, "position");
        this.word = word;
        this.fontSize = f;
        this.position = position;
    }

    public final float getFontSize() {
        return this.fontSize;
    }

    public final PositionModel getPosition() {
        return this.position;
    }

    public final String getWord() {
        return this.word;
    }

    public final void setFontSize(float f) {
        this.fontSize = f;
    }

    public final void setPosition(PositionModel positionModel) {
        Intrinsics.checkNotNullParameter(positionModel, "<set-?>");
        this.position = positionModel;
    }

    public final void setWord(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.word = str;
    }
}
