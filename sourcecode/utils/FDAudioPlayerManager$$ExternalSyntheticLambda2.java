package fast.dic.dict.utils;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDAudioPlayerManager$$ExternalSyntheticLambda2 implements MediaPlayer.OnErrorListener {
    public /* synthetic */ FDAudioPlayerManager$$ExternalSyntheticLambda2() {
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        return FDAudioPlayerManager.audioPlayerAsync$lambda$2(this.f$0, mediaPlayer, i, i2);
    }
}
