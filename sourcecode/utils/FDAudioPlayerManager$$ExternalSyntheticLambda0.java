package fast.dic.dict.utils;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDAudioPlayerManager$$ExternalSyntheticLambda0 implements MediaPlayer.OnCompletionListener {
    public final /* synthetic */ MediaPlayer.OnCompletionListener f$0;
    public final /* synthetic */ FDAudioPlayerManager f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ FDAudioPlayerManager$$ExternalSyntheticLambda0() {
        completionListener = onCompletionListener;
        this = fDAudioPlayerManager;
        url = str;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        FDAudioPlayerManager.audioPlayerAsync$lambda$0(completionListener, this, url, mediaPlayer);
    }
}
