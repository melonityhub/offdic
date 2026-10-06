package fast.dic.dict.presentation.word_result_screen;

import android.media.MediaPlayer;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class WordResultFragment$$ExternalSyntheticLambda13 implements MediaPlayer.OnCompletionListener {
    public final /* synthetic */ String f$0;
    public final /* synthetic */ WordResultFragment f$1;

    public /* synthetic */ WordResultFragment$$ExternalSyntheticLambda13() {
        str = str;
        this = wordResultFragment;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        WordResultFragment.handleWordPronunciation$lambda$0(str, this, mediaPlayer);
    }
}
