package fast.dic.dict.fragments;

import android.media.MediaPlayer;
import fast.dic.dict.utils.Logger;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class HelpFragment$getWebViewClient$client$1$$ExternalSyntheticLambda0 implements MediaPlayer.OnCompletionListener {
    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        Logger.INSTANCE.getLogger1().debug("Play phonetic pronunciation is completed.", new Object[0]);
    }
}
