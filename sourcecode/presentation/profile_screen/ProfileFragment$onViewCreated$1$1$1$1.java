package fast.dic.dict.presentation.profile_screen;

import androidx.fragment.app.FragmentActivity;
import fast.dic.dict.R;
import fast.dic.dict.activities.MainActivity;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ProfileFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
@DebugMetadata(c = "fast.dic.dict.presentation.profile_screen.ProfileFragment$onViewCreated$1$1$1$1", f = "ProfileFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
final class ProfileFragment$onViewCreated$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ ProfileFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProfileFragment$onViewCreated$1$1$1$1(ProfileFragment profileFragment, Continuation<? super ProfileFragment$onViewCreated$1$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = profileFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ProfileFragment$onViewCreated$1$1$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ProfileFragment$onViewCreated$1$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        FragmentActivity activity = this.this$0.getActivity();
        MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity != null) {
            mainActivity.checkAndUpdateTabbarMenuAfterLogin();
        }
        FragmentActivity activity2 = this.this$0.getActivity();
        MainActivity mainActivity2 = activity2 instanceof MainActivity ? (MainActivity) activity2 : null;
        if (mainActivity2 != null) {
            mainActivity2.selectTab(R.id.loginOnboardingFragment);
        }
        return Unit.INSTANCE;
    }
}
