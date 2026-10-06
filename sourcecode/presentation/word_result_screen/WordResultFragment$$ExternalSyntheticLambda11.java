package fast.dic.dict.presentation.word_result_screen;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class WordResultFragment$$ExternalSyntheticLambda11 implements MediaPlayer.OnCompletionListener {
    public final /* synthetic */ String f$0;
    public final /* synthetic */ WordResultFragment f$1;

    public /* synthetic */ WordResultFragment$$ExternalSyntheticLambda11() {
        url = str;
        this = wordResultFragment;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        WordResultFragment.audioSentenceClickedOnline$lambda$0(url, this, mediaPlayer);
    }
}
