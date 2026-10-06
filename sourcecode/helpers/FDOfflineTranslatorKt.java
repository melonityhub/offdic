package fast.dic.dict.helpers;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDOfflineTranslator.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001e\u0010\u0006\u001a\u0002H\u0007\"\u0004\b\u0000\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\bH\u0086@¢\u0006\u0002\u0010\t*<\u0010\u0000\"\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u0001`\u0003\u0012\u0004\u0012\u00020\u00040\u00012\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\f\u0012\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0003\u0012\u0004\u0012\u00020\u00040\u0001¨\u0006\n"}, d2 = {"OfflineTranslatorCallback", "Lkotlin/Function2;", "", "Lkotlin/Exception;", "", "Ljava/lang/Exception;", "await", "T", "Lcom/google/android/gms/tasks/Task;", "(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class FDOfflineTranslatorKt {
    public static final <T> Object await(Task<T> task, Continuation<? super T> continuation) {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
        final SafeContinuation safeContinuation2 = safeContinuation;
        task.addOnCompleteListener(new OnCompleteListener() { // from class: fast.dic.dict.helpers.FDOfflineTranslatorKt$await$2$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task<T> task2) {
                Intrinsics.checkNotNullParameter(task2, "task");
                boolean zIsSuccessful = task2.isSuccessful();
                Continuation<T> continuation2 = safeContinuation2;
                if (zIsSuccessful) {
                    Result.Companion companion = Result.INSTANCE;
                    continuation2.resumeWith(Result.m5163constructorimpl(task2.getResult()));
                    return;
                }
                RuntimeException exception = task2.getException();
                if (exception == null) {
                    exception = new RuntimeException("Unknown task exception");
                }
                Result.Companion companion2 = Result.INSTANCE;
                continuation2.resumeWith(Result.m5163constructorimpl(ResultKt.createFailure(exception)));
            }
        });
        task.addOnFailureListener(new OnFailureListener() { // from class: fast.dic.dict.helpers.FDOfflineTranslatorKt$await$2$2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Continuation<T> continuation2 = safeContinuation2;
                Result.Companion companion = Result.INSTANCE;
                continuation2.resumeWith(Result.m5163constructorimpl(ResultKt.createFailure(it)));
            }
        });
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }
}
