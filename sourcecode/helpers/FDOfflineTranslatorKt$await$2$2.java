package fast.dic.dict.helpers;

import com.google.android.gms.tasks.OnFailureListener;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDOfflineTranslator.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
final class FDOfflineTranslatorKt$await$2$2 implements OnFailureListener {
    final /* synthetic */ Continuation<T> $continuation;

    /* JADX WARN: Multi-variable type inference failed */
    FDOfflineTranslatorKt$await$2$2() {
        safeContinuation2 = continuation;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Continuation<T> continuation = safeContinuation2;
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m5163constructorimpl(ResultKt.createFailure(it)));
    }
}
