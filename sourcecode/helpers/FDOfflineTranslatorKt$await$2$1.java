package fast.dic.dict.helpers;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDOfflineTranslator.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
final class FDOfflineTranslatorKt$await$2$1<TResult> implements OnCompleteListener {
    final /* synthetic */ Continuation<T> $continuation;

    /* JADX WARN: Multi-variable type inference failed */
    FDOfflineTranslatorKt$await$2$1() {
        safeContinuation2 = continuation;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<T> task) {
        Intrinsics.checkNotNullParameter(task, "task");
        boolean zIsSuccessful = task.isSuccessful();
        Continuation<T> continuation = safeContinuation2;
        if (zIsSuccessful) {
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m5163constructorimpl(task.getResult()));
            return;
        }
        RuntimeException exception = task.getException();
        if (exception == null) {
            exception = new RuntimeException("Unknown task exception");
        }
        Result.Companion companion2 = Result.INSTANCE;
        continuation.resumeWith(Result.m5163constructorimpl(ResultKt.createFailure(exception)));
    }
}
