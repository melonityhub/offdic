package fast.dic.dict.bases;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: AsyncTaskCoroutine.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0013\u001a\u00020\u000eH\u0016J\u0017\u0010\u0014\u001a\u00020\u000e2\b\u0010\u0006\u001a\u0004\u0018\u00018\u0001H\u0016¢\u0006\u0002\u0010\nJ!\u0010\u0015\u001a\u00028\u00012\u0012\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0017\"\u00028\u0000H&¢\u0006\u0002\u0010\u0018J%\u0010\u0019\u001a\u00020\u000e\"\u0004\b\u0002\u0010\u001a2\u0012\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0017\"\u00028\u0000¢\u0006\u0002\u0010\u001cJ&\u0010\u001d\u001a\u00020\u000e2\u0012\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u0017\"\u00028\u0000H\u0083@b\u0002\b\u001f¢\u0006\u0002\u0010\u001eJ%\u0010 \u001a\u00020\u000e2\u0016\u0010!\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\"0\u0017\"\u0004\u0018\u00010\"H\u0016¢\u0006\u0002\u0010#J#\u0010$\u001a\u00020\u000e2\u0016\u0010!\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\"0\u0017\"\u0004\u0018\u00010\"¢\u0006\u0002\u0010#R\u001e\u0010\u0006\u001a\u0004\u0018\u00018\u0001X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR*\u0010\f\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006%"}, d2 = {"Lfast/dic/dict/bases/AsyncTaskCoroutine;", "I", "O", "", "<init>", "()V", "result", "getResult", "()Ljava/lang/Object;", "setResult", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "onCompleted", "Lkotlin/Function1;", "", "getOnCompleted", "()Lkotlin/jvm/functions/Function1;", "setOnCompleted", "(Lkotlin/jvm/functions/Function1;)V", "onPreExecute", "onPostExecute", "doInBackground", "params", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "execute", "T", "input", "([Ljava/lang/Object;)V", "callAsync", "([Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/DelicateCoroutinesApi;", "onProgressUpdate", "progressValues", "", "([Ljava/lang/Integer;)V", "publishProgress", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class AsyncTaskCoroutine<I, O> {
    private Function1<? super O, Unit> onCompleted;
    private O result;

    /* JADX INFO: renamed from: fast.dic.dict.bases.AsyncTaskCoroutine$callAsync$1, reason: invalid class name */
    /* JADX INFO: compiled from: AsyncTaskCoroutine.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.bases.AsyncTaskCoroutine", f = "AsyncTaskCoroutine.kt", i = {0}, l = {28}, m = "callAsync", n = {"input"}, nl = {35}, s = {"L$0"}, v = 2)
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ AsyncTaskCoroutine<I, O> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AsyncTaskCoroutine<I, O> asyncTaskCoroutine, Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
            this.this$0 = asyncTaskCoroutine;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.callAsync(null, this);
        }
    }

    public abstract O doInBackground(I... params);

    public void onPreExecute() {
    }

    public void onProgressUpdate(Integer... progressValues) {
        Intrinsics.checkNotNullParameter(progressValues, "progressValues");
    }

    public final O getResult() {
        return this.result;
    }

    public final void setResult(O o) {
        this.result = o;
    }

    public final Function1<O, Unit> getOnCompleted() {
        return this.onCompleted;
    }

    public final void setOnCompleted(Function1<? super O, Unit> function1) {
        this.onCompleted = function1;
    }

    public void onPostExecute(O result) {
        Function1<? super O, Unit> function1 = this.onCompleted;
        if (function1 != null) {
            function1.invoke(result);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.bases.AsyncTaskCoroutine$execute$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AsyncTaskCoroutine.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.bases.AsyncTaskCoroutine$execute$1", f = "AsyncTaskCoroutine.kt", i = {}, l = {22}, m = "invokeSuspend", n = {}, nl = {23}, s = {}, v = 2)
    static final class C45051 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ I[] $input;
        int label;
        final /* synthetic */ AsyncTaskCoroutine<I, O> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45051(AsyncTaskCoroutine<I, O> asyncTaskCoroutine, I[] iArr, Continuation<? super C45051> continuation) {
            super(2, continuation);
            this.this$0 = asyncTaskCoroutine;
            this.$input = iArr;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C45051(this.this$0, this.$input, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45051) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.this$0.onPreExecute();
                AsyncTaskCoroutine<I, O> asyncTaskCoroutine = this.this$0;
                I[] iArr = this.$input;
                this.label = 1;
                if (asyncTaskCoroutine.callAsync(Arrays.copyOf(iArr, iArr.length), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public final <T> void execute(I... input) {
        Intrinsics.checkNotNullParameter(input, "input");
        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new C45051(this, input, null), 2, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.bases.AsyncTaskCoroutine$callAsync$2, reason: invalid class name */
    /* JADX INFO: compiled from: AsyncTaskCoroutine.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/Job;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.bases.AsyncTaskCoroutine$callAsync$2", f = "AsyncTaskCoroutine.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Job>, Object> {
        final /* synthetic */ I[] $input;
        int label;
        final /* synthetic */ AsyncTaskCoroutine<I, O> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(AsyncTaskCoroutine<I, O> asyncTaskCoroutine, I[] iArr, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = asyncTaskCoroutine;
            this.$input = iArr;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, this.$input, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Job> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AsyncTaskCoroutine<I, O> asyncTaskCoroutine = this.this$0;
            I[] iArr = this.$input;
            asyncTaskCoroutine.setResult(asyncTaskCoroutine.doInBackground(Arrays.copyOf(iArr, iArr.length)));
            return BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new AnonymousClass1(this.this$0, null), 2, null);
        }

        /* JADX INFO: renamed from: fast.dic.dict.bases.AsyncTaskCoroutine$callAsync$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: AsyncTaskCoroutine.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.bases.AsyncTaskCoroutine$callAsync$2$1", f = "AsyncTaskCoroutine.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ AsyncTaskCoroutine<I, O> this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(AsyncTaskCoroutine<I, O> asyncTaskCoroutine, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = asyncTaskCoroutine;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                AsyncTaskCoroutine<I, O> asyncTaskCoroutine = this.this$0;
                asyncTaskCoroutine.onPostExecute(asyncTaskCoroutine.getResult());
                return Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object callAsync(I[] iArr, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, continuation);
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineDispatcher io2 = Dispatchers.getIO();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this, iArr, null);
            anonymousClass1.L$0 = SpillingKt.nullOutSpilledVariable(iArr);
            anonymousClass1.label = 1;
            if (BuildersKt.withContext(io2, anonymousClass2, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    public final void publishProgress(Integer... progressValues) {
        Intrinsics.checkNotNullParameter(progressValues, "progressValues");
        onProgressUpdate((Integer[]) Arrays.copyOf(progressValues, progressValues.length));
    }
}
