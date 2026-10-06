package fast.dic.dict.interfaces;

import kotlin.Metadata;

/* JADX INFO: compiled from: AccelerometerListener.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H&¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lfast/dic/dict/interfaces/AccelerometerListener;", "", "onAccelerationChanged", "", "x", "", "y", "z", "onShake", "force", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface AccelerometerListener {
    void onAccelerationChanged(float x, float y, float z);

    void onShake(float force);
}
