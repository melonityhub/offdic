package fast.dic.dict.activities;

import fast.dic.dict.presentation.word_result_screen.WordResultFragmentArgs;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class MainActivity$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ WordResultFragmentArgs f$1;

    public /* synthetic */ MainActivity$$ExternalSyntheticLambda2() {
        wordResultFragmentArgs = wordResultFragmentArgs;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MainActivity.onMicClicked$lambda$0$0(navController, wordResultFragmentArgs);
    }
}
