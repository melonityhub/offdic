package fast.dic.dict.models;

import kotlin.Metadata;

/* JADX INFO: compiled from: CloudWordModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\n¨\u0006\r"}, d2 = {"Lfast/dic/dict/models/PositionModel;", "", "x", "", "y", "<init>", "(II)V", "getX", "()I", "setX", "(I)V", "getY", "setY", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PositionModel {
    private int x;
    private int y;

    public PositionModel(int i, int i2) {
        this.x = i;
        this.y = i2;
    }

    public final int getX() {
        return this.x;
    }

    public final int getY() {
        return this.y;
    }

    public final void setX(int i) {
        this.x = i;
    }

    public final void setY(int i) {
        this.y = i;
    }
}
